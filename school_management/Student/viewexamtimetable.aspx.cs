
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

public partial class Student_viewexamtimetable : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            examterm();
            batch();
            classddl();
            //gridshow();
        }
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
        section();
    }


    //protected void link_click(object sender, EventArgs e)
    //{
    //    Export_excel.Visible = true;
    //    con.Open();

    //    SqlCommand cmd = new SqlCommand("examsechdule_proc", con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.AddWithValue("@action", "insert");
    //    cmd.Parameters.AddWithValue("@pk_id", "");
    //    cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
    //    cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
    //    cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
    //    cmd.Parameters.AddWithValue("@stream", ddl_stream.SelectedItem.ToString());
    //    cmd.Parameters.AddWithValue("@subject", ddl_subject.SelectedItem.ToString());
    //    cmd.Parameters.AddWithValue("@paper", examterm_ddl.SelectedItem.ToString());
    //    cmd.Parameters.AddWithValue("@examdate", Text_date.Text);
    //    cmd.Parameters.AddWithValue("@starttime", Text_stime.Text);
    //    cmd.Parameters.AddWithValue("@endtime", Text_etime.Text);
    //    cmd.ExecuteNonQuery();
    //    Response.Write("<script>alert('Data Submitted')</script>");
    //    blank();
    //    gridshow();
    //    con.Close();

    //}
    //public void blank()
    //{
    //    Batch_dll.SelectedValue = null;
    //    class_ddl.SelectedValue = null;
    //    section_ddl.SelectedValue = null;
    //    ddl_stream.SelectedValue = null;
    //    ddl_subject.SelectedValue = null;
    //    examterm_ddl.SelectedValue = null;
    //    Text_date.Text = "";
    //    Text_stime.Text = "";
    //    Text_etime.Text = "";
    //}

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

    
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("examsechdule_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        con.Close();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct stream from studentinfo where batch='" + Batch_dll.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);

    }
    protected void export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=examtimetable.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            //To Export all pages
            GridView1.AllowPaging = false;
            this.gridshow();

            GridView1.HeaderRow.BackColor = Color.White;
            foreach (TableCell cell in GridView1.HeaderRow.Cells)
            {
                cell.BackColor = GridView1.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in GridView1.Rows)
            {
                row.BackColor = Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    if (row.RowIndex % 2 == 0)
                    {
                        cell.BackColor = GridView1.AlternatingRowStyle.BackColor;
                    }
                    else
                    {
                        cell.BackColor = GridView1.RowStyle.BackColor;
                    }
                    cell.CssClass = "textmode";
                    GridView1.Columns[11].Visible = false;
                }
            }

            GridView1.RenderControl(hw);

            //style to format numbers to string
            string style = @"<style> .textmode { mso-number-format:\@; } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();

        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }
    protected void section_ddl_SelectedIndexChanged1(object sender, EventArgs e)
    {
        streams();
    }

    protected void ddl_stream_SelectedIndexChanged(object sender, EventArgs e)
    {
        //subject();
    }
    public void examterm()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select distinct examterm from examterm", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        examterm_ddl.DataSource = dt;
        examterm_ddl.DataTextField = "examterm";
        //examterm_ddl.DataValueField = "pk_id";
        examterm_ddl.DataBind();
        examterm_ddl.Items.Insert(0, "Select Exam Term");

    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from examsechdule", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    public void section()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct section_name from section where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }
    public void streams()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct stream from studentinfo where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_stream.DataSource = dt;
        ddl_stream.DataTextField = "stream";
        //ddl_stream.DataValueField = "student_id";
        ddl_stream.DataBind();
        ddl_stream.Items.Insert(0, "Select Stream");
    }
    //public void subject()
    //{
    //    SqlDataAdapter da = new SqlDataAdapter("Select * from subject_info where class='" + class_ddl.SelectedItem.ToString() + "'and section='" + section_ddl.SelectedItem.ToString() + "'", con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    ddl_subject.DataSource = dt;
    //    ddl_subject.DataTextField = "subject_name";
    //    ddl_subject.DataValueField = "subject_id";
    //    ddl_subject.DataBind();
    //    ddl_subject.Items.Insert(0, "Select Subject");
    //}
    protected void examterm_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd=new SqlCommand("Select * from examsechdule where batch='"+Batch_dll.SelectedItem.ToString()+"'and class='"+class_ddl.SelectedItem.ToString()+"'and section='"+section_ddl.SelectedItem.ToString()+"'and stream='"+ddl_stream.SelectedItem.ToString()+"'and paper='"+examterm_ddl.SelectedItem.ToString()+"'",con);
        SqlDataAdapter da=new SqlDataAdapter(cmd);
        DataTable dt=new DataTable();
        da.Fill(dt);
        GridView1.DataSource=dt;
        GridView1.DataBind();
        con.Close();
    }
}