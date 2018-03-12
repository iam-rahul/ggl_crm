using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VenderZone_ApplyForTender : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        cm.YourCommand = "INSERT into Tbl_ApplyTender(vendorName,UserID,Tenders,WorkExperiance,Amount,ApplyDate) values('" + TxtName.Text + "','" + Session["uid"].ToString() + "','" + LblUID.Text + "','" + TxtWorkExp.Text + "','" + TxtAmount.Text + "','" + DateTime.Now.ToString() + "')";
        bool b = cm.ExecuteInsertOrUpdateOrDelete();
        if (b == true)
        {
            Response.Write("<script>alert('Applied successfully.')</script>");
        }
        else
        {
            Response.Write("<script>alert('Response not saved.')</script>");
        }
    }
}