using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class VendorRegistration : System.Web.UI.Page
{
    ConnectionManager cm = new ConnectionManager();
    CaptchaGenerator cg = new CaptchaGenerator();
    static string[] CaptchaCodeWithImage;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            CaptchaCodeWithImage = cg.GetRandomCodeAndImage("CaptchaImg");
            ImgCaptcha.ImageUrl = "CaptchaImg/" + CaptchaCodeWithImage[1];
        }
    }

    protected void ImgBtnRefresh_Click(object sender, ImageClickEventArgs e)
    {
        CaptchaCodeWithImage = cg.GetRandomCodeAndImage("CaptchaImg");
        ImgCaptcha.ImageUrl = "CaptchaImg/" + CaptchaCodeWithImage[1];

    }

    protected void ImgBtnRegister_Click(object sender, ImageClickEventArgs e)
    {
        if (TxtCaptcha.Text == CaptchaCodeWithImage[0])
        {
            FileManager fm = new FileManager();
            string ValidationState;
            bool UploadState;
            if (FUPhoto.HasFile == true)
            {
                fm.MaxFileSizeInMB = 3.0f;
                fm.MyFileUpload = FUPhoto;
                ValidationState = fm.ValidateMyFile();
                if (ValidationState == "SUCCESS")
                {
                    UploadState = fm.UploadMyFile("UserPics");
                    if (UploadState == true)
                    {
                        cm.YourCommand = "INSERT into Tbl_profilePic(file_name,folder,user_id,filetype,filesize,isdel) values('" + fm.MyFileName + "','UserPics','" + TxtEmail.Text + "','" + fm.MyFileType + "','" + fm.FileSizeInMB + "','0')";
                        cm.ExecuteInsertOrUpdateOrDelete();
                    }
                    else
                    {
                        Response.Write("<script>alert('Sorry! we are unable to upload picture.');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('" + ValidationState + "');</script>");
                }
            }
            if (FUIDProof.HasFile == true)
            {
                fm.FileSizeInMB = 5.0f;
                fm.MyFileUpload = FUIDProof;
                fm.AllowedExtention = new string[] { ".jpg", ".jpeg", ".pdf" };
                ValidationState = fm.ValidateMyFile();
                if (ValidationState == "SUCCESS")
                {
                    UploadState = fm.UploadMyFile("UserIDProof");
                    if (UploadState == true)
                    {
                        EncryptionManager em = new EncryptionManager();
                        string EncryptedPass = em.EncryptMyData(TxtPass.Text);
                        bool Gender;
                        if (RdbMale.Checked == true)
                        {
                            Gender = true;
                        }
                        else
                        {
                            Gender = false;
                        }
                        cm.YourCommand = "INSERT into Tbl_VenderRegistration values('" + TxtName.Text + "','" + Gender + "','" + TxtEmail.Text + "','" + TxtAddress.Text + "','" + int.Parse(TxtPinCode.Text) + "','" + TxtMobNo.Text + "','" + TxtExperiance.Text + "','" + TxtContractsUG.Text + "','" + fm.MyFileName + "','" + FUIDProof.FileName + "','" + EncryptedPass + "')";
                        bool b = cm.ExecuteInsertOrUpdateOrDelete();
                        if (b == true)
                        {
                            LoginManager lm = new LoginManager();
                            lm.UserID = TxtEmail.Text;
                            lm.UserPass = EncryptedPass;
                            lm.UserStatus = true;
                            lm.connectionType = "Vendor";
                            lm.LoginCount = 0;
                            b = lm.SetLoginDetails();
                            if (b == true)
                                Response.Write("<script>alert('You are registered successfully.');</script>");
                            else
                                Response.Write("<script>alert('You are registered successfully.But we are unable to set login details.');</script>");

                        }
                        else
                        {
                            Response.Write("<script>alert('Unable to register.');</script>");
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('" + ValidationState + "');</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Please upload 1 ID proof.');</script>");

            }

        }
        else
        {
            Response.Write("<script>alert('Invalid Captcha Code.');</script>");

        }

    }
    
}