using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for addroute
/// </summary>
[WebService(Namespace = "http://schoolmgmt.sswtechnology.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class addroute : System.Web.Services.WebService {

    public addroute () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int insert(string routename)
        {
            try
            {
                int ret = 0;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
                SqlCommand cmd = new SqlCommand("add_route_proc", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "insert");
                cmd.Parameters.AddWithValue("@pk_id", "");
                cmd.Parameters.AddWithValue("@route_name", routename);
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
    public int update(int id, string name)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_route_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@route_name", name);
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
            SqlCommand cmd = new SqlCommand("add_route_procevent", con);
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM add_route"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "add_route";
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
    public int fareinsert(string routename,string both,string one)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_fare_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@route_name", routename);
            cmd.Parameters.AddWithValue("@Both_way_fare", both);
            cmd.Parameters.AddWithValue("@one_way_fare", one);
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
    public int fareupdate(int id, string routename, string both, string one)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_fare_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@route_name", routename);
            cmd.Parameters.AddWithValue("@Both_way_fare", both);
            cmd.Parameters.AddWithValue("@one_way_fare", one);
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
    public int faredelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_fare_procevent", con);
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
    public DataTable fareshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM add_fare"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "add_fare";
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
    public int stationinsert(string routename, string stationpoint)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_station_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@route_name", routename);
            cmd.Parameters.AddWithValue("@station_point", stationpoint);
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
    public int stationupdate(int id, string routename, string stationpoint)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_station_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@route_name", routename);
            cmd.Parameters.AddWithValue("@station_point", stationpoint);
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
    public int stationdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_station_procevent", con);
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
    public DataTable stationshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM add_station"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "add_station";
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
    public int businsert(string busno, string busreg,string drivername,string drivercontact,string seat,string model,string route)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_busdetail_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@school_bus_no", busno);
            cmd.Parameters.AddWithValue("@bus_regd_no", busreg);
            cmd.Parameters.AddWithValue("@driver_name", drivername);
            cmd.Parameters.AddWithValue("@driver_contact_no", drivercontact);
            cmd.Parameters.AddWithValue("@seat_capacity", seat);
            cmd.Parameters.AddWithValue("@model", model);
            cmd.Parameters.AddWithValue("@select_route", route);
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
    public int busdetailupdate(int id,string busno, string busreg,string drivername,string drivercontact,string seat,string model,string route)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_busdetail_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@school_bus_no", busno);
            cmd.Parameters.AddWithValue("@bus_regd_no", busreg);
            cmd.Parameters.AddWithValue("@driver_name", drivername);
            cmd.Parameters.AddWithValue("@driver_contact_no", drivercontact);
            cmd.Parameters.AddWithValue("@seat_capacity", seat);
            cmd.Parameters.AddWithValue("@model", model);
            cmd.Parameters.AddWithValue("@select_route", route);
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
    public int busdetaildelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_busdetail_procevent", con);
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
    public DataTable busdetailshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM add_busdetail"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "add_busdetail";
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
    public int bustiminginsert(string rname, string sname, string busno, string pickuptime, string droptime)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("bus_timing_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@route_name", rname);
            cmd.Parameters.AddWithValue("@station_name", sname);
            cmd.Parameters.AddWithValue("@bus_no", busno);
            cmd.Parameters.AddWithValue("@Pickup_time", pickuptime);
            cmd.Parameters.AddWithValue("@drop_time", droptime);
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
    public int bustimingupdate(int id, string rname, string sname, string busno, string pickuptime, string droptime)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("bus_timing_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@route_name", rname);
            cmd.Parameters.AddWithValue("@station_name", sname);
            cmd.Parameters.AddWithValue("@bus_no", busno);
            cmd.Parameters.AddWithValue("@Pickup_time", pickuptime);
            cmd.Parameters.AddWithValue("@drop_time", droptime);
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
    public int bustimingdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("bus_timing_procevent", con);
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
    public DataTable bustimingshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM bus_timing"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "bus_timing";
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
    public int allocatebusinsert(string batch, string clas, string section, string stream, string roll,string sname,string route,string station,string busno,string wayside,string fee,string pay,string remain)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("allocatestationstudent_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@route", route);
            cmd.Parameters.AddWithValue("@station", station);
            cmd.Parameters.AddWithValue("@bus_no", busno);
            cmd.Parameters.AddWithValue("@way_side", wayside);
            cmd.Parameters.AddWithValue("@fee", fee);
            cmd.Parameters.Add("@pay_fee", "0");
            cmd.Parameters.AddWithValue("@remaining", remain);
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
    public int allocatebusupdate(int id, string batch, string clas, string section, string stream, string roll, string sname, string route, string station, string busno, string wayside, string fee, string pay,string remain)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("allocatestationstudent_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@pk_id", id);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@class", clas);
            cmd.Parameters.AddWithValue("@section", section);
            cmd.Parameters.AddWithValue("@stream", stream);
            cmd.Parameters.AddWithValue("@roll_no", roll);
            cmd.Parameters.AddWithValue("@student_name", sname);
            cmd.Parameters.AddWithValue("@route", route);
            cmd.Parameters.AddWithValue("@station", station);
            cmd.Parameters.AddWithValue("@bus_no", busno);
            cmd.Parameters.AddWithValue("@way_side", wayside);
            cmd.Parameters.AddWithValue("@fee", fee);
            cmd.Parameters.Add("@pay_fee", "");
            cmd.Parameters.AddWithValue("@remaining", "");
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
    public int allocatebusdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("allocatestationstudent_event_proc", con);
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
    public DataTable allocatebusshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM allocatestationstudent"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "allocatestationstudent";
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
