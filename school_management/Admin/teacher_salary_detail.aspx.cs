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

public partial class Admin_teacher_salary_detail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            classddl();
        }
    }
    

    public void classddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from teacher_info", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        name_ddl.DataSource = dt;
        name_ddl.DataTextField = "teacher_name";
        name_ddl.DataValueField = "teacher_id";
        name_ddl.DataBind();
        name_ddl.Items.Insert(0, new ListItem("Select Teacher Name", "0"));
    }
    protected void name_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from teacher_info where teacher_name='" + name_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        tid_ddl.DataSource = dt;
        tid_ddl.DataTextField = "teacher_tid";
        tid_ddl.DataValueField = "teacher_id";
        tid_ddl.DataBind();
        tid_ddl.Items.Insert(0, new ListItem("Select Teacher ID", "0"));
    }

    
    protected void text_year_TextChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from salary_tbl where teacher_name='" + name_ddl.SelectedItem.ToString() + "' and teacher_tid='" + tid_ddl.SelectedItem.ToString() + "' and month='" + month_ddl.SelectedItem.ToString() + "'and year='" + text_year.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}