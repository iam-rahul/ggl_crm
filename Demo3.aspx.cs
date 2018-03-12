using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demo3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnEncrypt_Click(object sender, EventArgs e)
    {
        EncryptionManager em = new EncryptionManager();
        TxtEncryptedData.Text = em.EncryptMyData(TxtNormalData.Text);
    }
}