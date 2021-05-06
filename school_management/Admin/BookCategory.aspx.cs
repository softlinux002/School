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
public partial class Admin_BookCategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            gridshow();
            blank();

        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

        con.Open();
        
        SqlCommand cmd1 = new SqlCommand("book_category_proc", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@action", "exist");
        cmd1.Parameters.AddWithValue("@pk_id", "");
        cmd1.Parameters.AddWithValue("@name", Text_name.Text);
        cmd1.ExecuteNonQuery();
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Already Exist!!!!');", true);
           
            dr.Close();
        }
        else
        {
            dr.Close();
            //SqlCommand cmd = new SqlCommand("book_category_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@pk_id", "");
            //cmd.Parameters.AddWithValue("@name", Text_name.Text);
            //cmd.ExecuteNonQuery();
            library.libservice obj = new library.libservice();
            int a = obj.bookinsert(Text_name.Text);
            if (a > 0)
            {
                gridshow();
                blank();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submit!!!!');", true);
            }
        }
        con.Close();

    }

    public void blank()
    {
        Text_name.Text = "";

    }
    public void gridshow()
    {
        library.libservice obj = new library.libservice();
        GridView1.DataSource = obj.bookshow();
        GridView1.DataBind();
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("book_category_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_name.Text = dr["name"].ToString();
        }
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        clear_btn.Visible = true;
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("book_category_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@name", Text_name.Text);
        //cmd.ExecuteNonQuery();
        library.libservice obj = new library.libservice();
        int a = obj.bookupdate(Convert.ToInt32(Label_id.Text), Text_name.Text);
        if (a > 0)
        {
            gridshow();
            blank();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!');", true);
        }
        

        submit_btn.Visible = true;
        upd_btn.Visible = false;
        con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("book_category_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        library.libservice obj = new library.libservice();
        int a = obj.bookdelete(Convert.ToInt32(Label_id.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!');", true);
        }
            con.Close();
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
}