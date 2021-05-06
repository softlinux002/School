using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Library_Return_book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //batch();

        }
    }
    public void show()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from issue_book where isbn_no='" + Text_isbn.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Panel2.Visible = true;
            Panel3.Visible = true;
            Text_bname.Text = dr["book_name"].ToString();
            Text_bookcategory.Text = dr["category"].ToString();
            Text_author.Text = dr["author"].ToString();
            Text_edition.Text = dr["edition"].ToString();
            Text_vendor.Text = dr["book_vendor"].ToString();
            //Text_holdername.Text = dr["student_name"].ToString();
            //Text_batch.Text = dr["batch"].ToString();
            //Text_class.Text = dr["class"].ToString();
            //Text_section.Text = dr["section"].ToString();
            //Text_stream.Text = dr["stream"].ToString();
            //Text_holdertype.Text = dr["holder_type"].ToString();
            //Text_hname.Text = dr["teacher_name"].ToString();
            //Text_roll.Text = dr["roll_no"].ToString();
           
            //Text_issuedate.Text = dr["issue_date"].ToString();
        
            dr.Close();

        }
        else
        {
            Panel3.Visible = false;
            Response.Write("<script>alert('Please Enter Correct ISBN No')</script>");
        }

        con.Close();

    }

    protected void Text_isbn_TextChanged(object sender, EventArgs e)
    {
        show();
    }

    
    public void blank()
    {
        Text_isbn.Text = "";
        Text_bname.Text = "";
        Text_bookcategory.Text = "";
        Text_author.Text = "";
        Text_edition.Text = "";
        Text_vendor.Text = "";
        DropDownList1.SelectedValue = null;
        Text_batch.Text = "";
        Text_class.Text = "";
        Text_section.Text = "";
        Text_stream.Text = "";
        //Text_studentroll.Text = "";
        Text_roll.Text = "";
        Text_holdername.Text = "";
        Text_hname.Text = "";
        Text_issuedate.Text = "";
    }
    protected void return_btn_Click(object sender, EventArgs e)
    {
       con.Open();
       if (DropDownList1.SelectedItem.ToString()== "Student")
       {
           SqlCommand cmd = new SqlCommand("insert into return_book_data values('" + Text_isbn.Text + "','" + Text_bname.Text + "','" + Text_bookcategory.Text + "','" + Text_author.Text + "','" + Text_edition.Text + "','" + Text_vendor.Text + "','" + DropDownList1.SelectedItem.ToString() + "','"+Text_cardno.Text+"','" + Text_hname.Text + "','','" + Text_batch.Text + "','" + Text_class.Text + "','" + Text_section.Text + "','" + Text_roll.Text + "','" + Text_stream.Text + "','"+Text_copy.Text+"','" + Text_issuedate.Text + "','" + Text_return.Text + "','"+noofday_txt.Text+"','"+fine_txt.Text+"')", con);
           cmd.ExecuteNonQuery();
           SqlDataAdapter da = new SqlDataAdapter("select * from add_books where isbn_no='"+Text_isbn.Text+"'", con);
           DataTable dt = new DataTable();
           da.Fill(dt);
           double current_qty=double.Parse( dt.Rows[0]["copy"].ToString());
           double qty = double.Parse(Text_copy.Text);
           double now_qty = (current_qty + qty);
           SqlCommand cmd1 = new SqlCommand("update add_books set copy='" + now_qty + "' where author='" + Text_author.Text + "' and book_name='" + Text_bname.Text + "'", con);
           cmd1.ExecuteNonQuery();
           Response.Write("<script>alert('Book Returned Successfully')</script>");
           blank();
       }
       else if(DropDownList1.SelectedItem.ToString()=="Employee")
       {

           SqlCommand cmd = new SqlCommand("insert into return_book_data values('" + Text_isbn.Text + "','" + Text_bname.Text + "','" + Text_bookcategory.Text + "','" + Text_author.Text + "','" + Text_edition.Text + "','" + Text_vendor.Text + "','" + DropDownList1.SelectedItem.ToString() + "','','" + Text_holdername.Text + "','" + Text_cardno.Text + "','','','','','','','" + Text_return.Text + "','" + noofday_txt.Text + "','" + fine_txt.Text + "')", con);
           cmd.ExecuteNonQuery();
           SqlDataAdapter da = new SqlDataAdapter("select * from add_books where isbn_no='" + Text_isbn.Text + "'", con);
           DataTable dt = new DataTable();
           da.Fill(dt);
           double current_qty = double.Parse(dt.Rows[0]["copy"].ToString());
           double qty = double.Parse(Text_copy.Text);
           double now_qty = (current_qty + qty);
           SqlCommand cmd1 = new SqlCommand("update add_books set copy='" + now_qty + "' where author='" + Text_author.Text + "' and book_name='" + Text_bname.Text + "'", con);
           cmd1.ExecuteNonQuery();
           Response.Write("<script>alert('Book Issue Successfully')</script>");
           blank();
       }

        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "Student")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from issue_book where isbn_no='" + Text_isbn.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Text_batch.Text = dr["batch"].ToString();
                Text_class.Text = dr["class"].ToString();
                Text_section.Text = dr["section"].ToString();
                Text_stream.Text = dr["stream"].ToString();
                Text_roll.Text = dr["roll_no"].ToString();
                Text_holdername.Text = dr["student_name"].ToString();
                Text_copy.Text = dr["copy"].ToString();
                Text_issuedate.Text = dr["issue_date"].ToString();
                Text_cardno.Text = dr["card_no"].ToString();
                dr.Close();
            
            }
      

        
        }
        else if (DropDownList1.SelectedItem.ToString() == "Employee")
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from issue_book where holder_type='"+DropDownList1.SelectedItem.ToString()+"' and isbn_no='" + Text_isbn.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Text_hname.Text = dr["holder_name"].ToString();
                Text_issuedate.Text = dr["issue_date"].ToString();
                Text_copy.Text = dr["copy"].ToString();
                Text_cardno.Text = dr["card_no"].ToString();
                dr.Close();

            }
        
        }
    }
    protected void Text_cardno_TextChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "Student")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from librarycard_generate where card_no='" + Text_cardno.Text + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Text_holdername.Text = dr["name"].ToString();
                dr.Close();

            }
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "Employee")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from librarycard_generate where card_no='" + Text_cardno.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Text_hname.Text = dr["name"].ToString();
                dr.Close();

            }
            cmd.ExecuteNonQuery();
            con.Close();
        
        }
    }
    protected void Text_return_TextChanged(object sender, EventArgs e)
    {
        string day1 = Convert.ToDateTime(Text_issuedate.Text).Day.ToString();
        string month1 = Convert.ToDateTime(Text_issuedate.Text).Month.ToString();
        string year1=Convert.ToDateTime(Text_issuedate.Text).Year.ToString();
        string day2 = Convert.ToDateTime(Text_return.Text).Day.ToString();
        string month2 = Convert.ToDateTime(Text_return.Text).Month.ToString();
        string year2=Convert.ToDateTime(Text_return.Text).Year.ToString();
        if (month1 == month2)
        {
            noofday_txt.Text = (Convert.ToInt32(day2) - Convert.ToInt32(day1)).ToString();
            if (Convert.ToInt32(noofday_txt.Text) < 14)
            {
                noofday_txt.Text = "0";
            }
            else
            {
                int count = DateTime.DaysInMonth(Convert.ToInt32(year1), Convert.ToInt32(month1));
                int restday = count - Convert.ToInt32(day1);
                int totalday = Convert.ToInt32(day2) + restday;
                noofday_txt.Text = (totalday - 14).ToString();
            }
        }
        else
        {
            int count = DateTime.DaysInMonth(Convert.ToInt32(year1), Convert.ToInt32(month1));
            int restday = count - Convert.ToInt32(day1);
            int totalday = Convert.ToInt32(day2) + restday;
            noofday_txt.Text = (totalday - 14).ToString();
        }
        if (Convert.ToInt32(noofday_txt.Text) > 0)
        {
            fine_txt.Text = (Convert.ToInt32(noofday_txt.Text) * 2).ToString();
        }
        else
        {
            fine_txt.Text = "0";
        }
    }
}