using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for parentservice
/// </summary>
[WebService(Namespace = "http://schoolmgmt.sswtechnology.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class parentservice : System.Web.Services.WebService {

    public parentservice () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int insert(string father,string sname,string roll,string clas,string section,string complaint)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_review_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@father_name", father);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@complaint", complaint);
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
    public int update(int id, string father, string sname, string roll, string clas, string section, string complaint)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_review_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@father_name", father);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@complaint", complaint);
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
            SqlCommand cmd = new SqlCommand("add_review_dlt_proc", con);
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM add_review"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "add_review";
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
    public DataTable notice()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM noticeboard"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "noticeboard";
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
    public DataTable events()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM events"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "events";
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
