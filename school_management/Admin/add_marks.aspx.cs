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


public partial class Admin_add_marks : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pick_examterm();
            classddl();
            gridshow();
            blank();
            batch();
        }
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("addmarks_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@pk_id", "");
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@examterm", eterm_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@subject", subject_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@student_name", student_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@roll_no", Text_rollno.Text);
        //cmd.Parameters.AddWithValue("@obtain_marks", mark_txt.Text);
        //cmd.Parameters.AddWithValue("@maximum_marks", Text_maxmarks.Text);
        //cmd.Parameters.AddWithValue("@comment", comment_txt.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.addmarkinsert(Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), eterm_ddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), subject_ddl.SelectedItem.ToString(), student_ddl.SelectedItem.ToString(), Text_rollno.Text, mark_txt.Text, Text_maxmarks.Text, comment_txt.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!');", true);
            gridshow();
            blank();
        }
     
        
        con.Close();
    }

    public void blank()
    {
        eterm_ddl.SelectedValue = "0";
        class_ddl.SelectedValue = "0";
        section_ddl.Items.Clear();
        student_ddl.Items.Clear();
        Text_rollno.Text = "";
        mark_txt.Text = "";
        Text_maxmarks.Text = "";
        comment_txt.Text = "";
        Batch_dll.Items.Clear();
        streamddl.Items.Clear();
    }

    public void gridshow()
    {
        classwebref.academic obj = new classwebref.academic();
        GridView1.DataSource = obj.addmarkshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("addmarks_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        string g;
        string h;
        string i;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            a = dr["examterm"].ToString();
            b = dr["class"].ToString();
            c = dr["section"].ToString();
            d = dr["subject"].ToString();
            g = dr["student_name"].ToString();
            h = dr["batch"].ToString();
            i = dr["stream"].ToString();
            Text_rollno.Text = dr["roll_no"].ToString();
            mark_txt.Text = dr["obtain_marks"].ToString();
            comment_txt.Text = dr["comment"].ToString();
            Text_maxmarks.Text = dr["maximum_marks"].ToString();
            dr.Close();
            pick_examterm();
            eterm_ddl.Items.Insert(0, a);
            classddl();
            class_ddl.Items.Insert(0, b);
            
            section_ddl.Items.Insert(0, c);
           
            subject_ddl.Items.Insert(0, d);
            student_ddl.Items.Insert(0, g);
           batch();
           Batch_dll.Items.Insert(0, h);
           stream();
           streamddl.Items.Insert(0, i);
           
        }
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

        //SqlCommand cmd = new SqlCommand("addmarks_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@examterm", eterm_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@subject", subject_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@student_name", student_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@roll_no",Text_rollno.Text);
        //cmd.Parameters.AddWithValue("@obtain_marks", mark_txt.Text);
        //cmd.Parameters.AddWithValue("@maximum_marks", Text_maxmarks.Text);
        //cmd.Parameters.AddWithValue("@comment", comment_txt.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.addmarkupdate(Convert.ToInt32(Label_id.Text),Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), eterm_ddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), subject_ddl.SelectedItem.ToString(), student_ddl.SelectedItem.ToString(), Text_rollno.Text, mark_txt.Text, Text_maxmarks.Text, comment_txt.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!');", true);

            gridshow();
            blank();
        }
        con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
        batch();
        
       
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("addmarks_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.addmarkdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!');", true);
        }
       
        con.Close();
    }
    public void classddl()
    {
       
        SqlDataAdapter da = new SqlDataAdapter("addmarks_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "class");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", "");
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@examterm", "");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@subject", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@obtain_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@maximum_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@comment", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";

        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }

    public void pick_examterm()
    {

        SqlDataAdapter da = new SqlDataAdapter("addmarks_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "examterm");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", "");
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@examterm", "");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@subject", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@obtain_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@maximum_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@comment", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        eterm_ddl.DataSource = dt;
        eterm_ddl.DataTextField = "examterm";

        eterm_ddl.DataBind();
        eterm_ddl.Items.Insert(0, new ListItem("Select Term", "0"));
    }

   
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlDataAdapter da = new SqlDataAdapter("addmarks_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "section");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", "");
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@examterm", "");
        da.SelectCommand.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@subject", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@obtain_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@maximum_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@comment", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";

        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }
    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        SqlDataAdapter da = new SqlDataAdapter("addmarks_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "subject");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", "");
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@examterm", "");
        da.SelectCommand.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@subject", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@obtain_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@maximum_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@comment", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        subject_ddl.DataSource = dt;
        subject_ddl.DataTextField = "subject_name";
        subject_ddl.DataValueField = "subject_id";
        subject_ddl.DataBind();
        subject_ddl.Items.Insert(0, new ListItem("Select Subject    ", "0"));


        
        SqlDataAdapter da1 = new SqlDataAdapter("addmarks_proc", con);
        da1.SelectCommand.CommandType = CommandType.StoredProcedure;
        da1.SelectCommand.Parameters.AddWithValue("@action", "student");
        da1.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da1.SelectCommand.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        da1.SelectCommand.Parameters.AddWithValue("@stream", "");
        da1.SelectCommand.Parameters.AddWithValue("@examterm", "");
        da1.SelectCommand.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        da1.SelectCommand.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        da1.SelectCommand.Parameters.AddWithValue("@subject", "");
        da1.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da1.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da1.SelectCommand.Parameters.AddWithValue("@obtain_marks", "");
        da1.SelectCommand.Parameters.AddWithValue("@maximum_marks", "");
        da1.SelectCommand.Parameters.AddWithValue("@comment", "");
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        student_ddl.DataSource = dt1;
        student_ddl.DataTextField = "student_name";
        student_ddl.DataValueField = "student_id";
        student_ddl.DataBind();
        student_ddl.Items.Insert(0, new ListItem("Select Student Name", "0"));

    }
    protected void student_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("select * from studentinfo where student_name='" + student_ddl.SelectedItem.ToString() + "'and batch='"+Batch_dll.SelectedItem.ToString()+"'",con);
        SqlCommand cmd = new SqlCommand("addmarks_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "studentinfo");
        cmd.Parameters.AddWithValue("@pk_id", "");
        cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@stream", "");
        cmd.Parameters.AddWithValue("@examterm", "");
        cmd.Parameters.AddWithValue("@class", "");
        cmd.Parameters.AddWithValue("@section", "");
        cmd.Parameters.AddWithValue("@subject", "");
        cmd.Parameters.AddWithValue("@student_name", student_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@roll_no", "");
        cmd.Parameters.AddWithValue("@obtain_marks", "");
        cmd.Parameters.AddWithValue("@maximum_marks", "");
        cmd.Parameters.AddWithValue("@comment", "");
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_rollno.Text = dr["roll_no"].ToString();
            dr.Close();
        }
        
        con.Close();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void batch()
    {

        SqlDataAdapter da = new SqlDataAdapter("addmarks_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "batch");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", "");
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@examterm", "");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@subject", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@obtain_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@maximum_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@comment", "");
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
        //SqlDataAdapter da = new SqlDataAdapter("Select Distinct stream from studentinfo where batch='" + Batch_dll.SelectedItem.ToString() + "'", con);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //streamddl.DataSource = dt;
        //streamddl.DataTextField = "stream";
        //streamddl.DataBind();

        SqlDataAdapter da = new SqlDataAdapter("addmarks_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "stream");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@examterm", "");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@subject", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@obtain_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@maximum_marks", "");
        da.SelectCommand.Parameters.AddWithValue("@comment", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        streamddl.DataSource = dt;
        streamddl.DataTextField = "stream";
        streamddl.DataBind();
    }
    protected void export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=marks.xls");
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
                    GridView1.Columns[13].Visible = false;
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
}