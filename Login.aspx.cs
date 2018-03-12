using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Login : System.Web.UI.Page
{
    ConnectionManager cm = new ConnectionManager();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        LoginManager lm = new LoginManager();
        lm.UserID = TxtEmailID.Text;
        lm.UserPass = TxtPassword.Text;
        lm.connectionType = Ddlconnection_Type.SelectedValue;
        string result= lm.ValidateUser();
        if (result == "SUCCESS")
        {
            lm.UpdateLoginDetails();
            if (Ddlconnection_Type.SelectedValue == "Consumer")
            {
                Session["uid"] = TxtEmailID.Text;
                Response.Redirect("~/ConsumerZone/StudentHome.aspx");
            }
            else if (Ddlconnection_Type.SelectedValue == "Vendor")
            {
                Session["uid"] = TxtEmailID.Text;
                Response.Redirect("~/VenderZone/DefaultVendorHome.aspx");
            }
            
        }
        else if (result == "BLOCKED")
        {
            Response.Write("<script>alert('Your account is suspended.');</script>");
        }
        else if (result == "INVALID")
        {
            Response.Write("<script>alert('Invalid login details.');</script>");
        }
    }
    protected void BtnNext_Click(object sender, EventArgs e)
    {
        cm.YourCommand = "SELECT mob_no from Registration where email='" + TxtVerEmail.Text + "'";
        object mob = cm.GetSingleValue();
        if (mob != null)
        {
            string mobile = mob.ToString();
            TxtVerEmail.Visible = false;
            BtnNext.Visible = false;
            TxtMobNo.Visible = true;
            BtnGetCode.Visible = true;
            LblLastDigits.Text = "Enter Your Mobile Number Ending with- " + mobile.Substring(mobile.Length - 2);
            LblLastDigits.Visible = true;
            Response.Write("<script>window.location.href = '#dialog';</script>");
        }
        else
        {
            Response.Write("<script>alert('Invalid email id');window.location.href = '#dialog';</script>");
        }
    }
    protected void BtnGetCode_Click(object sender, EventArgs e)
    {
        cm.YourCommand = "SELECT name from Registration where mobile='" + TxtMobNo.Text + "'";
        object ob = cm.GetSingleValue();
        if (ob != null)
        {
            //SendSMS ss = new SendSMS();
            SMSSender ss = new SMSSender();
            CaptchaGenerator cg = new CaptchaGenerator();
            string code = cg.GetRandomCode();
            string msg = "Hello " + ob + ", Someone tried to reset your password in GGL Web Portal. Is that person you? if yes then your varification code is: " + code + " Otherwise ignore this message.\n Regards- \n Admin Polyprep";
            ss.SendMySMS(TxtMobNo.Text, msg);
            cm.YourCommand = "Insert into Tbl_ForgotPassword(UserId,RequestedOn,Code,ValidTill,Status) values('" + TxtVerEmail.Text + "','" + DateTime.Now.ToString() + "','" + code + "','" + DateTime.Now.AddMinutes(15).ToString() + "','0')";
            if (cm.ExecuteInsertOrUpdateOrDelete())
            {
                Response.Write("<script>window.location.href = '#reset';</script>");

            }
        }
        else
        {
            Response.Write("<script>alert('Invalid mobile no');window.location.href = '#dialog';</script>");
        }
    }
    protected void BtnChange_Click(object sender, EventArgs e)
    {
        cm.YourCommand = "SELECT *from Tbl_ForgotPassword where code='" + TxtCode.Text + "' and forgotid=(select max(forgotid) from Tbl_ForgotPassword where UserID='" + TxtVerEmail.Text + "')";
        DataTable dt = cm.ExecuteSelectByDisconnected();
        if (dt != null)
        {
            // Validate Valid till
            //reset password
            EncryptionManager em = new EncryptionManager();

            cm.YourCommand = "UPDATE Tbl_Login set pwd='" + em.EncryptMyData(TxtNewPass.Text) + "' where UserID='" + TxtVerEmail.Text + "'";
            if (cm.ExecuteInsertOrUpdateOrDelete())
                Response.Write("<script>alert('Password changed successfully');window.location.href = 'Login.aspx';</script>");
            else
                Response.Write("<script>alert('Unable to reset password');</script>");
        }
        else
        {
            Response.Write("<script>alert('Invalid Varification code');window.location.href = '#dialog';</script>");
        }
    }
}