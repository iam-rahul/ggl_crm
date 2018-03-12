using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;

/// <summary>
/// Summary description for SMS_Sender
/// </summary>
public class SMSSender
{
    string UserID = "Softpro";
    string Password = "sam@123";
    string SenderID = "SPILKO";
    string Priority = "sdnd";
    string SMSType = "normal";
	public SMSSender()
	{
		//
		// TODO: Add constructor logic here
		//Applcation programming interface..
        //bulk sms provider..(purchase)
        //transectional,: those send to register user / 20% send to DND
        //pramotional: send for promote / not send to DND
        //
	}
    public bool SendMySMS(string MobileNo, string Message)
    {
        try
        {
            String ApiURL = "http://bhashsms.com/api/sendmsg.php?user=" + UserID + "&pass=" + Password + "&sender=" + SenderID + "&phone=" + MobileNo + "&text=" + Message + "&priority=" + Priority + "&stype=" + SMSType;
            WebClient we = new WebClient();
            string response = we.DownloadString(ApiURL);
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }
}