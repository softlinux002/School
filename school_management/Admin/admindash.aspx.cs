using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;
using System.Net;
using System.Net.Mail;

public partial class Admin_admindash : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        //string a = Session["type"].ToString();
        if (Session["type"].ToString() == "Librarian")
        {
            //refund();
            totalbooks();
            issuebooks();
            vendor();
            Pnl_library.Visible = true;
            Pnl_admin.Visible = false;
            Pnl_hostel.Visible = false;
        }
        else if (Session["type"].ToString() == "Hostel")
        {
            totalhostel();
            hostelstudent();
            totalrooms();
            Pnl_library.Visible = false;
            Pnl_admin.Visible = false;
            Pnl_hostel.Visible = true;
        }
        else if (Session["type"].ToString() == "Clerk")
        {
            Pnl_library.Visible = false;
            Pnl_admin.Visible = true;
            Pnl_hostel.Visible = false;
            Pnl_adminpass.Visible = false;
            Pnl_clerkpass.Visible = true;
        }
        
        else
        {
            Pnl_library.Visible = false;
            Pnl_admin.Visible = true;
            Pnl_hostel.Visible = false;
            Pnl_adminpass.Visible = true;
            Pnl_clerkpass.Visible = false;

        }
        
        if (!IsPostBack)
        {
            totalstudent();
            totalteacher();
            showallattendance();
            totalparent();
        }
    }
    public void totalstudent()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) as count from studentinfo",con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr["count"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void totalteacher()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) as count from teacher_info", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_teacher.Text = dr["Count"].ToString();
            dr.Close();
        
        }   
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void showallattendance()
    {
        con.Open();
        String sDate = DateTime.Now.ToString();
        DateTime datevalue = (Convert.ToDateTime(sDate.ToString()));

        String dy = datevalue.Day.ToString();
        String mn = datevalue.Month.ToString();
        String yy = datevalue.Year.ToString();
        string date = mn + '/' + dy + '/' + yy;
        SqlCommand cmd = new SqlCommand("select count(*) as count from dailyattandance where date='" + date + "' and status='Present'", con);
       
             SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lbl_present.Text = dr["count"].ToString();
            dr.Close();

        }
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void totalparent()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select count(*) as count from parentinfo", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_Parent.Text = dr["Count"].ToString();
            dr.Close();
        }
        con.Close();
    }

    //public void totalbooks()
    //{
    //    con.Open();
    //    {
    //        SqlCommand cmd = new SqlCommand("Select count(*) as count from add_books", con);
    //        SqlDataReader dr = cmd.ExecuteReader();
    //        if (dr.Read())
    //        {
    //            Lbl_totalbooks.Text = dr["Count"].ToString();
    //            dr.Close();
    //        }
    //    }
    //    con.Close();
    //}
    public void issuebooks()
    {
        con.Open();
        {

            SqlCommand cmd = new SqlCommand("issuebook_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "issuebook_proc");
            cmd.Parameters.AddWithValue("@pk_id", "");
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Lbl_issuebook.Text = dr["Count"].ToString();
                dr.Close();
            }
        }
        con.Close();
    }
    public void vendor()
    {
        con.Open();
        {
          
            SqlCommand cmd = new SqlCommand("vendor_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "vendors");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@name", "");
            cmd.Parameters.AddWithValue("@contact_no", "");
            cmd.Parameters.AddWithValue("@email", "");
            cmd.Parameters.AddWithValue("@address", "");
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Lbl_vendor.Text = dr["Count"].ToString();
                dr.Close();
            }
        }
        con.Close();
    
    }

    public void totalbooks()
    {
        con.Open();
        
        SqlCommand cmd = new SqlCommand("add_book_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "bookcount");
        cmd.Parameters.AddWithValue("@book_id", "");
        cmd.Parameters.AddWithValue("@book_name", "");
        cmd.Parameters.AddWithValue("@book_category", "");
        cmd.Parameters.AddWithValue("@subtitle", "");
        cmd.Parameters.AddWithValue("@isbn_no", "");
        cmd.Parameters.AddWithValue("@author", "");
        cmd.Parameters.AddWithValue("@cupboard", "");
        cmd.Parameters.AddWithValue("@cupboard_self", "");
        cmd.Parameters.AddWithValue("@edition", "");
        cmd.Parameters.AddWithValue("@publisher", "");
        cmd.Parameters.AddWithValue("@book_cost", "");
        cmd.Parameters.AddWithValue("@book_vendor", "");
        cmd.Parameters.AddWithValue("@copy", "");
        cmd.Parameters.AddWithValue("@Remarks", "");
        cmd.Parameters.AddWithValue("@ASN_no", "");
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_totalbooks.Text = dr["sum"].ToString();
            dr.Close();
        }
        con.Close();
    }
    //public void refund()
    //{
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("Select count(*) as count from return_book_data",con);
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    if (dr.Read())
    //    {
    //        Lbl_returnbook.Text = dr["count"].ToString();
    //        dr.Close();
    //    }
    //    con.Close();

    //}

    public void totalhostel()
    {
        con.Open();
        {
            //SqlCommand cmd = new SqlCommand("Select count(*) as count from add_hostel", con);
            SqlCommand cmd = new SqlCommand("add_hostel_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "hostels");
            cmd.Parameters.AddWithValue("@hostel_id", "");
            cmd.Parameters.AddWithValue("@hostel_no", "");
            cmd.Parameters.AddWithValue("@hostel_name", "");
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Lbl_hosteltotal.Text = dr["Count"].ToString();
                dr.Close();
            }
        }
        con.Close();

    }


    public void totalrooms()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("hostel_room_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "roomcount");
        cmd.Parameters.AddWithValue("@pk_id", "");
        cmd.Parameters.AddWithValue("@hostel_name", "");
        cmd.Parameters.AddWithValue("@no_of_rooms", "");
        cmd.Parameters.AddWithValue("@room_type", "");
        cmd.Parameters.AddWithValue("@seat", "");
        cmd.Parameters.AddWithValue("@available", "");
        cmd.Parameters.AddWithValue("@room_charge", "");
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_hostelroom.Text = dr["sum"].ToString();
            dr.Close();
        }
        con.Close();
    }
    public void hostelstudent()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("student_hostelinfo_proc", con);
        cmd.CommandType=CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "hostelstudent");
        cmd.Parameters.AddWithValue("@pk_id", "");
        cmd.Parameters.AddWithValue("@student_id", "");
        cmd.Parameters.AddWithValue("@student_name", "");
        cmd.Parameters.AddWithValue("@father_name", "");
        cmd.Parameters.AddWithValue("@mothername", "");
        cmd.Parameters.AddWithValue("@gender", "");
        cmd.Parameters.AddWithValue("@batch", "");
        cmd.Parameters.AddWithValue("@stream", "");
        cmd.Parameters.AddWithValue("@class", "");
        cmd.Parameters.AddWithValue("@roll_no", "");
        cmd.Parameters.AddWithValue("@date", "");
        cmd.Parameters.AddWithValue("@hostel_name", "");
        cmd.Parameters.AddWithValue("@type", "");
        cmd.Parameters.AddWithValue("@no_of_room", "");
        cmd.Parameters.AddWithValue("@available_room", "");
        cmd.Parameters.AddWithValue("@room_no", "");
        cmd.Parameters.AddWithValue("@seat", "");
        cmd.Parameters.AddWithValue("@no_of_student", "");
        cmd.Parameters.AddWithValue("@Charge", "");
        cmd.Parameters.AddWithValue("@mobile", "");
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_totalstd.Text = dr["count"].ToString();
            dr.Close();
        }
        con.Close();
    }
}