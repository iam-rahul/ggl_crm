using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for EmailSender
/// </summary>
public class EmailSender
{
    public string sendTo { get; set; }
    public string MessageBody { get; set; }
    public string subject { get; set; }
    public string CC { get; set; }
    public string AttachamentFile { get; set; }
	public EmailSender()
	{
		//
		// TODO: Add constructor logic here
        //my account > sign in & security > allow less secure as...
		//
	}
    public bool SendMyEmail()
    {
        SmtpClient client = new SmtpClient();
        MailMessage msg = new MailMessage();
        MailAddress from = new MailAddress("abhi.bisht@gmail.com");
        MailAddress to = new MailAddress(sendTo);
        // Network Credentials setting starts from here
        NetworkCredential nc = new NetworkCredential("abhi.bisht@gmail.com", "abhi00009");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        client.Credentials = nc;
        // Network Credentials setting end from here
        // Mail Message setting starts from here
        msg.Sender = from;
        msg.Subject = subject;
        msg.To.Add(to);
        msg.From = from;
        msg.Body = MessageBody;
        if (CC != null)
        {
            MailAddress ccmail = new MailAddress(CC);
            msg.CC.Add(ccmail);
        }
        if (AttachamentFile!= null)
        {
            Attachment at = new Attachment(HttpContext.Current.Server.MapPath(AttachamentFile));
            msg.Attachments.Add(at);
        }
        // Mail Message setting end from here
        // Now it's turn to send your email
        client.Send(msg);
        return true;
    }
}