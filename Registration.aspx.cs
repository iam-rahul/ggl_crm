using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    ConnectionManager cm = new ConnectionManager();
    CaptchaGenerator cg = new CaptchaGenerator();
    static string[] CaptchaCodeWithImage;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            AddState();
            CaptchaCodeWithImage = cg.GetRandomCodeAndImage("CaptchaImg");
            ImgCaptcha.ImageUrl = "CaptchaImg/" + CaptchaCodeWithImage[1];

        }
    }
    public void AddState()
    {
        cm.YourCommand = "SELECT *from Tbl_State";
        DataTable dt = cm.ExecuteSelectByDisconnected();
        /* DdlState.DataSource = dt;
        DdlState.DataTextField ="StateName";
        DdlState.DataValueField = "StateID";
        DdlState.DataBind(); */
        ListItem l = new ListItem("--Select--", "");
        DdlState.Items.Add(l);
        foreach (DataRow dr in dt.Rows)
        {
            ListItem li = new ListItem(dr[1].ToString(), dr[0].ToString());
            DdlState.Items.Add(li);
        }
    }
    protected void DdlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        DdlCity.Items.Clear();
        cm.YourCommand = "SELECT *from Tbl_city where State_ID='" + DdlState.SelectedValue + "'";
        DataTable d = cm.ExecuteSelectByDisconnected();
        ListItem l = new ListItem("--Select--", "");
        DdlCity.Items.Add(l);
        foreach (DataRow dr in d.Rows)
        {
            ListItem li = new ListItem(dr[1].ToString(), dr[0].ToString());
            DdlCity.Items.Add(li);
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
                        cm.YourCommand = "INSERT into Tbl_Registration values('" + TxtName.Text + "','" + Gender + "','" + DdlConType.SelectedValue + "','" + TxtAddress.Text + "','" + int.Parse(DdlState.SelectedValue) + "','" + int.Parse(DdlCity.SelectedValue) + "','" + int.Parse(TxtPinCode.Text) + "','" + TxtEmail.Text + "','" + TxtMobNo.Text + "','" + EncryptedPass + "','" + fm.MyFileName + "','"+FUIDProof.FileName+"')";
                        bool b = cm.ExecuteInsertOrUpdateOrDelete();
                        if (b == true)
                        {
                            LoginManager lm = new LoginManager();
                            lm.UserID = TxtEmail.Text;
                            lm.UserPass = EncryptedPass;
                            lm.UserStatus = true;
                            lm.connectionType = "Consumer";
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
