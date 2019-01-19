using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for XLDL
/// </summary> 

public class xddl
{
	public xddl()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static string str = ConfigurationManager.ConnectionStrings["QLBanSachConnectionString"].ConnectionString.ToString();
    public static DataTable getdata(string lenh)
    {
        SqlConnection cn = new SqlConnection(str);
        try
        {
            SqlDataAdapter sql = new SqlDataAdapter(lenh,cn);
            DataTable dt = new DataTable();
            sql.Fill(dt);
            return dt;
        }
        catch(Exception ex)
        {
            throw ex;
        }
    }
    public static void excu(string lenh)
    {
        using (SqlConnection cn = new SqlConnection(str))
        {
            cn.Open();
            SqlCommand coman = new SqlCommand(lenh, cn);
            coman.ExecuteNonQuery();
            cn.Close();
        }
    }
    public static string getvalu(string lenh)
    {
         using (SqlConnection cn = new SqlConnection(str))
         {
             cn.Open();
             SqlCommand coman = new SqlCommand(lenh, cn);
             string valu = coman.ExecuteScalar().ToString();
             cn.Close();
             return (valu);
         }
    }


   // public object Getdata { get; set; }





    public object Getdata(string p)
    {
        throw new NotImplementedException();
    }
}