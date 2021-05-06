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

public partial class Student_show_lectureplan : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            batchddl();
        }
    }

    public void batchddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        batch_ddl.DataSource = dt;
        batch_ddl.DataTextField = "batch";
        batch_ddl.DataValueField = "batch_id";
        batch_ddl.DataBind();
        batch_ddl.Items.Insert(0, new ListItem("Select Batch", "0"));
    }

    protected void batch_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        classddl();
        streamddl();
    }

    public void classddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from class_info where batch='" + batch_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
        class_ddl.DataValueField = "class_id";
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }

    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        sectionddl();
    }

    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        subjectddl();
    }

    public void sectionddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from section where batch='" + batch_ddl.SelectedItem.ToString() + "' and class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
        section_ddl.DataValueField = "section_id";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }

    public void subjectddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from subject_info where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        subject_ddl.DataSource = dt;
        subject_ddl.DataTextField = "subject_name";
        subject_ddl.DataValueField = "subject_id";
        subject_ddl.DataBind();
        subject_ddl.Items.Insert(0, new ListItem("Select Subject", "0"));
    }

    public void streamddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct stream from studentinfo where batch='" + batch_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        stream_ddl.DataSource = dt;
        stream_ddl.DataTextField = "stream";
        stream_ddl.DataBind();
        stream_ddl.Items.Insert(0, new ListItem("Select Stream", "0"));
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        gridshow();
        GridView1.Visible = true;
    }

    public void blank()
    {
        batch_ddl.SelectedValue = null;
        stream_ddl.SelectedValue = null;
        class_ddl.SelectedValue = null;
        section_ddl.SelectedValue = null;
        subject_ddl.SelectedValue = null;
    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from lectureplan where batch='"+batch_ddl.SelectedItem.ToString()+"' and stream='"+stream_ddl.SelectedItem.ToString()+"' and class='"+class_ddl.SelectedItem.ToString()+"' and section='"+section_ddl.SelectedItem.ToString()+"' and subject='"+subject_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
}