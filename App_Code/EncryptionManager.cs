using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EncryptionManager
/// </summary>
public class EncryptionManager
{
	public EncryptionManager()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string EncryptMyData(string PlainText)
    {
        string CyperText = "";
        int ASCIIValue;
        char NewChar;
        foreach (char ch in PlainText)
        {
            ASCIIValue = ch;  // Getting ASCII Value from Char
            if (ASCIIValue >= 65 && ASCIIValue <= 90)
            {
                ASCIIValue = 90 - ASCIIValue + 65;
            }
            else if (ASCIIValue >= 97 && ASCIIValue <= 122)
            {
                ASCIIValue = 122 - ASCIIValue + 97;
            }
            else if (ASCIIValue >= 48 && ASCIIValue <= 57)
            {
                ASCIIValue = 57 - ASCIIValue + 48;
            }
            NewChar=(char)ASCIIValue; // Getting Char from ASCII
            CyperText = CyperText + NewChar;
        }
        return CyperText;
    }
}