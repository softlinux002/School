using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Web.Script.Serialization;
using System.ServiceModel.Web;
/// <summary>
/// Summary description for batchservice
/// </summary>
[WebService(Namespace = "http://schoolmgmt.sswtechnology.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class batchservice : System.Web.Services.WebService {

    public batchservice () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

   

    [WebMethod]
    public int insert(string batchname)
        {
            try
            {
                int ret = 0;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
                SqlCommand cmd = new SqlCommand("batch_proc", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "insert");
                cmd.Parameters.AddWithValue("@batch_id", "");
                cmd.Parameters.AddWithValue("@batch", batchname);
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
            SqlCommand cmd = new SqlCommand("batch_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "update");
            cmd.Parameters.AddWithValue("@batch_id", id);
            cmd.Parameters.AddWithValue("@batch", name);
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
            SqlCommand cmd = new SqlCommand("batch_dlt_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@batch_id", id);
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM batch_tbl"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "batch_tbl";
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
    public int bookinsert(string bookname,string bcat,string btitle,string ISBN,string author,string cupboard,string cupself,string edition,string publisher,string bookcost,string vendor,string copy,string remark,string asn)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_book_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@book_id", "");
            cmd.Parameters.AddWithValue("@book_name", bookname);
            cmd.Parameters.AddWithValue("@book_category", bcat);
            cmd.Parameters.AddWithValue("@subtitle", btitle);
            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 445432;
            ISBN = "45" + j + "12";
            cmd.Parameters.AddWithValue("@isbn_no", ISBN);
            cmd.Parameters.AddWithValue("@author", author);
            cmd.Parameters.AddWithValue("@cupboard", cupboard);
            cmd.Parameters.AddWithValue("@cupboard_self", cupself);
            cmd.Parameters.AddWithValue("@edition", edition);
            cmd.Parameters.AddWithValue("@publisher", publisher);
            cmd.Parameters.AddWithValue("@book_cost", bookcost);
            cmd.Parameters.AddWithValue("@book_vendor", vendor);
            cmd.Parameters.AddWithValue("@copy", copy);
            cmd.Parameters.AddWithValue("@Remarks", remark);
            cmd.Parameters.AddWithValue("@ASN_no", asn);
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
    public int bookupdate(int id, string bookname, string bcat, string btitle, string ISBN, string author, string cupboard, string cupself, string edition, string publisher, string bookcost, string vendor, string copy, string remark, string asn)
    {
        try
        {
        int ret = 0;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
        SqlCommand cmd = new SqlCommand("add_book_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@book_id", id);
        cmd.Parameters.AddWithValue("@book_name", bookname);
        cmd.Parameters.AddWithValue("@book_category", bcat);
        cmd.Parameters.AddWithValue("@subtitle", btitle);
        cmd.Parameters.AddWithValue("@isbn_no", ISBN);
        cmd.Parameters.AddWithValue("@author", author);
        cmd.Parameters.AddWithValue("@cupboard", cupboard);
        cmd.Parameters.AddWithValue("@cupboard_self", cupself);
        cmd.Parameters.AddWithValue("@edition", edition);
        cmd.Parameters.AddWithValue("@publisher", publisher);
        cmd.Parameters.AddWithValue("@book_cost", bookcost);
        cmd.Parameters.AddWithValue("@book_vendor", vendor);
        cmd.Parameters.AddWithValue("@copy", copy);
        cmd.Parameters.AddWithValue("@Remarks", remark);
        cmd.Parameters.AddWithValue("@ASN_no", asn);
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
    public int bookdelete(int id)
    {
        try
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
            SqlCommand cmd = new SqlCommand("add_books_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "delete");
            cmd.Parameters.AddWithValue("@book_id", id);
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
    public DataTable bookshow()
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["school"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM add_books"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "add_books";
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
