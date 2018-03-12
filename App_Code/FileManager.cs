using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for FileManager
/// </summary>
public class FileManager
{
   public float FileSizeInMB
    {
        get;
        set;
    }
    public float MaxFileSizeInMB
    {
        get;
        set;
    }
    public string MyFileName
    {
        get;
        set;
    }
    public string MyFileType
    {
        get;
        set;
    }
    public string[] AllowedExtention
    {
        get;
        set;
    }
    public FileUpload MyFileUpload
    {
        get;
        set;
    }
	public FileManager()   // Constructor
	{
        MaxFileSizeInMB = 4.0f;
        AllowedExtention = new string[] {".jpg",".jpeg",".png"};
	}
    public string ValidateMyFile()
    {
        int SizeInBytes = MyFileUpload.PostedFile.ContentLength;
        FileSizeInMB = (float)(SizeInBytes / 1024) / 1024;
        if (FileSizeInMB <= MaxFileSizeInMB)
        {
            MyFileType = MyFileUpload.FileName.Substring(MyFileUpload.FileName.LastIndexOf('.'));
            bool ExtentionSignal=false;
            foreach (string ext in AllowedExtention)
            {
                if (ext.ToUpper() == MyFileType.ToUpper())
                {
                    ExtentionSignal = true;
                    break;
                }
            }
            if (ExtentionSignal == true)
            {
                MyFileName = Path.GetRandomFileName() + MyFileType;
                return "SUCCESS";
            }
            else
            {
                return "Invalid File Format.";
            }

        }
        else
        {
            return "File size is too large.";
        }
    }
    public bool UploadMyFile(string YourFolderNameWithPath)
    {
        if (!Directory.Exists(HttpContext.Current.Server.MapPath(YourFolderNameWithPath)))
        {
            Directory.CreateDirectory(HttpContext.Current.Server.MapPath(YourFolderNameWithPath));
            
        }
        MyFileUpload.SaveAs(HttpContext.Current.Server.MapPath(YourFolderNameWithPath)+"/"+MyFileName);
        return true;
    }
}