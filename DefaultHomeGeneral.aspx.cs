using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DwfaultHomeGeneral : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            ConnectionManager cm = new ConnectionManager();
            cm.YourCommand = "SELECT top 5 message from Tbl_Notification order by notification_ID desc"; 
            GVNotification.DataSource = cm.ExecuteSelectByDisconnected();
            GVNotification.DataBind();
            int i = 0;
            foreach (GridViewRow r in GVNotification.Rows)
            {
                if (i != 0)
                {
                    Image im = (Image)r.FindControl("ImgNew");
                    im.Visible = false;
                }
                i++;
            }
        }
    }
}