using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for teachersev
/// </summary>
[WebService(Namespace = "http://schoolmgmt.sswtechnology.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class teachersev : System.Web.Services.WebService {

    public teachersev () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }


    [WebMethod]
    public int insert(string techerno, string joindate, string name, string designation, string father, string gender, string dob,string country,string state,string city,string address,string mobile,string email,string status,
        string blood, string year, string month, string details, string salary, string pass, string pass1, string imgg,string teacher)
        
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("teacher_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@teacher_id", "");
            cmd.Parameters.AddWithValue("@teacher_no", techerno);
            cmd.Parameters.AddWithValue("@joining_date", joindate);
            cmd.Parameters.AddWithValue("@teacher_name", name);
            cmd.Parameters.AddWithValue("@designation", designation);
            cmd.Parameters.AddWithValue("@father_name", father);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@country", country);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@address1", address);
            cmd.Parameters.AddWithValue("@mobile", mobile);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@maritial_status", status);
            cmd.Parameters.AddWithValue("@blood_group", blood);
            cmd.Parameters.AddWithValue("@total_exp_year", year);
            cmd.Parameters.AddWithValue("@total_exp_month", month);
            cmd.Parameters.AddWithValue("@experience_detail", details);
            cmd.Parameters.AddWithValue("@salary", salary);

            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 289;
            pass = "Te" + j + "ER";
            cmd.Parameters.AddWithValue("@password", pass);
            Random ran1 = new Random();
            int k = ran1.Next(1, 5);
            int l = k * 256;
            pass1 = "TE" + l + "LE";
            cmd.Parameters.AddWithValue("@teacher_tid", pass1);
            cmd.Parameters.AddWithValue("@image", imgg);
            cmd.Parameters.AddWithValue("@type", "teacher");
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
    public int update(int id, string techerno, string joindate, string name, string designation, string father, string gender, string dob, string country, string state, string city, string address, string mobile, string email, string status,
        string blood, string year, string month, string details, string salary, string pass, string pass1, string imgg, string teacher)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("teacher_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@teacher_id", id);
            cmd.Parameters.AddWithValue("@teacher_no", techerno);
            cmd.Parameters.AddWithValue("@joining_date", joindate);
            cmd.Parameters.AddWithValue("@teacher_name", name);
            cmd.Parameters.AddWithValue("@designation", designation);
            cmd.Parameters.AddWithValue("@father_name", father);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@country", country);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@address1", address);
            cmd.Parameters.AddWithValue("@mobile", mobile);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@maritial_status", status);
            cmd.Parameters.AddWithValue("@blood_group", blood);
            cmd.Parameters.AddWithValue("@total_exp_year", year);
            cmd.Parameters.AddWithValue("@total_exp_month", month);
            cmd.Parameters.AddWithValue("@experience_detail", details);
            cmd.Parameters.AddWithValue("@salary", salary);
            cmd.Parameters.AddWithValue("@password", pass);
            cmd.Parameters.AddWithValue("@teacher_tid", pass1);
            cmd.Parameters.AddWithValue("@image", imgg);
            cmd.Parameters.AddWithValue("@type", "teacher");
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
            SqlCommand cmd = new SqlCommand("teacher_dlt_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@teacher_id", id);
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM teacher_info"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "teacher_info";
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
    public int teacherpayinsert(string name, string tid, string year, string month, string date, string salary, string holiday, string paidsalary)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("salary_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@teacher_name", name);
            cmd.Parameters.AddWithValue("@teacher_tid", tid);
            cmd.Parameters.AddWithValue("@year", year);
            cmd.Parameters.AddWithValue("@month", month);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@salary", salary);
            cmd.Parameters.AddWithValue("@holiday", holiday);
            cmd.Parameters.AddWithValue("@paid", paidsalary);

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
   
   
    
}
