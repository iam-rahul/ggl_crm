using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;

/// <summary>
/// Summary description for CaptchaGenerator
/// </summary>
public class CaptchaGenerator
{
	public CaptchaGenerator()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string GetRandomCode()
    {
        char ch1, ch2, ch3, ch4, ch5, ch6, ch7,ch8,ch9,ch10;
        string code="";
        int i;
        Random r = new Random();
        ch1 = Convert.ToChar(r.Next(65,90));
        ch2 = Convert.ToChar(r.Next(49, 57));
        ch3 = Convert.ToChar(r.Next(91, 96));
        ch4 = Convert.ToChar(r.Next(97, 122));
        ch5 = Convert.ToChar(r.Next(70, 80));
        ch6 = Convert.ToChar(r.Next(100, 115));
        ch7 = Convert.ToChar(r.Next(97, 122));
        ch8 = Convert.ToChar(r.Next(75, 90));
        ch9 = Convert.ToChar(r.Next(70, 75));
        ch10 = Convert.ToChar(r.Next(49, 55));
        i = r.Next(1, 4);
        switch (i)
        {
            case 1:
                code = code + ch1 + ch2 + ch3 + ch4 + ch5 + ch6;
                break;
            case 2:
                code = code + ch3 + ch5 + ch1 + ch7 + ch6 + ch2;
                break;
            case 3:
                code = code + ch10 + ch4 + ch8 + ch9 + ch5 + ch2;
                break;
            case 4:
                code = code + ch7 + ch5 + ch1 + ch3 + ch9 + ch4;
                break;
        }
        return code;
    }
    public Bitmap CreateImage(string ImageText)
    {
        Bitmap bmp = new Bitmap(155, 35);
        Font f = new Font("Arial", 30, FontStyle.Strikeout, GraphicsUnit.Pixel);
        Pen MaroonPen = new Pen(Color.Maroon);
        Graphics g = Graphics.FromImage(bmp);
        g.Clear(Color.Gray);
        g.DrawRectangle(MaroonPen, 0, 0, 154, 34);
        g.DrawString(ImageText, f, new SolidBrush(Color.White), 18, 2, StringFormat.GenericDefault);
        g.Flush();
        return bmp;
    }
    public string[] GetRandomCodeAndImage(string FolderNameWithPath)
    {
        string RandomCode = GetRandomCode();
        Bitmap b = CreateImage(RandomCode);
        if(!Directory.Exists(HttpContext.Current.Server.MapPath(FolderNameWithPath)))
        {
            Directory.CreateDirectory(HttpContext.Current.Server.MapPath(FolderNameWithPath));
        }
        string FileName = Path.GetRandomFileName() + ".jpg";
        b.Save(HttpContext.Current.Server.MapPath(FolderNameWithPath+"/") + FileName);
        string[] Captcha = new string[2];
        Captcha[0] = RandomCode;
        Captcha[1] = FileName;
        return Captcha;
    }
}