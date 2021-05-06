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

public partial class Admin_studentreports : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            state();
            city();
            batch();
        }
    }
    
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("studentinfo_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@student_id", "");
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

  
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }
   
    protected void ddl_report_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_report.SelectedItem.ToString() == "Blood Group")
        {
            panel_blood.Visible = true;
            panel_state.Visible = false;
            panel_city.Visible = false;
        }
        else if (ddl_report.SelectedItem.ToString() == "State")
        {
            panel_state.Visible = true;
            panel_blood.Visible = false;
            panel_city.Visible = false;
        }
        else if (ddl_report.SelectedItem.ToString() == "City")
        {
            panel_city.Visible = true;
            panel_blood.Visible = false;
            panel_state.Visible = false;
        }
    }
    public void state()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select distinct state from studentinfo", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_state.DataSource = dt;
        ddl_state.DataTextField = "state";
        
        ddl_state.DataBind();
        ddl_state.Items.Insert(0, "Select State");
    }
    public void city()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select distinct city from studentinfo", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_city.DataSource = dt;
        ddl_city.DataTextField = "city";
        
        ddl_city.DataBind();
        ddl_city.Items.Insert(0, "Select City");
    }
   
   
    public void batch()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select distinct batch,batch_id from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        batch_ddl.DataSource = dt;
        batch_ddl.DataTextField = "batch";
        batch_ddl.DataValueField = "batch_id";
        batch_ddl.DataBind();
        batch_ddl.Items.Insert(0, "Select Batch");
    }
    public void statesearch()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from studentinfo where state='" + ddl_state.SelectedItem.ToString() + "'and batch='"+batch_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    public void bloodgroup()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from studentinfo where bloodgroup='" + blood_ddl.SelectedItem.ToString() + "' and batch='"+batch_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    public void citysearch()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from studentinfo where state='" + ddl_state.SelectedItem.ToString() + "' and batch='"+batch_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    
    protected void batch_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_report.SelectedItem.ToString() == "Blood Group")
        {
            bloodgroup();

        }
        else if (ddl_report.SelectedItem.ToString() == "State")
        {
            statesearch();
        }
        else if (ddl_report.SelectedItem.ToString() == "City")
        {
            citysearch();
        }
       
    }
}