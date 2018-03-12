using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for LoginManager
/// </summary>
public class LoginManager
{
    EncryptionManager em = new EncryptionManager();
    ConnectionManager cm = new ConnectionManager();
    public string UserID
    {
        get;
        set;
    }
    public string UserPass
    {
        get;
        set;
    }
    public string connectionType
    {
        get;
        set;
    }
    public bool UserStatus
    {
        get;
        set;
    }
    public int LoginCount
    {
        get;
        set;
    }
    public string LastLoginTime
    {
        get;
        set;
    }
	public LoginManager()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool SetLoginDetails()
    {
        cm.YourCommand = "INSERT into Tbl_Login(UserID,Pwd,Connection_type,Status,LCount) values('" + UserID + "','" + UserPass + "','" + connectionType + "','"+UserStatus+"','"+LoginCount+"')";
        return  cm.ExecuteInsertOrUpdateOrDelete();
    }
    public string ValidateUser()
    {
        SqlConnection cn = new SqlConnection(
            ConfigurationManager.ConnectionStrings
            ["myconstring"].ToString());
        SqlCommand cmd = new SqlCommand("SPLogin", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@UserID", SqlDbType.VarChar).Value = UserID;
        string epass = em.EncryptMyData(UserPass);
        cmd.Parameters.Add("@pass", SqlDbType.VarChar).Value = epass ;
        cmd.Parameters.Add("@Cntype", SqlDbType.VarChar).Value = connectionType;
        if (cn.State == ConnectionState.Closed)
            cn.Open();
        object ob = cmd.ExecuteScalar();
        cn.Close();
        if (ob != null)
        {
            if (bool.Parse(ob.ToString()) == true)
            {
                return "SUCCESS";
            }
            else
            {
                return "BLOCKED";
            }

        }
        else
        {
            return "INVALID";
        }

    }
    public bool UpdateLoginDetails()
    {
        cm.YourCommand = "UPDATE TBL_LOGIN SET LCOUNT=(LCOUNT+1),LastLinTime='" + DateTime.Now.ToString() + "' where userid='"+UserID+"'";
        return  cm.ExecuteInsertOrUpdateOrDelete();
    }
    public bool ValidateAdmin()
    {
        cm.YourCommand = "SELECT userid from Tbl_Login where userid='" + UserID + "' and pwd='" + em.EncryptMyData(UserPass) + "' and connection_type='" + connectionType + "'";
        object ob = cm.GetSingleValue();
        if (ob != null)
            return true;
        else
            return false;
    }
}