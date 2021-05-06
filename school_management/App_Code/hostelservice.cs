using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for hostelservice
/// </summary>
[WebService(Namespace = "http://schoolmgmt.sswtechnology.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class hostelservice : System.Web.Services.WebService {

    public hostelservice () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int insert(string hno,string hname)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_hostel_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@hostel_id", "");
            cmd.Parameters.AddWithValue("@hostel_no", hno);
            cmd.Parameters.AddWithValue("@hostel_name", hname);
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
    public int update(int id, string hno, string hname)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_hostel_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@hostel_id", id);
            cmd.Parameters.AddWithValue("@hostel_no", hno);
            cmd.Parameters.AddWithValue("@hostel_name", hname);
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
            SqlCommand cmd = new SqlCommand("add_hostel_procevent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@hostel_id", id);
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM add_hostel"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "add_hostel";
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
    public int hostelroominsert(string hname, string noofroom,string roomtype,string seat,string available,string charge)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("hostel_room_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@hostel_name", hname);
            cmd.Parameters.AddWithValue("@no_of_rooms", noofroom);
            cmd.Parameters.AddWithValue("@room_type", roomtype);
            cmd.Parameters.AddWithValue("@seat", seat);
            cmd.Parameters.AddWithValue("@available", available);
            cmd.Parameters.AddWithValue("@room_charge", charge);
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
    public int hostelroomupdate(int id, string hname, string noofroom, string roomtype, string seat, string available, string charge)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("hostel_room_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@hostel_name", hname);
            cmd.Parameters.AddWithValue("@no_of_rooms", noofroom);
            cmd.Parameters.AddWithValue("@room_type", roomtype);
            cmd.Parameters.AddWithValue("@seat", seat);
            cmd.Parameters.AddWithValue("@available", available);
            cmd.Parameters.AddWithValue("@room_charge", charge);
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
    public int hostelroomdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("hostel_room_dlt_proc", con);
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
    public DataTable hostelroomshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM hostel_room"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "hostel_room";
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
    public int studenthostelregisterinsert(string sid, string sname, string fname, string mname, string gender, string batch,string stream,string clas,string roll,string date,string hname,string type,string noofroom,string available,string roomno,string seat,string noofstudent,string charge,string mobile)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("student_hostelinfo_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@student_id", sid);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@father_name", fname);
            cmd.Parameters.AddWithValue("@mothername", mname);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@hostel_name", hname);
            cmd.Parameters.AddWithValue("@type", type);
            cmd.Parameters.AddWithValue("@no_of_room", noofroom);
            cmd.Parameters.AddWithValue("@available_room", available);
            cmd.Parameters.AddWithValue("@room_no", roomno);
            cmd.Parameters.AddWithValue("@seat", seat);
            cmd.Parameters.AddWithValue("@no_of_student", "1");
            cmd.Parameters.AddWithValue("@Charge", charge);
            cmd.Parameters.AddWithValue("@mobile", mobile);
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
    public int studenthostelregisterupdate(int id, string sid, string sname, string fname, string mname, string gender, string batch, string stream, string clas, string roll, string date, string hname, string type, string noofroom, string available, string roomno, string seat, string noofstudent, string charge, string mobile)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("student_hostelinfo_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);

            cmd.Parameters.AddWithValue("@student_id", sid);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@father_name", fname);
            cmd.Parameters.AddWithValue("@mothername", mname);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@hostel_name", hname);
            cmd.Parameters.AddWithValue("@type", type);
            cmd.Parameters.AddWithValue("@no_of_room", noofroom);
            cmd.Parameters.AddWithValue("@available_room", available);
            cmd.Parameters.AddWithValue("@room_no", roomno);
            cmd.Parameters.AddWithValue("@seat", seat);
            cmd.Parameters.AddWithValue("@no_of_student", "1");
            cmd.Parameters.AddWithValue("@Charge", charge);
            cmd.Parameters.AddWithValue("@mobile", mobile);
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
    public int studenthostelregisterdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("student_hostelinfo_procevent", con);
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
    public DataTable studenthostelregistershow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM student_hostelinfo"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "student_hostelinfo";
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
    public int payfeeinsert(string sid, string batch,string clas,string stream,string roll,string sname,string date,string hname,string type,string hfee,string amount,string remaining ,string status)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("hostel_fee_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@s_id", sid);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@date_of_pay", date);
            cmd.Parameters.AddWithValue("@Hostel_name", hname);
            cmd.Parameters.AddWithValue("@hostel_type", type);
            cmd.Parameters.AddWithValue("@hostel_fee", hfee);
            cmd.Parameters.AddWithValue("@amount_type", type);
            cmd.Parameters.AddWithValue("@amount_pay", amount);
            cmd.Parameters.AddWithValue("@remaining", remaining);
            if (Convert.ToInt32(remaining) > 0)
            {
                status = "Pending";
            }
            else
            {
                status = "Paid";
            }
            cmd.Parameters.AddWithValue("@status", status);
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
    public int payfeeupdate(int id, string sid, string batch, string clas, string stream, string roll, string sname, string date, string hname, string type, string hfee, string amount, string remaining, string status)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("hostel_fee_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@s_id", sid);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@date_of_pay", date);
            cmd.Parameters.AddWithValue("@Hostel_name", hname);
            cmd.Parameters.AddWithValue("@hostel_type", type);
            cmd.Parameters.AddWithValue("@hostel_fee", hfee);
            cmd.Parameters.AddWithValue("@amount_type", type);
            cmd.Parameters.AddWithValue("@amount_pay", amount);
            cmd.Parameters.AddWithValue("@remaining", remaining);
            if (Convert.ToInt32(remaining) > 0)
            {
                status = "Pending";
            }
            else
            {
                status = "Paid";
            }
            cmd.Parameters.AddWithValue("@status", status);
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
    public int payfeedelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("hostel_fee_event_proc", con);
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
    public DataTable payfeeshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM hostel_fee"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "hostel_fee";
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
    public int feerefundinsert(string sid, string sname, string sdate,string noofmonth,string totalamount,string amountpay,string hname,string type,string monthinhostel,string refund,string status)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("hostel_fee_refund_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@student_id", sid);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@date", sdate);
            cmd.Parameters.AddWithValue("@no_of_months", noofmonth);
            cmd.Parameters.AddWithValue("@total_amount", totalamount);
            cmd.Parameters.AddWithValue("@amount_pay", amountpay);
            cmd.Parameters.AddWithValue("@Hostel_name", hname);
            cmd.Parameters.AddWithValue("@hostel_type", type);
            cmd.Parameters.AddWithValue("@month_stay_in_hostel", monthinhostel);

            cmd.Parameters.AddWithValue("@refund_amt", refund);
            cmd.Parameters.AddWithValue("@status", "Leave");
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
    public int feerefundupdate(int id ,string sid, string sname, string sdate,string noofmonth,string totalamount,string amountpay,string hname,string type,string monthinhostel,string refund,string status)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("hostel_fee_refund_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@student_id", sid);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@date", sdate);
            cmd.Parameters.AddWithValue("@no_of_months", noofmonth);
            cmd.Parameters.AddWithValue("@total_amount", totalamount);
            cmd.Parameters.AddWithValue("@amount_pay", amountpay);
            cmd.Parameters.AddWithValue("@Hostel_name", hname);
            cmd.Parameters.AddWithValue("@hostel_type", type);
            cmd.Parameters.AddWithValue("@month_stay_in_hostel", monthinhostel);

            cmd.Parameters.AddWithValue("@refund_amt", refund);
            cmd.Parameters.AddWithValue("@status", "");
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
    public int feerefunddelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("hostel_fee_refund_event_proc", con);
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
    public DataTable feerefundshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM hostel_fee_refund"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "hostel_fee_refund";
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
