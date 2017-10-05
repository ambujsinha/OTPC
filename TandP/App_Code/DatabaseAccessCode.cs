using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Class1
/// </summary>
public class DatabaseAccessCode
{
    public static bool InsertData(string qry)
    {
        string con_string = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        //string con_string = (@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\NITZ\Documents\Visual Studio 2013\Projects\DurgapurSVT_16_WEB_APPS\App_Data\Database.mdf;Integrated Security=True");
        SqlConnection con = new SqlConnection(con_string);
        con.Open();
        SqlCommand cmd = new SqlCommand(qry,con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }
    public static DataSet FetchData(string qry)
    {
        string con_string = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        SqlConnection con = new SqlConnection(con_string);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(qry,con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        return ds;
    }
}