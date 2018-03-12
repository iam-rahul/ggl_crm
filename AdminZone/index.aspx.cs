using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        LoginManager lm = new LoginManager();
        lm.UserID = TxtEmailID.Text;
        lm.UserPass = TxtPassword.Text;
        lm.connectionType = "Admin";
        if (lm.ValidateAdmin() == true)
        {
            Session["uid"] = TxtEmailID.Text;
            Response.Redirect("AdminHome.aspx");
        }
        else
            Response.Write("<script>alert('Invalid Credentials');</script>");
    }
}