using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Admin_add_menu : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
            blank();
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {


        con.Open();
        SqlCommand com = new SqlCommand("add_menu_proc", con);
        com.Parameters.AddWithValue("@action", "insert");
        com.Parameters.AddWithValue("@menu_id", "");
        com.Parameters.AddWithValue("@Menu_name", menu_text.Text);
        com.Parameters.AddWithValue("@menu_url", Menu_url.Text);
        com.CommandType = CommandType.StoredProcedure;
        com.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Data submitted Successfully!!!!');", true);
        FillGrid();
    }

    public void blank()
    {
        menu_text.Text = "";
        Menu_url.Text = "";
    }

    public void FillGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("add_menu_proc", con);
        da.SelectCommand.Parameters.AddWithValue("@action", "select");
        da.SelectCommand.Parameters.AddWithValue("@menu_id", "");
        da.SelectCommand.Parameters.AddWithValue("@Menu_name", menu_text.Text);
        da.SelectCommand.Parameters.AddWithValue("@menu_url", Menu_url.Text);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        blank();
    }


    protected void btn_edit_Click(object sender, EventArgs e)
    {
        clr_btn.Visible = true;
        submit_btn.Visible = false;
        upd_btn.Visible = true;
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)gvr.FindControl("Lbl_id");
        Label_id.Text = l1.Text;
        con.Open();
        SqlCommand com = new SqlCommand("add_menu_proc", con);
        com.Parameters.AddWithValue("@action", "select_id");
        com.Parameters.AddWithValue("@menu_id", l1.Text);
        com.Parameters.AddWithValue("@Menu_name", "");
        com.Parameters.AddWithValue("@menu_url", "");
        com.CommandType = CommandType.StoredProcedure;
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            menu_text.Text = dr["Menu_name"].ToString();
            Menu_url.Text = dr["menu_url"].ToString();
        }
        dr.Close();
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        clr_btn.Visible = false;
        submit_btn.Visible = true;
        upd_btn.Visible = false;
        con.Open();
        SqlCommand com = new SqlCommand("add_menu_proc", con);
        com.Parameters.AddWithValue("@action", "update");
        com.Parameters.AddWithValue("@menu_id", Label_id.Text);
        com.Parameters.AddWithValue("@Menu_name", menu_text.Text);
        com.Parameters.AddWithValue("@menu_url", Menu_url.Text);
        com.CommandType = CommandType.StoredProcedure;
        com.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Data Updated Successfully!!!!');", true);
        FillGrid();
        blank();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)gvr.FindControl("Lbl_id");
        con.Open();
        SqlCommand com = new SqlCommand("add_menu_proc", con);
        com.Parameters.AddWithValue("@action", "delete");
        com.Parameters.AddWithValue("@menu_id", l1.Text);
        com.Parameters.AddWithValue("@Menu_name", menu_text.Text);
        com.Parameters.AddWithValue("@menu_url", Menu_url.Text);
        com.CommandType = CommandType.StoredProcedure;
        com.ExecuteNonQuery();
        con.Close();
        FillGrid();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Deleted Successfully!!!!');", true);
       
    }
   

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        FillGrid();
    }
}