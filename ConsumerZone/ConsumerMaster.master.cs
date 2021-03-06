﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ConsumerZone_ConsumerMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        if (IsPostBack == false)
        {
            if (Session["uid"] != null)
            {
                cm.YourCommand = "SELECT file_name,folder from Tbl_profilePic where pic_id=(SELECT max(pic_id) from Tbl_profilePic where user_id='" + Session["uid"].ToString() + "')";
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


        LblDate.Text = DateTime.Now.ToString("dd-MM-yyyy");
        if (Session["uid"] != null)
        {
            bool Gender=true;
            string userid = Session["uid"].ToString();
           // Getting name, gender from Tbl_Registration
            cm.YourCommand = "select name,gender from Tbl_Registration where email_id='"+userid+"'";
            DataTable dt = cm.ExecuteSelectByDisconnected();
            if (dt.Rows.Count > 0)
            {
                LblUname.Text = dt.Rows[0][0].ToString();
                Gender=bool.Parse( dt.Rows[0][1].ToString());
            }
           
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }

}
