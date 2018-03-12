using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_UpdateTendors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Click(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        cm.YourCommand = "INSERT into Tbl_Tendor(tendorHeading,tendorDetails,tendorUDT) values('" + TxtHeading.Text + "','" + TxtDetails.Text + "','" + DateTime.Now.ToString() + "')";
        if (cm.ExecuteInsertOrUpdateOrDelete())
        {
            GridView1.DataBind();
            TxtHeading.Text = "";
            Response.Write("<script>alert('Tendor Updated')</script>");
        }
        else
        {
            Response.Write("<script>alert(' Tendor Not Updated ')</script>");
        }
    }
}