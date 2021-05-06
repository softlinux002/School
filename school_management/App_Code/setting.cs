using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for setting
/// </summary>
[WebService(Namespace = "http://schoolmgmt.sswtechnology.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class setting : System.Web.Services.WebService {

    public setting () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int insert(string image)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("dashimage_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@image", image);

            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            ret = cmd.ExecuteNonQuery();
            return ret;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    [WebMethod]
    public int update(int id, string image)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("dashimage_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@image", image);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            ret = cmd.ExecuteNonQuery();
            return ret;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }

    }
    [WebMethod]
    public int delete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("dashimage_event_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@pk_id", id);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            ret = cmd.ExecuteNonQuery();
            return ret;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    [WebMethod]
    public DataTable show()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM dashimage"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "dashimage";
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    [WebMethod]
    public int addschoolinsert(string name,string image)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("school_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@school_name", name);
            cmd.Parameters.AddWithValue("@image", image);

            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            ret = cmd.ExecuteNonQuery();
            return ret;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    [WebMethod]
    public int addschoolupdate(int id, string name, string image)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("school_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@school_name", name);
            cmd.Parameters.AddWithValue("@image", image);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            ret = cmd.ExecuteNonQuery();
            return ret;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }

    }
    [WebMethod]
    public int addschooldelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("school_dlt_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@pk_id", id);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            ret = cmd.ExecuteNonQuery();
            return ret;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    [WebMethod]
    public DataTable addschoolshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM school_info"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "school_info";
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
   
    
}
