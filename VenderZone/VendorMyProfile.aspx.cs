using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class VenderZone_MyProfile : System.Web.UI.Page
{
    ConnectionManager cm = new ConnectionManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            if (Session["uid"] != null)
            {
                // To display email and profile picture
                LblEmail.Text = Session["uid"].ToString();
                cm.YourCommand = "SELECT file_name,folder from Tbl_profilePic where pic_id=(SELECT max(pic_id) from Tbl_profilePic where user_id='" + Session["uid"].ToString() + "')";
                DataTable dt = cm.ExecuteSelectByDisconnected();
                if (dt.Rows.Count > 0)
                {
                    Imgprofile.ImageUrl = "../" + dt.Rows[0][1] + "/" + dt.Rows[0][0];
                }
                
                // To display profile
                DisplayProfile();
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
   
    protected void BtnUpdatePic_Click(object sender, EventArgs e)
    {
        if (FUPicture.HasFile)
        {
            FileManager fm = new FileManager();
            ConnectionManager cm = new ConnectionManager();
            fm.MyFileUpload = FUPicture;
            string status = fm.ValidateMyFile();
            if (status == "SUCCESS")
            {
                bool UploadState = fm.UploadMyFile("~/UserPics");
                if (UploadState == true)
                {
                    cm.YourCommand = "INSERT into Tbl_profilePic(file_name,folder,user_id,filetype,filesize,isdel) values('" + fm.MyFileName + "','UserPics','" + Session["uid"].ToString() + "','" + fm.MyFileType + "','" + fm.FileSizeInMB + "','0')";
                    cm.ExecuteInsertOrUpdateOrDelete();
                    Response.Redirect("VendorMyProfile.aspx");
                }
            }
        }
    }
   
    void DisplayProfile()
    {
        cm.YourCommand = "SELECT *from Tbl_VenderRegistration where email_id='" + Session["uid"].ToString() + "'";
        DataTable d = cm.ExecuteSelectByDisconnected();
        TxtName.Text = d.Rows[0][0].ToString();
        bool b = bool.Parse(d.Rows[0][1].ToString());
        if (b == true)
            RdbMale.Checked = true;
        else
            RdbFemale.Checked = true;
        TxtAddress.Text = d.Rows[0][3].ToString();
        TxtPinCode.Text = d.Rows[0][4].ToString();
        TxtMobNo.Text = d.Rows[0][5].ToString();
        
        // read only
        TxtName.ReadOnly = true;
        TxtAddress.ReadOnly = true;
        TxtPinCode.ReadOnly = true;
        TxtMobNo.ReadOnly = true;
        RdbMale.Enabled = false;
        RdbFemale.Enabled = false;
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        // read only false
        TxtAddress.ReadOnly = false;
        TxtMobNo.ReadOnly = false;
        TxtName.ReadOnly = false;
        TxtPinCode.ReadOnly = false;
        RdbMale.Enabled = true;
        RdbFemale.Enabled = true;
        // Managing visibility of buttons
        BtnEdit.Visible = false;
        BtnSave.Visible = true;
    }
    void UpdateProfile()
    {
        bool gen;
        if (RdbMale.Checked == true)
            gen = true;
        else
            gen = false;
        cm.YourCommand = "UPDATE Tbl_VenderRegistration set name='" + TxtName.Text + "',gener='" + gen + "',address='" + TxtAddress.Text + "',pincode='" + int.Parse(TxtPinCode.Text) + "',mobile_No='" + TxtMobNo.Text + "' where email_id='" + Session["uid"].ToString() + "'";
        bool status = cm.ExecuteInsertOrUpdateOrDelete();
        if (status == true)
        {
            // Managing visibility of buttons
            BtnEdit.Visible = true;
            BtnSave.Visible = false;
            DisplayProfile();
            Response.Write("<script>alert('Profile Updated successfully');</script>");
        }
        else
        {
            Response.Write("<script>alert('Profile not updated');</script>");
        }


    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        UpdateProfile();
    }
}
