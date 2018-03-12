using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for ConnectionManager
/// </summary>
public class ConnectionManager
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    SqlDataReader dr;
    DataTable dt;
    public string YourCommand { get; set; }
    public ConnectionManager()  // Constructor
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstring"].ToString());
    }
    public bool ExecuteInsertOrUpdateOrDelete()
    {
        cmd = new SqlCommand(YourCommand, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n >= 1)
            return true;
        else
            return false;
    }
    public DataTable ExecuteSelectByDisconnected()
    {
        da = new SqlDataAdapter(YourCommand, con);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public object GetSingleValue()
    {
        cmd = new SqlCommand(YourCommand, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        object Value = cmd.ExecuteScalar();
        con.Close();
        return Value;
    }

    
}