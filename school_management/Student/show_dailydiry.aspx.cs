using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Globalization;

public partial class Student_show_dailydiry : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            classname();
            gridshow();
            batch();
        }
    }

   

    public void classname()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct class_name from class_info", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
       
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, "Select Class");
    }

    public void day()
    {
        
    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    public void studentattendance()
    {
        //SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //Repeater2.DataSource = dt;
        //Repeater2.DataBind();
        SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM dailydiary where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and date='" + date_txt.Text + "' and batch='"+Batch_dll.SelectedItem.ToString()+"' and stream='"+streamddl.SelectedItem.ToString()+"';SELECT * FROM dailydiary where batch='"+Batch_dll.SelectedItem.ToString()+"' and stream='"+streamddl.SelectedItem.ToString()+"'  and class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and date='" + date_txt.Text + "'", con);
        DataSet ds = new DataSet();
        cmd.Fill(ds);
        ds.Relations.Add(new DataRelation("nestThem", ds.Tables[0].Columns["subject_name"], ds.Tables[1].Columns["subject_name"]));

        Repeater2.DataSource = ds;
        Repeater2.DataBind();
    }

    protected void Repeater2_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        DataRowView dv = e.Item.DataItem as DataRowView;
        if (dv != null)
        {
            Repeater repSubMenu = e.Item.FindControl("Repeater3") as Repeater;
            if (repSubMenu != null)
            {
                repSubMenu.DataSource = dv.CreateChildView("nestThem");
                repSubMenu.DataBind();
            }
        }
    }
    
    
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct section_name from section where batch ='" + Batch_dll.SelectedItem.ToString() + "'  and class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, "Select Section");
        stream();
    }

    protected void submint_btn_click(object sender, EventArgs e)
    {
        
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
    
    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct stream from studentinfo", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        streamddl.DataSource = dt;
        streamddl.DataTextField = "stream";
       
        streamddl.DataBind();
        streamddl.Items.Insert(0, "Select Stream ");
    }
    protected void streamddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;

        day();
        studentattendance();
    }
}