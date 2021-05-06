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

public partial class Admin_Cupboardself : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cupboard();
            gridshow();
            blank();
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

        con.Open();
       
        SqlCommand cmd1 = new SqlCommand("cupboardself_proc", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@action", "exist");
        cmd1.Parameters.AddWithValue("@pk_id", "");
        cmd1.Parameters.AddWithValue("@name", Text_name.Text);
        cmd1.Parameters.AddWithValue("@cupboard", "");
        cmd1.Parameters.AddWithValue("@capacity","");
        cmd1.Parameters.AddWithValue("@detail", "");
        cmd1.ExecuteNonQuery();
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Already Exist!!!!');", true);
            blank();
            dr.Close();
        }
        else
        {
            dr.Close();
            SqlCommand cmd = new SqlCommand("cupboardself_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@name", Text_name.Text);
            cmd.Parameters.AddWithValue("@cupboard", cupboard_ddl.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@capacity", Text_cpacity.Text);
            cmd.Parameters.AddWithValue("@detail", Text_detail.Text);
            cmd.ExecuteNonQuery();
            gridshow();
            blank();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submit!!!!');", true);
         
        }
        con.Close();

    }
    public void blank()
    {
        Text_name.Text = "";
        Text_detail.Text = "";
        Text_cpacity.Text = "";
        cupboard_ddl.SelectedValue = null;
    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("cupboardself_event_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");

        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("cupboardself_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_name.Text = dr["name"].ToString();
            a = dr["cupboard"].ToString();
            Text_cpacity.Text = dr["capacity"].ToString();
            Text_detail.Text = dr["detail"].ToString();
            dr.Close();
            cupboard();
            cupboard_ddl.Items.Insert(0, a);

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
        SqlCommand cmd = new SqlCommand("cupboardself_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@name", Text_name.Text);
        cmd.Parameters.AddWithValue("@cupboard", cupboard_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@capacity", Text_cpacity.Text);
        cmd.Parameters.AddWithValue("@detail", Text_detail.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        blank();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
        submit_btn.Visible = true;
        upd_btn.Visible = false;
        clear_btn.Visible = false;
        con.Close();
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("cupboardself_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        con.Close();
        clear_btn.Visible = false;
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void cupboard()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from create_cupboard", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        cupboard_ddl.DataSource = dt;
        cupboard_ddl.DataValueField = "pk_id";
        cupboard_ddl.DataTextField = "name";
        cupboard_ddl.DataBind();
        cupboard_ddl.Items.Insert(0, "Select Cupboard");
    }
}