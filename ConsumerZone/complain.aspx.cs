using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerZone_complain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        cm.YourCommand = "INSERT into Tbl_Complain(user_ID,subject,detail,complainDT,status) values('" + Session["uid"].ToString() + "','" + complain_Subject.Text + "','" + complain_Message.Text + "','" + DateTime.Now.ToString() + "','Raised')";
        if (cm.ExecuteInsertOrUpdateOrDelete())
        {
            Response.Write("<script>alert('Complain registered successfully.')</script>");

        }
        else
        {
            Response.Write("<script>alert('Unable to register complain.')</script>");

        }
    }
}