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

public partial class Admin_createpage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillRole();
            FillPage();
            pageurl();
            FillGrid(); 
        }
    }
    public void FillRole()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from allempdetail", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddl_rname.DataSource = dt;
            ddl_rname.DataTextField = "designation";
            ddl_rname.DataValueField = "pk_id";
            ddl_rname.DataBind();
            ddl_rname.Items.Insert(0, "-- Select Designation  --");
        }
    }

    public void FillPage()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from Add_Menu", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddl_menuname.DataSource = dt;
            ddl_menuname.DataTextField = "Menu_name";
            ddl_menuname.DataValueField = "Menu_name";
            ddl_menuname.DataBind();
            ddl_menuname.Items.Insert(0, "-- Select Page Name  --");
        }
    }

    //public void FillURL()
    //{
    //    SqlDataAdapter da = new SqlDataAdapter("Select * from Add_Menu", con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    if (dt.Rows.Count > 0)
    //    {
    //        ddl_pageurl.DataSource = dt;
    //        ddl_pageurl.DataTextField = "Menu_url";
    //        ddl_pageurl.DataValueField = "Menu_url";
    //        ddl_pageurl.DataBind();
    //        ddl_pageurl.Items.Insert(0, "-- Select URL  --");
    //    }
    //}

    protected void btnSubmit_click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("createpage_proc", con);
        com.Parameters.AddWithValue("@action", "insert");
        com.Parameters.AddWithValue("@page_id", "");
        com.Parameters.AddWithValue("@role_id", ddl_rname.SelectedValue.ToString());
        com.Parameters.AddWithValue("@page_name", ddl_menuname.SelectedItem.ToString());
        com.Parameters.AddWithValue("@page_url", ddl_pageurl.SelectedItem.ToString());
        com.Parameters.AddWithValue("@description", txt_description.Text);
        com.Parameters.AddWithValue("@role_name", ddl_rname.SelectedItem.ToString());
        com.CommandType = CommandType.StoredProcedure;
        com.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Data submitted Successfully!!!!');", true);
        FillGrid();
        ddl_pageurl.Items.Clear();
    }

    public void FillGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("createpage_proc", con);
        da.SelectCommand.Parameters.AddWithValue("@action", "select");
        da.SelectCommand.Parameters.AddWithValue("@page_id", "");
        da.SelectCommand.Parameters.AddWithValue("@role_id", "");
        da.SelectCommand.Parameters.AddWithValue("@page_name", "");
        da.SelectCommand.Parameters.AddWithValue("@page_url", "");
        da.SelectCommand.Parameters.AddWithValue("@description", "");
        da.SelectCommand.Parameters.AddWithValue("@role_name", "");
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

    protected void upd_btn_click(object sender, EventArgs e)
    {
        btn_cancel.Visible = false;
        btnSubmit.Visible = true;
        upd_btn.Visible = false;
        con.Open();
        SqlCommand com = new SqlCommand("createpage_proc", con);
        com.Parameters.AddWithValue("@action", "update");
        com.Parameters.AddWithValue("@page_id", lbl_updateid.Text);
        com.Parameters.AddWithValue("@role_id", ddl_rname.SelectedValue.ToString());
        com.Parameters.AddWithValue("@page_name", ddl_menuname.SelectedItem.ToString());
        com.Parameters.AddWithValue("@page_url", ddl_pageurl.SelectedItem.ToString());
        com.Parameters.AddWithValue("@description", txt_description.Text);
        com.Parameters.AddWithValue("@role_name", ddl_rname.SelectedItem.ToString());
        com.CommandType = CommandType.StoredProcedure;
        com.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Data Updated Successfully!!!!');", true);
        blank();
        ddl_menuname.SelectedItem.Text = "";
        ddl_menuname.SelectedItem.Text = "--Select Page Name--";
        ddl_pageurl.Items.Clear();
    }

    protected void EditLinkButton_Click(object sender, EventArgs e)
    {
        btn_cancel.Visible = true;
        btnSubmit.Visible = false;
        upd_btn.Visible = true;
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)gvr.FindControl("Lbl_id");
        lbl_updateid.Text = l1.Text;
        con.Open();
        SqlCommand com = new SqlCommand("createpage_proc", con);
        com.Parameters.AddWithValue("@action", "select_id");
        com.Parameters.AddWithValue("@page_id", l1.Text);
        com.Parameters.AddWithValue("@role_id", "");
        com.Parameters.AddWithValue("@page_name", "");
        com.Parameters.AddWithValue("@page_url", "");
        com.Parameters.AddWithValue("@description", "");
        com.Parameters.AddWithValue("@role_name", "");
        com.CommandType = CommandType.StoredProcedure;
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            ddl_rname.SelectedValue = dr["role_id"].ToString();
            //string b = dr["page_name"].ToString();
            //ddl_pagename.Items.Insert(0, b);
            ddl_menuname.Text = dr["page_name"].ToString();
            //string c = dr["page_url"].ToString();
            //ddl_pageurl.Items.Insert(0, c);
            ddl_pageurl.Text = dr["page_url"].ToString();
            txt_description.Text = dr["description"].ToString();
            //string d = dr["role_name"].ToString();
            //ddl_rname.Items.Insert(0, d);

        }
        dr.Close();
        con.Close();
    }

    protected void DeleteLinkButton_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)gvr.FindControl("Lbl_id");
        con.Open();
        SqlCommand com = new SqlCommand("createpage_proc", con);
        com.Parameters.AddWithValue("@action", "delete");
        com.Parameters.AddWithValue("@page_id", l1.Text);
        com.Parameters.AddWithValue("@role_id", "");
        com.Parameters.AddWithValue("@page_name", "");
        com.Parameters.AddWithValue("@page_url", "");
        com.Parameters.AddWithValue("@description", "");
        com.Parameters.AddWithValue("@role_name", "");
        com.CommandType = CommandType.StoredProcedure;
        com.ExecuteNonQuery();
        con.Close();
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Data Deleted Successfully!!!!');", true);
        FillGrid();

    }


    protected void btn_cancel_click(object sender, EventArgs e)
    {
        blank();
        upd_btn.Visible = false;
        btn_cancel.Visible = false;
        btnSubmit.Visible = true;
        ddl_menuname.SelectedItem.Text = "";

        ddl_menuname.SelectedItem.Text = "--Select Page Name--";
        ddl_pageurl.Items.Clear();
    }

    public void blank()
    {
        ddl_pageurl.SelectedIndex = 0;
        ddl_rname.SelectedIndex = 0;
        ddl_menuname.SelectedIndex = 0;
        txt_description.Text = "";
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        FillGrid();
    }
    
   
    public void pageurl()
    {

        SqlDataAdapter da = new SqlDataAdapter("Select * from Add_Menu", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_pageurl.DataSource = dt;
        ddl_pageurl.DataTextField = "Menu_url";
        ddl_pageurl.DataValueField = "Menu_id";
        ddl_pageurl.DataBind();
        ddl_pageurl.Items.Insert(0, "Select Pageurl");
    }
}