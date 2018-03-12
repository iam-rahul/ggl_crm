using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VenderZone_vendorFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        cm.YourCommand = "INSERT into Tbl_feedback(user_id,message,feedbackDT) values('" + Session["uid"].ToString() + "','" + FeedbackText.Text + "','" + DateTime.Now.ToString() + "')";
        bool b = cm.ExecuteInsertOrUpdateOrDelete();
        if (b == true)
        {
            Response.Write("<script>alert('Feedback submitted successfully.')</script>");
        }
        else
        {
            Response.Write("<script>alert('Feedback not saved.')</script>");
        }
    }
}