using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JoinUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        cm.YourCommand = "INSERT into Tbl_enquiry(Name,Contact_No,Email_ID,Message,Enquiry_DT) values('"+TxtName.Text+"','"+TxtContactNo.Text+"','"+TxtEmailAddress.Text+"','"+TxtMessage.Text+"','"+DateTime.Now.ToString()+"')";
        bool result=cm.ExecuteInsertOrUpdateOrDelete();
        if (result == true)
            Response.Write("<script>alert('Enquiry saved successfully.');</script>");
        else
            Response.Write("<script>alert('Unable to process your request.');</script>");
    }
}