using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_SendSMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //try catch block 
        // try block in which those code written in which the possibility of error
        // catch is used to  show modified message when error occured.
        //
        //
        
    }
    protected void BtnSend_Click(object sender, EventArgs e)
    {
        SMSSender ss = new SMSSender();
        if (ss.SendMySMS(TxtMobNo.Text, TxtMessage.Text) == true)
        {
            Response.Write("<script>alert('SMS sent successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('SMS sent not successfully')</script>");
        }
    }
}