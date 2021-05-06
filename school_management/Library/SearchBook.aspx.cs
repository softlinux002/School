﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Library_SearchBook : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            batch();
            //category();

        }
    }
    public void show()
    {
        //con.Open();
        //SqlCommand cmd = new SqlCommand("select * from add_books where isbn_no='" + Text_isbn.Text + "'", con);
        //cmd.ExecuteNonQuery();
        //SqlDataReader dr = cmd.ExecuteReader();
        //if (dr.Read())
        //{
        //    Panel3.Visible = true;
        //    Text_bname.Text = dr["book_name"].ToString();
        //    Text_bookcategory.Text = dr["book_category"].ToString();
        //    Text_subtitle.Text = dr["subtitle"].ToString();
        //    Text_author.Text = dr["author"].ToString();
        //    Text_cupboard.Text = dr["cupboard"].ToString();
        //    Text_cupboard_self.Text = dr["cupboard_self"].ToString();
        //    Text_edition.Text = dr["edition"].ToString();
        //    Text_publisher.Text = dr["publisher"].ToString();
        //    Text_bookcost.Text = dr["book_cost"].ToString();
        //    Text_vendor.Text = dr["book_vendor"].ToString();
        //    Text_copy.Text = "1";
        //    dr.Close();

        //}
        //else
        //{
        //    Panel3.Visible = false;
        //    Response.Write("<script>alert('Please Enter Correct ISBN No')</script>");
        //}

        //con.Close();

    }
    protected void Text_isbn_TextChanged(object sender, EventArgs e)
    {
        show();
    }

    //protected void holder_ddl_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (holder_ddl.SelectedItem.ToString() == "Student")
    //    {
    //        Panel1.Visible = true;
    //        Panel2.Visible = false;
    //        classname();
    //    }
    //    else
    //    {
    //        Panel2.Visible = true;
    //        Panel1.Visible = false;
    //    }



    //}
    public void batch()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Batch_ddl.DataSource = dt;
        Batch_ddl.DataTextField = "batch";
        Batch_ddl.DataValueField = "batch_id";
        Batch_ddl.DataBind();
        Batch_ddl.Items.Insert(0, "Select Batch");

    }

    public void classname()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from class_info ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_dll.DataSource = dt;
        class_dll.DataTextField = "class_name";
        class_dll.DataValueField = "class_id";
        class_dll.DataBind();
        class_dll.Items.Insert(0, "Select Class");

    }
    public void section()
    {
        SqlDataAdapter da = new SqlDataAdapter("select Distinct section from studentinfo where class='" + class_dll.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        //section_ddl.DataValueField = "student_id";
        section_ddl.DataTextField = "section";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, "Select section");

    }

    protected void class_dll_SelectedIndexChanged(object sender, EventArgs e)
    {
        section();

    }
    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("select Distinct stream from studentinfo where class='" + class_dll.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        stream_dll.DataSource = dt;
        stream_dll.DataTextField = "stream";
        //stream_dll.DataValueField = "student_id";
        stream_dll.DataBind();
        stream_dll.Items.Insert(0, "Select Stream");
    }
    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        stream();
    }
    public void roll()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from studentinfo where class='" + class_dll.SelectedItem.ToString() + "'and section='" + section_ddl.SelectedItem.ToString() + "'and stream='" + stream_dll.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        roll_ddl.DataSource = dt;
        roll_ddl.DataTextField = "roll_no";
        roll_ddl.DataValueField = "student_id";
        roll_ddl.DataBind();
        roll_ddl.Items.Insert(0, "Select Roll No");
    }
    protected void stream_dll_SelectedIndexChanged(object sender, EventArgs e)
    {
        roll();
    }

    protected void roll_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from studentinfo where batch='" + Batch_ddl.SelectedItem.ToString() + "' and class='" + class_dll.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and stream='" + stream_dll.SelectedItem.ToString() + "'and roll_no='" + roll_ddl.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_holdername.Text = dr["student_name"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }

    //protected void bookissue_click(object sender, EventArgs e)
    //{
    //    con.Open();
    //    if (holder_ddl.SelectedItem.ToString() == "Student")
    //    {
    //        SqlCommand cmd = new SqlCommand("insert into issue_book values('" + Text_isbn.Text + "','" + Text_bname.Text + "','" + Text_bookcategory.Text + "','" + Text_subtitle.Text + "','" + Text_author.Text + "','" + Text_cupboard.Text + "','" + Text_cupboard_self.Text + "','" + Text_edition.Text + "','" + Text_publisher.Text + "','" + Text_bookcost.Text + "','" + Text_vendor.Text + "','" + Text_copy.Text + "','" + holder_ddl.SelectedItem.ToString() + "','" + Batch_ddl.SelectedItem.ToString() + "','" + class_dll.SelectedItem.ToString() + "','" + section_ddl.SelectedItem.ToString() + "','" + stream_dll.SelectedItem.ToString() + "','" + roll_ddl.SelectedItem.ToString() + "','" + Text_holdername.Text + "','" + Text_hname.Text + "','" + Text_issuedate.Text + "')", con);
    //        cmd.ExecuteNonQuery();

    //        SqlDataAdapter da = new SqlDataAdapter("select * from add_books where isbn_no='" + Text_isbn.Text + "'", con);
    //        DataTable dt = new DataTable();
    //        da.Fill(dt);
    //        double current_qty = double.Parse(dt.Rows[0]["copy"].ToString());
    //        double qty = double.Parse(Text_copy.Text);
    //        double now_qty = (current_qty - qty);

    //        SqlCommand cmd1 = new SqlCommand("update add_books set copy='" + now_qty + "' where author='" + Text_author.Text + "' and book_name='" + Text_bname.Text + "'", con);
    //        cmd1.ExecuteNonQuery();
    //        Response.Write("<script>alert('Book Issue Successfully')</script>");
    //        blank();
    //    }
    //    else if (holder_ddl.SelectedItem.ToString() == "Employee")
    //    {
    //        SqlCommand cmd = new SqlCommand("insert into issue_book values('" + Text_isbn.Text + "','" + Text_bname.Text + "','" + Text_bookcategory.Text + "','" + Text_subtitle.Text + "','" + Text_author.Text + "','" + Text_cupboard.Text + "','" + Text_cupboard_self.Text + "','" + Text_edition.Text + "','" + Text_publisher.Text + "','" + Text_bookcost.Text + "','" + Text_vendor.Text + "','" + Text_copy.Text + "','" + holder_ddl.SelectedItem.ToString() + "','','','','','','','" + Text_hname.Text + "','" + Text_issuedate.Text + "')", con);
    //        cmd.ExecuteNonQuery();

    //        SqlDataAdapter da = new SqlDataAdapter("select * from add_bookswhere isbn_no='" + Text_isbn.Text + "'", con);
    //        DataTable dt = new DataTable();
    //        da.Fill(dt);
    //        double current_qty = double.Parse(dt.Rows[0]["copy"].ToString());
    //        double qty = double.Parse(Text_copy.Text);
    //        double now_qty = (current_qty - qty);

    //        SqlCommand cmd1 = new SqlCommand("update add_books set copy='" + now_qty + "' where author='" + Text_author.Text + "' and book_name='" + Text_bname.Text + "'", con);
    //        cmd1.ExecuteNonQuery();
    //        Response.Write("<script>alert('Book Issue Successfully')</script>");
    //        blank();

    //    }
    //    con.Close();
    //}
    public void blank()
    {
        //Text_isbn.Text = "";
        Text_bname.Text = "";
        //Text_bookcategory.Text = "";
        Text_subtitle.Text = "";
        Text_author.Text = "";
        Text_cupboard.Text = "";
        Text_cupboard_self.Text = "";
        Text_edition.Text = "";
        Text_publisher.Text = "";
        Text_bookcost.Text = "";
        Text_vendor.Text = "";
        Text_copy.Text = "";
        //holder_ddl.SelectedValue = null;
        Batch_ddl.SelectedValue = null;
        class_dll.SelectedValue = null;
        section_ddl.SelectedValue = null;
        stream_dll.SelectedValue = null;
        roll_ddl.SelectedValue = null;
        Text_holdername.Text = null;
        Text_hname.Text = null;
    }


    //public void category()
    //{
    //    SqlDataAdapter da = new SqlDataAdapter("select * from book_category", con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    category_ddl.DataSource = dt;
    //    category_ddl.DataTextField = "name";
    //    category_ddl.DataValueField = "pk_id";
    //    category_ddl.DataBind();
    //    category_ddl.Items.Insert(0, "Select Category");
    //}
    //[System.Web.Script.Services.ScriptMethod()]
    //[System.Web.Services.WebMethod]
    //public static List<string> GetCountries(string prefixText)
    //{
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ToString());
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from add_books where book_name like @Name+'%'", con);
    //    cmd.Parameters.AddWithValue("@Name", prefixText);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    List<string> CountryNames = new List<string>();
    //    for (int i = 0; i < dt.Rows.Count; i++)
    //    {
    //        CountryNames.Add(dt.Rows[i][1].ToString());
    //    }
    //    return CountryNames;
    //}

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCountries(string prefixText)
    {

        {
            //SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["directory"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);

            con.Open();
            string QueryString = prefixText;
            string[] parts = QueryString.Split(' ');
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("select distinct book_name from add_books WHERE (");
            for (int i = 0; i < parts.Length; i++)
            {
                sb.AppendFormat("(book_name like '%{0}%')", parts[i]);

                if (i != parts.Length - 1)
                {
                    sb.Append(" AND ");
                }

            }
            sb.Append(")");
            string output = sb.ToString();
            SqlCommand cm = new SqlCommand(output, con);
            SqlDataAdapter da = new SqlDataAdapter(output, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            List<string> CountryNames = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                CountryNames.Add(dt.Rows[i]["book_name"].ToString());
            }
            return CountryNames;
            con.Close();
        }
    }
    protected void Text_bname_TextChanged(object sender, EventArgs e)
    {
         con.Open();
         SqlCommand cmd1 = new SqlCommand("Select * from add_books where book_name='" + Text_bname.Text + "'", con);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            Lbl_id.Text = dr1["book_id"].ToString();
            dr1.Close();
        }
        else
        {
            dr1.Close();
            Response.Write("<Script>alert('Please Select Book Name')</script>");


        }
        SqlCommand cmd = new SqlCommand("Select *  from add_books where book_id='" + Lbl_id.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            //Text_isbn.Text = dr["isbn_no"].ToString();
            Text_bookcategory.Text = dr["book_category"].ToString();
            Text_subtitle.Text = dr["subtitle"].ToString();
            Text_author.Text = dr["author"].ToString();
            Text_cupboard.Text = dr["cupboard"].ToString();
            Text_cupboard_self.Text = dr["cupboard_self"].ToString();
            Text_edition.Text = dr["edition"].ToString();
            Text_publisher.Text = dr["publisher"].ToString();
            Text_bookcost.Text = dr["book_cost"].ToString();
            Text_vendor.Text = dr["book_vendor"].ToString();
            Text_copy.Text = dr["copy"].ToString();
            dr.Close();
        }
      
        con.Close();
    }
}