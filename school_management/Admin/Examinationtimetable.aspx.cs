
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

public partial class Admin_Examinationtimetable : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    string pass;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            examterm();
            batch();
            classddl();
            gridshow();
        }
    }
    public void monthyear()
    {
        //MonthLabel.Text = DateTime.Now.Month.ToString();
        //YearLabel.Text = DateTime.Now.Year.ToString();
    }

    //public void studentattendance()
    //{
    //    SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    Repeater2.DataSource = dt;
    //    Repeater2.DataBind();
    //}
    
    
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

   
    protected void link_click(object sender, EventArgs e)
    {
        Export_excel.Visible = true;
        con.Open();

        //SqlCommand cmd = new SqlCommand("examsechdule_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@pk_id", "");
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", ddl_stream.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@subject", ddl_subject.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@paper", examterm_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@examdate", Text_date.Text);
        //cmd.Parameters.AddWithValue("@starttime", Text_stime.Text);
        //cmd.Parameters.AddWithValue("@endtime", Text_etime.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.examtimetableshowinsert(Batch_dll.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), ddl_stream.SelectedItem.ToString(), ddl_subject.SelectedItem.ToString(), examterm_ddl.SelectedItem.ToString(), Text_date.Text, Text_stime.Text, Text_etime.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!');", true);

            blank();
            gridshow();
        }
      
        con.Close();
    
    }
    public void blank()
    {
        Batch_dll.Items.Clear();
        class_ddl.Items.Clear();
        section_ddl.Items.Clear();
        ddl_stream.Items.Clear();
        ddl_subject.Items.Clear();
        examterm_ddl.Items.Clear();
        Text_date.Text = "";
        Text_stime.Text = "";
        Text_etime.Text = "";
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

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("examsechdule_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select_id");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        string h;
        string f;

        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            a = dr["batch"].ToString();
            b = dr["class"].ToString();
            c = dr["section"].ToString();
            d = dr["stream"].ToString();
            h = dr["subject"].ToString();
            f = dr["paper"].ToString();
            Text_date.Text = dr["examdate"].ToString();
            Text_stime.Text = dr["starttime"].ToString();
            Text_etime.Text = dr["endtime"].ToString();
            dr.Close();
            batch();
            Batch_dll.Items.Insert(0, a);
            classddl();
            class_ddl.Items.Insert(0, b);
            section();
            section_ddl.Items.Insert(0, c);
            streams();
            ddl_stream.Items.Insert(0, d);
            subject();
            ddl_subject.Items.Insert(0, h);
            examterm();
            examterm_ddl.Items.Insert(0, f);
           

        }
        Export_excel.Visible = false;
        clr_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }
    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }
    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();

        //SqlCommand cmd = new SqlCommand("examsechdule_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", ddl_stream.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@subject", ddl_subject.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@paper", examterm_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@examdate", Text_date.Text);
        //cmd.Parameters.AddWithValue("@starttime", Text_stime.Text);
        //cmd.Parameters.AddWithValue("@endtime", Text_etime.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.examtimetableshowupdate(Convert.ToInt32(Label_id.Text),Batch_dll.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), ddl_stream.SelectedItem.ToString(), ddl_subject.SelectedItem.ToString(), examterm_ddl.SelectedItem.ToString(), Text_date.Text, Text_stime.Text, Text_etime.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!');", true);
            gridshow();
            blank();
        }
        con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
        clr_btn.Visible = false;
        
        batch();
        classddl();
        section();
        stream();
        subject();
        examterm();

    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("examsechdule_procevent", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.examtimetableshowdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!');", true);
        }
       
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
        subject();
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
        classwebref.academic obj = new classwebref.academic();

        GridView1.DataSource = obj.examtimetableshow();
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
    public void subject()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select distinct subject_name from subject_info where class='" + class_ddl.SelectedItem.ToString() + "'and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_subject.DataSource = dt;
        ddl_subject.DataTextField = "subject_name";
        
        ddl_subject.DataBind();
        ddl_subject.Items.Insert(0, "Select Subject");
    }
}