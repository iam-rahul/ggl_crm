using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerZone_NewConnection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnBook_Click(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        cm.YourCommand = "INSERT into Tbl_NewConnection(ConnectionType,FromMonth,PostalAddress,MobileNo,EmailID) values('" + DdlGasType.SelectedValue + "','" + TxtBokingMonth.Text + "','" + TxtPAddress.Text + "','" + TxtMobNo.Text + "','" + Session["uid"].ToString() + "')";
        if (cm.ExecuteInsertOrUpdateOrDelete())
        {
            Response.Write("<script>alert('Request for New Connection registered successfully.')</script>");

        }
        else
        {
            Response.Write("<script>alert('Unable to register connection Request.')</script>");

        }
    }
}