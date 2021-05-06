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


public partial class Library_Viewbookdeatil : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            book_name();

        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

        Response.Redirect("addbooks.aspx");
        

    }
    public void book_name()
    {
        con.Open();
        string id=Request.QueryString["id"].ToString();
        SqlCommand cmd1 = new SqlCommand("select * from add_books where book_id='" + id + "'", con);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if(dr1.Read())
        {

            Labl_name.Text = dr1["book_name"].ToString();
            Lbl_bookcategory.Text = dr1["book_category"].ToString();
            Lbl_stitle.Text = dr1["subtitle"].ToString();
            Lbl_isbnno.Text = dr1["isbn_no"].ToString();
            lbl_author.Text = dr1["author"].ToString();
            Lbl_cupboard.Text = dr1["cupboard"].ToString();
            Lbl_cupboardself.Text = dr1["cupboard_self"].ToString();
            Lbl_edition.Text = dr1["edition"].ToString();
            Lbl_publisher.Text = dr1["publisher"].ToString();
            Lbl_bookcost.Text = dr1["book_cost"].ToString();
            Lbl_vendor.Text = dr1["book_vendor"].ToString();
            Lbl_copy.Text = dr1["copy"].ToString();
            Lbl_remark.Text = dr1["Remarks"].ToString();
            dr1.Close();
        }

        cmd1.ExecuteNonQuery();
        con.Close();

    }

    


}