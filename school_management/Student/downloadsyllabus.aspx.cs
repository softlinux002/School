using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Student_downloadsyllabus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            classddl();
            batch();

        }

    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("complaint_dlt_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    public void classddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct class_name from class_info", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
       
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }
    public void subject()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select distinct subject_name from subject_info where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        subject_ddl.DataSource = dt;
        subject_ddl.DataTextField = "subject_name";
        subject_ddl.DataBind();
        subject_ddl.Items.Insert(0, ("Select Subject"));
    }
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        subject();

    }

    public void show()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from syllabus where batch='"+Batch_dll.SelectedItem.ToString()+"' and stream='"+streamddl.SelectedItem.ToString()+"' and subject='" + subject_ddl.SelectedItem.ToString() + "' and class='"+class_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void subject_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        show();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void batch()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Batch_dll.DataSource = dt;
        Batch_dll.DataTextField = "batch";
        Batch_dll.DataValueField = "batch_id";
        Batch_dll.DataBind();
        Batch_dll.Items.Insert(0, "Select Batch");

    }
    protected void Batch_dll_SelectedIndexChanged(object sender, EventArgs e)
    {
        stream();
    }
    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct stream from studentinfo where batch='" + Batch_dll.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        streamddl.DataSource = dt;
        streamddl.DataTextField = "stream";

        streamddl.DataBind();
        streamddl.Items.Insert(0, "Select Stream ");
    }
}