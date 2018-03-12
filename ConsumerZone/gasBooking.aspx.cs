using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;


public partial class ConsumerZone_gasBooking : System.Web.UI.Page
{
    ConnectionManager cm = new ConnectionManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        LblApproxDate.Text = DateTime.Now.AddDays(7).ToString("dd/MM/yyyy");
    }
    protected void DdlFuelType_SelectedIndexChanged(object sender, EventArgs e)
    {
        cm.YourCommand = "SELECT rete from Tbl_Rates where gasType='" + DdlGasType.SelectedValue + "' and rateId=(SELECT max(rateid) from Tbl_Rates where gastype='" + DdlGasType.SelectedValue + "')";
        object ob = cm.GetSingleValue();
        LblPrice.Text = ob.ToString();

    }
    protected void DdlQuantity_SelectedIndexChanged1(object sender, EventArgs e)
    {
        float total = float.Parse(LblPrice.Text) * float.Parse(DdlQuantity.SelectedValue);
        LblTlAmount.Text = total.ToString();
    }
    
    protected void BtnBook_Click1(object sender, EventArgs e)
    {
        ConnectionManager cm = new ConnectionManager();
        cm.YourCommand = "INSERT into Tbl_GasBooking(userID,bookingDate,ApxDelivaryDate,GasType,GasQuantity,Amount,atatus) values('" + Session["uid"].ToString() + "','" + DateTime.Now.ToString() + "','" + LblApproxDate.Text + "','" + DdlGasType.SelectedValue + "','" + DdlQuantity.SelectedValue + "','" + LblTlAmount.Text + "','Raised')";
        if (cm.ExecuteInsertOrUpdateOrDelete())
        {
            Response.Write("<script>alert('Gas Booking Request registered successfully.')</script>");

        }
        else
        {
            Response.Write("<script>alert('Unable to register Gas Booking Request.')</script>");

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Dummy data for Invoice (Bill).
			string companyName = "GGL CRM";
			int orderNo = 1;
			DataTable dt = new DataTable();
			dt.Columns.AddRange(new DataColumn[6] {
							new DataColumn("UserID", typeof(string)),
							new DataColumn("bookingDate", typeof(string)),
							new DataColumn("ApxDelivaryDate", typeof(string)),
							new DataColumn("GasType",  typeof(string)),
							new DataColumn("GasQuantity",  typeof(string)),
                             new DataColumn("Total",  typeof(float))});
            dt.Rows.Add(1, "18 /03 / 2015", DateTime.Now.ToShortDateString(), "CNG", 10, 12345.89);
        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                StringBuilder sb = new StringBuilder();

                //Generate Invoice (Bill) Header.
                sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Order Sheet</b></td></tr>");
                sb.Append("<tr><td colspan = '2'></td></tr>");
                sb.Append("<tr><td><b>Order No: </b>");
                sb.Append(orderNo);
                sb.Append("</td><td align = 'right'><b>Date: </b>");
                sb.Append(DateTime.Now);
                sb.Append(" </td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Company Name: </b>");
                sb.Append(companyName);
                sb.Append("</td></tr>");
                sb.Append("</table>");
                sb.Append("<br />");

                //Generate Invoice (Bill) Items Grid.
                sb.Append("<table border = '1'>");
                sb.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                    sb.Append(column.ColumnName);
                    sb.Append("</th>");
                }
                sb.Append("</tr>");
                foreach (DataRow row in dt.Rows)
                {
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<td>");
                        sb.Append(row[column]);
                        sb.Append("</td>");
                    }
                    sb.Append("</tr>");
                }
                sb.Append("<tr><td align = 'right' colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>Total</td>");
                sb.Append("<td>");
                sb.Append(dt.Compute("sum(Total)", ""));
                sb.Append("</td>");
                sb.Append("</tr></table>");

                //Export HTML String as PDF.
                StringReader sr = new StringReader(sb.ToString());
                Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                htmlparser.Parse(sr);
                pdfDoc.Close();
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=Invoice_" + orderNo + ".pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
            }
        }
    }
}



