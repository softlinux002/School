using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_createpriviledge : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
            useremail();
            FillRole();
        }
    }
   

    public void FillRole()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tbl_Role", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddl_Rolename.DataSource = dt;
            ddl_Rolename.DataTextField = "Role_name";
            ddl_Rolename.DataValueField = "Role_id";
            ddl_Rolename.DataBind();
            ddl_Rolename.Items.Insert(0, "-- Select Role --");
        }

    }

    protected void btn_submit_click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("Proc_AllowPriviledge", con);
        com.Parameters.AddWithValue("@action", "insert");
        com.Parameters.AddWithValue("@pk_id", "");
        com.Parameters.AddWithValue("@role_id", ddl_useremail.SelectedValue.ToString());
        com.Parameters.AddWithValue("@role_name", ddl_useremail.SelectedItem.ToString());
        com.Parameters.AddWithValue("@user_id", ddl_username.SelectedValue.ToString());
        com.Parameters.AddWithValue("@UserName", ddl_username.SelectedItem.ToString());
        com.Parameters.AddWithValue("@page_id", Label2.Text);
        com.CommandType = CommandType.StoredProcedure;
        com.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Data submitted Successfully!!!!');", true);
        FillGrid();
    }

    public void FillGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("Proc_AllowPriviledge", con);
        da.SelectCommand.Parameters.AddWithValue("@action", "select");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@role_id", "");
        da.SelectCommand.Parameters.AddWithValue("@role_name", "");
        da.SelectCommand.Parameters.AddWithValue("@user_id", "");
        da.SelectCommand.Parameters.AddWithValue("@UserName", "");
        da.SelectCommand.Parameters.AddWithValue("@page_id", "");
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

    protected void btn_update_click(object sender, EventArgs e)
    {
        btn_cancel.Visible = false;
        btn_submit.Visible = true;
        btn_update.Visible = false;
        con.Open();
        SqlCommand com = new SqlCommand("Proc_AllowPriviledge", con);
        com.Parameters.AddWithValue("@action", "update");
        com.Parameters.AddWithValue("@pk_id", lbl_updateid.Text);
        com.Parameters.AddWithValue("@role_id", ddl_Rolename.SelectedValue.ToString());
        com.Parameters.AddWithValue("@role_name", ddl_Rolename.SelectedItem.ToString());
        com.Parameters.AddWithValue("@user_id", ddl_useremail.SelectedValue.ToString());
        com.Parameters.AddWithValue("@UserName", ddl_useremail.SelectedItem.ToString());
        com.Parameters.AddWithValue("@page_id", Label2.Text);
        com.CommandType = CommandType.StoredProcedure;
        com.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Data Updated Successfully!!!!');", true);
        FillGrid();
        blank();
    }


    protected void btn_Cancel_Click(object sender, EventArgs e)
    {
        btn_cancel.Visible = false;
        btn_submit.Visible = true;
        btn_update.Visible = false;
        blank();

    }


    protected void btn_edit_click(object sender, EventArgs e)
    {
        btn_cancel.Visible = true;
        btn_submit.Visible = false;
        btn_update.Visible = true;
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)gvr.FindControl("Lbl_id");
        lbl_updateid.Text = l1.Text;
        con.Open();
        SqlCommand com = new SqlCommand("Proc_AllowPriviledge", con);
        com.Parameters.AddWithValue("@action", "select_id");
        com.Parameters.AddWithValue("@pk_id", l1.Text);
        com.Parameters.AddWithValue("@role_id", "");
        com.Parameters.AddWithValue("@role_name", "");
        com.Parameters.AddWithValue("@user_id", "");
        com.Parameters.AddWithValue("@UserName", "");
        com.Parameters.AddWithValue("@page_id", "");
        com.CommandType = CommandType.StoredProcedure;
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            ddl_Rolename.SelectedValue = dr["role_id"].ToString();
            ddl_useremail.SelectedValue = dr["user_id"].ToString();
        }
        dr.Close();
        con.Close();
    }

    protected void btn_delete_click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)gvr.FindControl("Lbl_id");
        con.Open();
        SqlCommand com = new SqlCommand("Proc_AllowPriviledge", con);
        com.Parameters.AddWithValue("@action", "delete");
        com.Parameters.AddWithValue("@pk_id", l1.Text);
        com.Parameters.AddWithValue("@role_id", "");
        com.Parameters.AddWithValue("@role_name", "");
        com.Parameters.AddWithValue("@user_id", "");
        com.Parameters.AddWithValue("@UserName", "");
        com.Parameters.AddWithValue("@page_id", "");
        com.CommandType = CommandType.StoredProcedure;
        com.ExecuteNonQuery();
        con.Close();
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Data Deleted Successfully!!!!');", true);
        FillGrid();
    }

    protected void ddl_Rolename_indexchanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("select * from allow_page where role_name= '" + ddl_Rolename.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr["role_id"].ToString();
        }
        con.Close();
    }


    protected void btn_cancel_click(object sender, EventArgs e)
    {
        btn_update.Visible = false;
        btn_cancel.Visible = false;
        btn_submit.Visible = true;
        blank();
    }

    public void blank()
    {
        ddl_useremail.SelectedIndex = 0;
        ddl_Rolename.SelectedIndex = 0;
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        FillGrid();
    }
    public void useremail()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from allempdetail",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_useremail.DataSource = dt;
        ddl_useremail.DataTextField = "email";
        ddl_useremail.DataValueField = "pk_id";
        ddl_useremail.Items.Insert(0, "Select UserName");
    }
}