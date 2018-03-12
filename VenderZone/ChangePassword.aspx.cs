using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VenderZone_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnChange_Click(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        EncryptionManager em = new EncryptionManager();
        cm.YourCommand = "Update Tbl_Login set Pwd='" + em.EncryptMyData(TxtNewPass.Text) + "' where UserID='" + Session["uid"].ToString() + "' and pwd='" + em.EncryptMyData(TxtOldPass.Text) + "'";
        if (cm.ExecuteInsertOrUpdateOrDelete())
        {
            LblMsg.ForeColor = Color.Green;
            LblMsg.Text = "Password changed successfully.";
        }
        else
        {
            LblMsg.ForeColor = Color.Red;
            LblMsg.Text = "Invalid Credentials.";
        }
    }
}