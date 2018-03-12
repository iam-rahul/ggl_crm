using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_SendEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      EmailSender es = new EmailSender();
        es.MessageBody = TxtMsg.Text;
        es.sendTo = TxtSendTo.Text;
        es.subject= TxtSubject.Text;
        es.AttachamentFile ="~/images/ggllogo1.gif";
        if (es.SendMyEmail() == true)
        {
            Response.Write("<script>alert('Your Email send successfully...')</script>");
        }
        else
        {
            Response.Write("<script>alert('Your Email send not successfully...')</script>");
        }
    }
}