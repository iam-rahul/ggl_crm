using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_PumpList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnPump_Click(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        cm.YourCommand = "INSERT into Tbl_PumpList(pumpNname,pumpLocation,pumpAddress,helpLine,city) values('" + TxtPName.Text + "','" + TxtPLocation.Text + "','" + TxtAddress.Text + "','" + TxtHelpLisne.Text + "','" + TxtCity.Text + "')";
        if (cm.ExecuteInsertOrUpdateOrDelete())
        {
            GridView1.DataBind();
            Response.Write("<script>alert('Pump List saved...')</script>");
            TxtPName.Text = "";
            TxtPLocation.Text = "";
            TxtAddress.Text = "";
            TxtHelpLisne.Text = "";
            TxtCity.Text = "";
        }
        else
        {
            Response.Write("<script>alert('PumpList  not saved')</script>");
        }
    }
}