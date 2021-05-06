using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.IO;

public partial class Admin_issuebook : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            shows();

        }

    }
    public void show()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from add_books where isbn_no='" + Text_isbn.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Panel3.Visible = true;
            Text_bname.Text = dr["book_name"].ToString();
            Text_bookcategory.Text = dr["book_category"].ToString();
            Text_subtitle.Text = dr["subtitle"].ToString();
            Text_author.Text = dr["author"].ToString();
            Text_cupboard.Text = dr["cupboard"].ToString();
            Text_cupboard_self.Text = dr["cupboard_self"].ToString();
            Text_edition.Text = dr["edition"].ToString();
            Text_publisher.Text = dr["publisher"].ToString();
            Text_bookcost.Text = dr["book_cost"].ToString();
            Text_vendor.Text = dr["book_vendor"].ToString();
            Text_copy.Text = "1";
            dr.Close();

        }
        else
        {
            Panel3.Visible = false;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Please Enter Correct ISBN No!!!!');", true);
            
        }

        con.Close();

    }
    protected void Text_isbn_TextChanged(object sender, EventArgs e)
    {
        show();
    }

    protected void holder_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (holder_ddl.SelectedItem.ToString() == "Student")
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            
        }
        else
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }



    }
   


    protected void bookissue_click(object sender, EventArgs e)
    {
        con.Open();
        if (holder_ddl.SelectedItem.ToString() == "Student")
        {
            //SqlCommand cmd = new SqlCommand("insert into issue_book values('" + Text_isbn.Text + "','" + Text_bname.Text + "','" + Text_bookcategory.Text + "','" + Text_subtitle.Text + "','" + Text_author.Text + "','" + Text_cupboard.Text + "','" + Text_cupboard_self.Text + "','" + Text_edition.Text + "','" + Text_publisher.Text + "','" +
            //Text_bookcost.Text + "','" + Text_vendor.Text + "','" + Text_copy.Text + "','" + holder_ddl.SelectedItem.ToString() + "','" + Text_cardno.Text + "'
            //,'" + Text_batch.Text + "','" + Text_class.Text + "','" + Text_section.Text + "','" + Text_stream.Text + "','" + Text_roll.Text+ "','" + Text_holdername.Text + "','" + Text_hname.Text + "','" + Text_issuedate.Text + "')", con);
            //cmd.ExecuteNonQuery();
            library.libservice obj = new library.libservice();
            int a = obj.issuebookinsert(Text_isbn.Text, Text_bname.Text, Text_bookcategory.Text, Text_subtitle.Text, Text_author.Text, Text_cupboard.Text,
                Text_cupboard_self.Text, Text_edition.Text, Text_publisher.Text, Text_bookcost.Text, Text_vendor.Text, Text_copy.Text, holder_ddl.SelectedItem.ToString(), Text_cardno.Text,
                Text_batch.Text, Text_class.Text, Text_section.Text, Text_stream.Text, Text_roll.Text, Text_holdername.Text, Text_hname.Text, Text_issuedate.Text);
            if (a > 0)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from add_books where isbn_no='" + Text_isbn.Text + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                double current_qty = double.Parse(dt.Rows[0]["copy"].ToString());
                double qty = double.Parse(Text_copy.Text);
                double now_qty = (current_qty - qty);

                SqlCommand cmd1 = new SqlCommand("update add_books set copy='" + now_qty + "' where author='" + Text_author.Text + "' and book_name='" + Text_bname.Text + "'", con);
                cmd1.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Book Issue Successfully!!!!');", true);
                shows();
                blank();
            }
        }
        else if (holder_ddl.SelectedItem.ToString() == "Employee")
        {
            //SqlCommand cmd = new SqlCommand("insert into issue_book values('" + Text_isbn.Text + "','" + Text_bname.Text + "','" + Text_bookcategory.Text + "'
            //,'" + Text_subtitle.Text + "','" + Text_author.Text + "','" + Text_cupboard.Text + "','" + Text_cupboard_self.Text + "','" + Text_edition.Text + "',
            //'" + Text_publisher.Text + "','" + Text_bookcost.Text + "','" + Text_vendor.Text + "','" + Text_copy.Text + "','" + holder_ddl.SelectedItem.ToString() + "',
            //'" + Text_cardno.Text + "','','','','','','','" + Text_hname.Text + "','" + Text_issuedate.Text + "')", con);
            //cmd.ExecuteNonQuery();
            library.libservice obj = new library.libservice();
            int a = obj.issuebookinserts(Text_isbn.Text, Text_bname.Text, Text_bookcategory.Text, Text_subtitle.Text, Text_author.Text, Text_cupboard.Text,
                Text_cupboard_self.Text, Text_edition.Text, Text_publisher.Text, Text_bookcost.Text, Text_vendor.Text, Text_copy.Text, holder_ddl.SelectedItem.ToString(), Text_cardno.Text,
                "", "", "", "", "", "", Text_hname.Text, Text_issuedate.Text);
            SqlDataAdapter da = new SqlDataAdapter("select * from add_books where isbn_no='" + Text_isbn.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            double current_qty = double.Parse(dt.Rows[0]["copy"].ToString());
            double qty = double.Parse(Text_copy.Text);
            double now_qty = (current_qty - qty);

            SqlCommand cmd1 = new SqlCommand("update add_books set copy='" + now_qty + "' where author='" + Text_author.Text + "' and book_name='" + Text_bname.Text + "'", con);
            cmd1.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Book Issue Successfully!!!!');", true);
            shows();
            blank();

        }
        con.Close();
    }
    public void blank()
    {
        Text_isbn.Text = "";
        Text_bname.Text = "";
        Text_bookcategory.Text = "";
        Text_subtitle.Text = "";
        Text_author.Text = "";
        Text_cupboard.Text = "";
        Text_cupboard_self.Text = "";
        Text_edition.Text = "";
        Text_publisher.Text = "";
        Text_bookcost.Text = "";
        Text_vendor.Text = "";
        Text_copy.Text = "";
        holder_ddl.SelectedValue = null;
        Text_batch.Text = "";
        Text_class.Text = "";
        Text_section.Text = "";
        Text_stream.Text = "";
        Text_roll.Text = "";
        Text_holdername.Text = "";
        Text_hname.Text = "";
        Text_issuedate.Text = "";
        Text_cardno.Text = "";
    }

    protected void Text_cardno_TextChanged(object sender, EventArgs e)
    {
        if (holder_ddl.SelectedItem.ToString() == "Student")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from librarycard_generate where card_no='" + Text_cardno.Text + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Text_holdername.Text = dr["name"].ToString();
                Text_batch.Text = dr["batch"].ToString();
                Text_section.Text = dr["section"].ToString();
                Text_class.Text = dr["class"].ToString();
                Text_stream.Text = dr["stream"].ToString();
                Text_roll.Text = dr["roll"].ToString();
                dr.Close();

            }
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else if (holder_ddl.SelectedItem.ToString() == "Employee")
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
    public void shows()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from issue_book", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
   
}