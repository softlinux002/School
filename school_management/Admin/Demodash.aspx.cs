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


public partial class Admin_Demodash : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
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

        else if (Session["type"].ToString() == "Demo")
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
        SqlCommand cmd = new SqlCommand("select count(*) as count from studentinfo", con);
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
            SqlCommand cmd = new SqlCommand("Select count(*) as count from issue_book", con);
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
            SqlCommand cmd = new SqlCommand("Select count(*) as count from vendor", con);
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
        SqlCommand cmd = new SqlCommand("Select sum(copy) as sum from add_books", con);
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
            SqlCommand cmd = new SqlCommand("Select count(*) as count from add_hostel", con);
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
        SqlCommand cmd = new SqlCommand("Select sum(available) as sum from hostel_room", con);
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
        SqlCommand cmd = new SqlCommand("Select count(*) as count from student_hostelinfo", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_totalstd.Text = dr["count"].ToString();
            dr.Close();
        }
        con.Close();
    }
}