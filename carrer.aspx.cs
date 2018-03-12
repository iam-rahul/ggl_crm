using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class carrer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnApply_Click(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        cm.YourCommand = "INSERT into Tbl_CarrerApply(firstName,lastName,email,contactNo,HighSchool,HighSchoolPer,Inter,InterPer,UG,UGper,PG,PGper,resume,ApplyDate) values('" + TxtfirstName.Text + "','" + TxtlastName.Text + "','" + TxtEmail.Text + "','" + TxtContact.Text + "','" + TxtHSbord.Text + "','" + TxtHSper.Text + "','" + TxtInter.Text + "','" + TxtInterPer.Text + "','" + TxtUG.Text + "','" + TxtUGper.Text + "','" + TxtPG.Text + "','" + TxtPGper.Text + "','" + FileResume.FileName + "','" + DateTime.Now.ToString() + "')";
        bool result = cm.ExecuteInsertOrUpdateOrDelete();
        if (result == true)
            Response.Write("<script>alert('Enquiry saved successfully.');</script>");
        else
            Response.Write("<script>alert('Unable to process your request.');</script>");
    }
}