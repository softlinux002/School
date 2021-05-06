using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for Financeserv
/// </summary>
[WebService(Namespace = "http://schoolmgmt.sswtechnology.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Financeserv : System.Web.Services.WebService {

    public Financeserv () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int insert(string batch,string stream,string clas ,string section,string type,string date,string fee)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("addfee_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@feetype", type);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@fee", fee);
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
    public int update(int id, string batch, string stream, string clas, string section, string type, string date, string fee)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("addfee_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@feetype", type);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@fee", fee);
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
            SqlCommand cmd = new SqlCommand("addfee_dlt_proc", con);
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM add_fee"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "add_fee";
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
    public int studentinsert(string admission, string admissiondate, string blood, string sname, string fname, string mname, string batch,string stream,string clas,string section,string roll,string dob,string gender,string country,string state,string city,string address,string mobile,string email,string pass,string pass1,string image,string docname,string image1,string stu)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("studentinfo_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@student_id", "");
            cmd.Parameters.AddWithValue("@admission_no", admission);
            cmd.Parameters.AddWithValue("@admissiondate", admissiondate);
            cmd.Parameters.AddWithValue("@bloodgroup", blood);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@father_name", fname);
            cmd.Parameters.AddWithValue("@mother_name", mname);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@country", country);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@address1", address);
            cmd.Parameters.AddWithValue("@phone", mobile);
            cmd.Parameters.AddWithValue("@email", email);


            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 456;
            pass = "Co" + j + "Ed";
            cmd.Parameters.AddWithValue("@password", pass);

            Random ran1 = new Random();
            int k = ran.Next(1, 5);
            int l = k * 456;
            pass1 = "ST" + l + "Ed";
            cmd.Parameters.AddWithValue("@s_id", pass1);

            cmd.Parameters.AddWithValue("@image", image);
            cmd.Parameters.AddWithValue("@document_name", docname);
            cmd.Parameters.AddWithValue("@doc_image", image1);
            cmd.Parameters.AddWithValue("@type", "student");
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
    public int studentupdate(int id, string admission, string admissiondate, string blood, string sname, string fname, string mname, string batch, string stream, string clas, string section, string roll, string dob, string gender, string country, string state, string city, string address, string mobile, string email, string pass, string pass1, string image, string docname, string image1,string stu)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("studentinfo_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@student_id", id);
            cmd.Parameters.AddWithValue("@admission_no", admission);
            cmd.Parameters.AddWithValue("@admissiondate", admissiondate);
            cmd.Parameters.AddWithValue("@bloodgroup", blood);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@father_name", fname);
            cmd.Parameters.AddWithValue("@mother_name", mname);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@country", country);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@address1", address);
            cmd.Parameters.AddWithValue("@phone", mobile);
            cmd.Parameters.AddWithValue("@email", email);

            cmd.Parameters.AddWithValue("@password", pass);

            cmd.Parameters.AddWithValue("@s_id", pass1);

            cmd.Parameters.AddWithValue("@image", image);
            cmd.Parameters.AddWithValue("@document_name", docname);
            cmd.Parameters.AddWithValue("@doc_image", image1);
            cmd.Parameters.AddWithValue("@type", "student");
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
    public int studentdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("studentinfo_procevent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@student_id", id);
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
    public DataTable studentshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM studentinfo"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "studentinfo";
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
    public int addcomplaintinsert(string batch, string stream, string clas, string section, string sname, string roll, string date,string complaint)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("admin_add_complaint_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@Student_name", sname);
            cmd.Parameters.AddWithValue("@student_rollno", roll);
            cmd.Parameters.AddWithValue("@date", date);
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
    public int addcomplaintupdate(int id, string batch, string stream, string clas, string section, string sname, string roll, string date, string complaint)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("admin_add_complaint_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@Student_name", sname);
            cmd.Parameters.AddWithValue("@student_rollno", roll);
            cmd.Parameters.AddWithValue("@date", date);
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
    public int addcomplaintdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("admin_add_complaint_dlt_proc", con);
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
    public DataTable addcomplaintshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM admin_add_complaint"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "admin_add_complaint";
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
    public int parentinsert(string pfname, string sname, string relation, string dob, string qualification, string occupation, string income, string email,string mobile,string paren,string pass)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("parentinfo_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@parent_id", "");
            cmd.Parameters.AddWithValue("@firstname", pfname);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@relation", relation);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@qualification", qualification);
            cmd.Parameters.AddWithValue("@occupation", occupation);
            cmd.Parameters.AddWithValue("@income", income);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@mobilephone", mobile);
            cmd.Parameters.AddWithValue("@type", "parent");

            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 689;
            pass = "Te" + j + "ER";
            cmd.Parameters.AddWithValue("@password", pass);
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
    public int parentupdate(int id, string pfname, string sname, string relation, string dob, string qualification, string occupation, string income, string email, string mobile, string paren, string pass)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("parentinfo_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@parent_id", id);
            cmd.Parameters.AddWithValue("@firstname", pfname);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@relation", relation);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@qualification", qualification);
            cmd.Parameters.AddWithValue("@occupation", occupation);
            cmd.Parameters.AddWithValue("@income", income);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@mobilephone", mobile);
            cmd.Parameters.AddWithValue("@type", "parent");
            cmd.Parameters.AddWithValue("@password", pass);
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
    public int parentdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("parentinfo_procevent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@parent_id", id);
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
    public DataTable parentshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM parentinfo"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "parentinfo";
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
