using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_FullDetail : System.Web.UI.Page
{
    ConnectionManager cm = new ConnectionManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            if (Request.QueryString["email"]!= null)
            {
                // To display email and profile picture
                LblEmail.Text = Request.QueryString["email"].ToString();
                cm.YourCommand = "SELECT filename,foldername from Tbl_ProfilePic where PicId=(SELECT max(picid) from Tbl_ProfilePic where userID='" + Request.QueryString["email"].ToString() + "')";
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
     protected void DdlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        DdlCity.Items.Clear();
        cm.YourCommand = "SELECT *from Tbl_City where StateID='" + DdlState.SelectedValue + "'";
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
        cm.YourCommand = "SELECT *from Tbl_Registration where emailid='"+Request.QueryString["email"].ToString()+"'";
        DataTable d = cm.ExecuteSelectByDisconnected();
        TxtName.Text = d.Rows[0][0].ToString();
        bool b=bool.Parse(d.Rows[0][1].ToString());
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
        cm.YourCommand = "SELECT CityName from Tbl_City where CityId='" + cid + "'";
        object ob=cm.GetSingleValue();
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
    }