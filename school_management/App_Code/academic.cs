using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for academic
/// </summary>
[WebService(Namespace = "http://schoolmgmt.sswtechnology.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class academic : System.Web.Services.WebService {

    public academic () 
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int insert(string clas)
    {
        try
      {
        
        int ret = 0;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
        SqlCommand cmd = new SqlCommand("insert_class_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "insert");
        cmd.Parameters.AddWithValue("@pk_id", "");
        cmd.Parameters.AddWithValue("@class", clas);
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
    public int update(int id, string clas)
    {
        try
        {
             int ret = 0;
             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
             SqlCommand cmd = new SqlCommand("insert_class_proc", con);
             cmd.CommandType = CommandType.StoredProcedure;
             cmd.Parameters.AddWithValue("@action", "update");
             cmd.Parameters.AddWithValue("@pk_id",id);
             cmd.Parameters.AddWithValue("@class", clas);
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
            SqlCommand cmd = new SqlCommand("insert_class_dlt_proc", con);
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM insert_class"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "insert_class";
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
    public int addclassinsert(string batch,string clas)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("class_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@class_id", "");
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@class_name", clas);
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
    public int addclassupdate(int id, string batch, string clas)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("class_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@class_id", id);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@class_name", clas);
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
    public int addclassdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("class_dlt_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@class_id", id);
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
    public DataTable addclassshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM class_info"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "class_info";
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
    public int addsectioninsert(string batch, string clas,string section)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("section_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@section_id", "");
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section_name", section);
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
    public int addsectionupdate(int id, string batch, string clas, string section)
    {
        try
        {

            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("section_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@section_id", id);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section_name", section);
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
    public int addsectiondelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("section_procevent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@section_id", id);
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
    public DataTable addsectionshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM section"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "section";
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
        catch(Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    [WebMethod]
    public int addsyllabusinsert(string batch, string stream,string clas,string subject ,string syllabus)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("syllabus_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@subject", subject);
            cmd.Parameters.AddWithValue("@syllabus", syllabus);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            ret = cmd.ExecuteNonQuery();
            return ret;
        }
        catch(Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    [WebMethod]
    public int addsyllabusnupdate(int id, string batch, string stream, string clas, string subject, string syllabus)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("syllabus_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@subject", subject);
            cmd.Parameters.AddWithValue("@syllabus", syllabus);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            ret = cmd.ExecuteNonQuery();
            return ret;
        }
        catch(Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    [WebMethod]
    public int addsyllabusdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("syllabus_dlt_proc", con);
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
        catch(Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    [WebMethod]
    public DataTable addsyllabusshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM syllabus"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "syllabus";
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
        catch(Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    [WebMethod]
    public int addsubjectinsert(string subject,  string clas, string section, string teacher)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("subject_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@subject_id", "");
            cmd.Parameters.AddWithValue("@subject_name", subject);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@teacher", teacher);
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
    public int addsubjectupdate(int id, string subject, string clas, string section, string teacher)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("subject_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@subject_id", id);
            cmd.Parameters.AddWithValue("@subject_name", subject);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@teacher", teacher);
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
    public int addsubjectdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("subject_dlt_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@subject_id", id);
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
    public DataTable addsubjectshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM subject_info"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "subject_info";
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
    public int timetableshowinsert(string batch, string stream, string clas, string section,string subject,string tname,string day,string stime,string etime)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("timetable_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@subject", subject);
            cmd.Parameters.AddWithValue("@teacher_name", tname);
            cmd.Parameters.AddWithValue("@day", day);
            cmd.Parameters.AddWithValue("@startingtime", stime);
            cmd.Parameters.AddWithValue("@endingtime", etime);
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
    public int timetableshowupdate(int id, string batch, string stream, string clas, string section, string subject, string tname, string day, string stime, string etime)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("timetable_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@subject", subject);
            cmd.Parameters.AddWithValue("@teacher_name", tname);
            cmd.Parameters.AddWithValue("@day", day);
            cmd.Parameters.AddWithValue("@startingtime", stime);
            cmd.Parameters.AddWithValue("@endingtime", etime);
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
    public int timetableshowdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("timetable_procevent", con);
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
    public DataTable timetableshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM timetable"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "timetable";
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
    public int examtimetableshowinsert(string batch, string clas, string section,string stream,string subject,string paper, string edate,  string stime, string etime)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("examsechdule_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@subject", subject);
            cmd.Parameters.AddWithValue("@paper", paper);
            cmd.Parameters.AddWithValue("@examdate", edate);
            cmd.Parameters.AddWithValue("@starttime", stime);
            cmd.Parameters.AddWithValue("@endtime", etime);
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
    public int examtimetableshowupdate(int id, string batch, string clas, string section, string stream, string subject, string paper, string edate, string stime, string etime)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("examsechdule_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@subject", subject);
            cmd.Parameters.AddWithValue("@paper", paper);
            cmd.Parameters.AddWithValue("@examdate", edate);
            cmd.Parameters.AddWithValue("@starttime", stime);
            cmd.Parameters.AddWithValue("@endtime", etime);
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
    public int examtimetableshowdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("examsechdule_procevent", con);
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
    public DataTable examtimetableshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM examsechdule"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "examsechdule";
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
    public int examterminsert(string batch, string stream, string clas, string eterm, string section)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("examterm_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@examterm", eterm);
            cmd.Parameters.AddWithValue("@section", section);
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
    public int examtermupdate(int id, string batch, string stream, string clas, string eterm, string section)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("examterm_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@examterm", eterm);
            cmd.Parameters.AddWithValue("@section", section);
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
    public int examtermdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("examterm_dlt_proc", con);
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
    public DataTable examtermshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM examterm"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "examterm";
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
    public int addmarkinsert(string batch, string stream, string eterm,string clas, string section,string subject,string sname,string roll,string omarks,string mmarks,string comment)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("addmarks_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@examterm", eterm);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@subject", subject);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@obtain_marks", omarks);
            cmd.Parameters.AddWithValue("@maximum_marks", mmarks);
            cmd.Parameters.AddWithValue("@comment", comment);
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
    public int addmarkupdate(int id, string batch, string stream, string eterm, string clas, string section, string subject, string sname, string roll, string omarks, string mmarks, string comment)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("addmarks_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@examterm", eterm);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@subject", subject);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@obtain_marks", omarks);
            cmd.Parameters.AddWithValue("@maximum_marks", mmarks);
            cmd.Parameters.AddWithValue("@comment", comment);
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
    public int addmarkdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("addmarks_dlt_proc", con);
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
    public DataTable addmarkshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM addmarks"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "addmarks";
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
