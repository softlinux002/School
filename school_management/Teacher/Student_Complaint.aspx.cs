
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

public partial class Teacher_Student_Complaint : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            classddl();
            gridshow();
            batch();
            blank();
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("complaint_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@pk_id", "");
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@Student_name", student_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@roll_no", roll_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@date", System.DateTime.Now.ToString() );
        //cmd.Parameters.AddWithValue("@complaint", Text_complaint.Text);
        //cmd.ExecuteNonQuery();
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        int a = obj.studentcomplaintinsert(Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), student_ddl.SelectedItem.ToString(), roll_ddl.SelectedItem.ToString(), System.DateTime.Now.ToString(), Text_complaint.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);
            gridshow();
            blank();
        }
            con.Close();
    }

    public void blank()
    {
        
        class_ddl.SelectedValue = "0";
        section_ddl.SelectedValue = null;
        student_ddl.SelectedValue = null;
        roll_ddl.SelectedValue = null;
        Text_complaint.Text = "";

    }

    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("complaint_dlt_proc", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        GridView1.DataSource =obj.studentcomplaint();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("complaint_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        
        string b;
        string c;
       
        string g;
        string f;
        string h;
        string i;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            
            b = dr["class"].ToString();
            c = dr["section"].ToString();
           
            g = dr["student_name"].ToString();
            f = dr["roll_no"].ToString();
            Text_complaint.Text = dr["complaint"].ToString();
            h = dr["batch"].ToString();
            i = dr["stream"].ToString();
            dr.Close();
           
            
            classddl();
            class_ddl.Items.Insert(0, b);
            section();
            section_ddl.Items.Insert(0, c);
            student_name();
            student_ddl.Items.Insert(0, g);
            roll();
            roll_ddl.Items.Insert(0, f);
            batch();
            Batch_dll.Items.Insert(0, h);
            stream();
            streamddl.Items.Insert(0, i);
        }
        export_excel.Visible = false;
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

        //SqlCommand cmd = new SqlCommand("complaint_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@Student_name", student_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@roll_no", roll_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@date", System.DateTime.Now.ToString());
        //cmd.Parameters.AddWithValue("@complaint", Text_complaint.Text);
        //cmd.ExecuteNonQuery();
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        int a = obj.studentcomplaintupdate(Convert.ToInt32(Label_id.Text),Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), student_ddl.SelectedItem.ToString(), roll_ddl.SelectedItem.ToString(), System.DateTime.Now.ToString(), Text_complaint.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);

            gridshow();
            blank();
        }
            con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("complaint_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        int a = obj.studentcomplaintdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
            con.Close();
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

    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        student_name();
    }
    public void student_name()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where class='"+class_ddl.SelectedItem.ToString()+"'and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        student_ddl.DataSource = dt;
        student_ddl.DataTextField = "student_name";
        student_ddl.DataValueField = "student_id";
        student_ddl.DataBind();
        student_ddl.Items.Insert(0, "Select Student");
    
    }
    protected void student_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        roll();
    }
    public void roll()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and student_name='" + student_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        roll_ddl.DataSource = dt;
        roll_ddl.DataTextField = "roll_no";
        roll_ddl.DataValueField = "student_id";
        roll_ddl.DataBind();
        roll_ddl.Items.Insert(0, "Select Roll No");

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
    protected void export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=studentcomplaint.xls");
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
}