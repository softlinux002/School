﻿using System;
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
public partial class Library_book_vendor : System.Web.UI.Page
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
        SqlCommand cmd1 = new SqlCommand("select * from vendor where name='" + Text_name.Text + "'and email='" + Text_email.Text + "' ", con);
        cmd1.ExecuteNonQuery();
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<script>alert('Record Already Exist')</script>");
            dr.Close();
        }
        else
        {
            dr.Close();
            SqlCommand cmd = new SqlCommand("vendor_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@name", Text_name.Text);
            cmd.Parameters.AddWithValue("@contact_no", Text_contact.Text);
            cmd.Parameters.AddWithValue("@email", Text_email.Text);
            cmd.Parameters.AddWithValue("@address", Text_address.Text);
            cmd.ExecuteNonQuery();
            gridshow();
            blank();
            Response.Write("<script>alert('Data Submit')</script>");
        }
        con.Close();

    }
    public void blank()
    {
        Text_name.Text = "";
        Text_contact.Text = "";
        Text_email.Text = "";
        Text_address.Text = "";

    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("vendor_event_proc", con);
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
        SqlCommand cmd = new SqlCommand("vendor_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_name.Text = dr["name"].ToString();
            Text_contact.Text = dr["contact_no"].ToString();
            Text_email.Text = dr["email"].ToString();
            Text_address.Text = dr["address"].ToString();
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
        SqlCommand cmd = new SqlCommand("vendor_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@name", Text_name.Text);
        cmd.Parameters.AddWithValue("@contact_no", Text_contact.Text);
        cmd.Parameters.AddWithValue("@email", Text_email.Text);
        cmd.Parameters.AddWithValue("@address", Text_address.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        blank();
        Response.Write("<script>alert('Data Updated')</script>");
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
        SqlCommand cmd = new SqlCommand("vendor_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        Response.Write("<script>alert('Data Deleted')</script>");
        con.Close();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    
}