using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_NotificationMgmt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Click(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        cm.YourCommand = "INSERT into Tbl_Notification(message,notification_UDT) values('" + TxtMessage.Text + "','" + DateTime.Now.ToString() + "')";
        if(cm.ExecuteInsertOrUpdateOrDelete())
        {
            GridView1.DataBind();
            TxtMessage.Text="";
            Response.Write("<script>alert('Notification saved')</script>");
        }
        else
        {
            Response.Write("<script>alert('Notification not saved')</script>");
        }
    }
}