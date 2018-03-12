using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerZone_MyProfile : System.Web.UI.Page
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
                    Imgprofile.ImageUrl = "~/" + dt.Rows[0][1] + "/" + dt.Rows[0][0];
                }
                // To add states
                AddState();
                // To display profile
                DisplayProfile();
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
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
                    Response.Redirect("MyProfile.aspx");
                }
            }
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
    void DisplayProfile()
    {
        cm.YourCommand = "SELECT *from Tbl_Registration where email_id='" + Session["uid"].ToString() + "'";
        DataTable d = cm.ExecuteSelectByDisconnected();
        TxtName.Text = d.Rows[0][0].ToString();
        bool b = bool.Parse(d.Rows[0][1].ToString());
        if (b == true)
            RdbMale.Checked = true;
        else
            RdbFemale.Checked = true;
        string cntype = d.Rows[0][2].ToString();
        DdlConType.SelectedValue = cntype;
        TxtAddress.Text = d.Rows[0][3].ToString();
        string state = d.Rows[0][4].ToString();
        DdlState.SelectedValue = state;
        string cid = d.Rows[0][5].ToString();
        cm.YourCommand = "SELECT City_Name from Tbl_city where City_Id='" + cid + "'";
        object ob = cm.GetSingleValue();
        ListItem li = new ListItem(ob.ToString(), cid);
        DdlCity.Items.Add(li);
        TxtPinCode.Text = d.Rows[0][6].ToString();
        TxtMobNo.Text = d.Rows[0][8].ToString();
        LblJoinDate.Text = d.Rows[0][11].ToString();
        // read only
        TxtAddress.ReadOnly = true;
        TxtMobNo.ReadOnly = true;
        TxtName.ReadOnly = true;
        TxtPinCode.ReadOnly = true;
        DdlCity.Enabled = false;
        DdlState.Enabled = false;
        DdlConType.Enabled = false;
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
        DdlCity.Enabled = true;
        DdlState.Enabled = true;
        DdlConType.Enabled = true;
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
        cm.YourCommand = "UPDATE Tbl_Registration set name='" + TxtName.Text + "',gender='" + gen + "',connection_type='" + DdlConType.SelectedValue + "',address='" + TxtAddress.Text + "',state='" + int.Parse(DdlState.SelectedValue) + "',city='" + int.Parse(DdlCity.SelectedValue) + "',pincode='" + int.Parse(TxtPinCode.Text) + "',mob_no='" + TxtMobNo.Text + "' where email_id='" + Session["uid"].ToString() + "'";
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






    /*--protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            ConnectionManager cm = new ConnectionManager();
            LblEmail.Text = Session["uid"].ToString();
            cm.YourCommand = "SELECT file_name,folder from Tbl_profilePic where Pic_Id=(SELECT max(pic_id) from Tbl_profilePic where user_id='" + Session["uid"].ToString() + "')";
            DataTable dt = cm.ExecuteSelectByDisconnected();
            if (dt.Rows.Count > 0)
            {
                ImgUserPic.ImageUrl = "~/" + dt.Rows[0][1] + "/" + dt.Rows[0][0];
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

    }
   
    protected void Button1_Click(object sender, EventArgs e)
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
                    Page_Load(sender, e);
                }
            }
        }
    }
}---*/