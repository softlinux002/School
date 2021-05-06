using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_createrole : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();
            
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {


        con.Open();
        SqlCommand com = new SqlCommand("add_Role_proc", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@action", "insert");
        com.Parameters.AddWithValue("@role_id", "");
        com.Parameters.AddWithValue("@role_name", Tb_rname.Text);
        com.ExecuteNonQuery();
        show();
        blank();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Role name are Submitted Sucessfully !!!!');", true);
    }

    public void blank()
    {
        Tb_rname.Text = "";
    }

    public void show()
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("add_Role_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@Action", "select");
        da.SelectCommand.Parameters.AddWithValue("@role_id", "");
        da.SelectCommand.Parameters.AddWithValue("@role_name", "");
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


    protected void btn_edit_Click(object sender, EventArgs e)
    {
        clr_btn.Visible = true;
        LinkButton lnk = (LinkButton)sender;
        GridViewRow grid = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)grid.FindControl("Lbl_id");
        con.Open();
        string a;
        SqlCommand com = new SqlCommand("add_Role_proc", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@action", "select_id");
        com.Parameters.AddWithValue("@role_id", l1.Text);
        com.Parameters.AddWithValue("@role_name", "");
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Label_id.Text = l1.Text;
            Tb_rname.Text = dr["role_name"].ToString();
            dr.Close();
            com.ExecuteNonQuery();
            con.Close();
            show();
            submit_btn.Visible = false;
            upd_btn.Visible = true;
        }
        else
        {
            dr.Close();
            com.ExecuteNonQuery();
            con.Close();
            show();
            submit_btn.Visible = false;
            upd_btn.Visible = true;
        }
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        clr_btn.Visible = false;
        submit_btn.Visible = true;
        upd_btn.Visible = false;
        blank();
    }
    

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("add_Role_proc", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@action", "update");
        com.Parameters.AddWithValue("@role_id", Label_id.Text);
        com.Parameters.AddWithValue("@role_name", Tb_rname.Text);
        com.ExecuteNonQuery();
        con.Close();
        blank();
        show();
        submit_btn.Visible = true;
        upd_btn.Visible = false;
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Role name Updated Sucessfully !!!!');", true);
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow grid = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)grid.FindControl("Lbl_id");
        con.Open();
        SqlCommand com = new SqlCommand("add_Role_proc", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@action", "delete");
        com.Parameters.AddWithValue("@role_id", l1.Text);
        com.Parameters.AddWithValue("@role_name", "");
        com.ExecuteNonQuery();
        con.Close();
        Response.Write("<Script>alert('Record Deleted Successfully')</Script>");
        show();

    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        show();
    }
}