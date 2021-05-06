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
public partial class Student_Searchgraphicalmarks : System.Web.UI.Page
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
    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        term();
        SqlDataAdapter da = new SqlDataAdapter("select distinct roll_no from addmarks where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and batch='" + Batch_dll.SelectedItem.ToString() + "' and stream='" + streamddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        roll_ddl.DataSource = dt;
        roll_ddl.DataTextField = "roll_no";
        roll_ddl.DataBind();
        roll_ddl.Items.Insert(0, new ListItem("Select Roll No.", "0"));
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
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct section_name from section where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";

        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }
    public void term()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct examterm from examterm where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        examterm_ddl.DataSource = dt;
        examterm_ddl.DataTextField = "examterm";
        examterm_ddl.DataBind();
        examterm_ddl.Items.Insert(0, "Select Exam Term");
    }
    protected void link_click(object sender, EventArgs e)
    {
        export_excel.Visible = true;
        Panel1.Visible = true;
        subject();
    }
    public void subject()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from addmarks where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and roll_no='" + roll_ddl.SelectedItem.ToString() + "' and examterm='" + examterm_ddl.SelectedItem.ToString() + "' and batch='" + Batch_dll.SelectedItem.ToString() + "' and stream='" + streamddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        //GridView1.DataSource = dt;
        //GridView1.DataBind();
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
        streamddl.Items.Insert(0, "Select stream");
    }
    protected void export_excel_Click(object sender, EventArgs e)
    {


    }
    protected void examterm_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

        bind();

    }

    public void bind()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from addmarks where batch='" + Batch_dll.SelectedItem.ToString() + "' and stream='" + streamddl.SelectedItem.ToString() + "'and class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'and roll_no='" + roll_ddl.SelectedItem.ToString() + "'and examterm='" + examterm_ddl.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            dt = ds.Tables[0];
            string category = "";
            decimal[] values = new decimal[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                category = category + "," + dt.Rows[i]["subject"].ToString();
                values[i] = Convert.ToDecimal(dt.Rows[i]["obtain_marks"]);

            }
            BarChart1.CategoriesAxis = category.Remove(0, 1);
            BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = values, BarColor = "#2fd1f9", Name = "Marks" });

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Answer Not Exist!!!!');", true);
          
        }

    }
}