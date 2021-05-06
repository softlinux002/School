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

public partial class Admin_add_subject : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
            blank();
            classdetail();
            teacher();
        }
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand com = new SqlCommand("select * from subject_info where subject_name='" + subject_txt.Text + "' and class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_dll.SelectedItem.ToString() + "'", con);
        SqlCommand com = new SqlCommand("subject_proc",con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@action", "Subject");
        com.Parameters.AddWithValue("@subject_id", "");
        com.Parameters.AddWithValue("@subject_name", subject_txt.Text);
        com.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        com.Parameters.AddWithValue("@section", section_dll.SelectedItem.ToString());
        com.Parameters.AddWithValue("@teacher", "");
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Exist Already!!!!');", true);
            dr.Close();
            blank();
        }
        else
        {
            dr.Close();
            //SqlCommand cmd = new SqlCommand("subject_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@subject_id", "");
            //cmd.Parameters.AddWithValue("@subject_name", subject_txt.Text);
            //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@section", section_dll.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@teacher", teacher_ddl.SelectedItem.ToString());
            //cmd.ExecuteNonQuery();
            classwebref.academic obj = new classwebref.academic();
            int a = obj.addsubjectinsert(subject_txt.Text, class_ddl.SelectedItem.ToString(), section_dll.SelectedItem.ToString(), teacher_ddl.SelectedItem.ToString());
            if (a > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);
                gridshow();
                blank();
            }
           
        }
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {
        subject_txt.Text = "";
        class_ddl.Items.Clear();
        section_dll.Items.Clear();
        teacher_ddl.Items.Clear();
    }

    public void gridshow()
    {
        classwebref.academic obj = new classwebref.academic();
        GridView1.DataSource = obj.addsubjectshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("subject_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@subject_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        if (dr.Read())
        {
            Label_id.Text = dr["subject_id"].ToString();
            subject_txt.Text = dr["subject_name"].ToString();
            a = dr["class"].ToString();
            b = dr["section"].ToString();
            c = dr["teacher"].ToString();
            dr.Close();
            classdetail();
            class_ddl.Items.Insert(0, a);
            section();
            section_dll.Items.Insert(0, b);
            teacher();
            teacher_ddl.Items.Insert(0, c);
        }
        clr_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("subject_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@subject_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@subject_name", subject_txt.Text);
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@teacher", teacher_ddl.SelectedItem.ToString());
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.addsubjectupdate(Convert.ToInt32(Label_id.Text), subject_txt.Text, class_ddl.SelectedItem.ToString(), section_dll.SelectedItem.ToString(), teacher_ddl.SelectedItem.ToString());
        if (a > 0)
        { 
          ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!');", true);
        gridshow();
        blank();
        }
      
        con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
        classdetail();
        section();
        teacher();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        classwebref.academic obj = new classwebref.academic();
        int a = obj.addsubjectdelete(Convert.ToInt32(l1.Text));
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Delete!!');", true);
        }
     
        con.Close();
    }
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        section();
    }
    public void classdetail()
    {
        //SqlDataAdapter da = new SqlDataAdapter("select distinct class_name from class_info", con);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //class_ddl.DataSource = dt;
        //class_ddl.DataTextField = "class_name";
      
        //class_ddl.DataBind();
        //class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));

        SqlDataAdapter da = new SqlDataAdapter("subject_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "class");
        da.SelectCommand.Parameters.AddWithValue("@subject_id", "");
        da.SelectCommand.Parameters.AddWithValue("@subject_name","");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@teacher", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";

        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }
    public void section()
    {
        //SqlDataAdapter da = new SqlDataAdapter("select distinct section_name from section where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //section_dll.DataSource = dt;
        //section_dll.DataTextField = "section_name";
      
        //section_dll.DataBind();
        //section_dll.Items.Insert(0, new ListItem("Select Section", "0"));

        SqlDataAdapter da = new SqlDataAdapter("subject_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "section");
        da.SelectCommand.Parameters.AddWithValue("@subject_id", "");
        da.SelectCommand.Parameters.AddWithValue("@subject_name", "");
        da.SelectCommand.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@teacher", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_dll.DataSource = dt;
        section_dll.DataTextField = "section_name";

        section_dll.DataBind();
        section_dll.Items.Insert(0, new ListItem("Select Section", "0"));

    }
    public void teacher()
    {
        //SqlDataAdapter da = new SqlDataAdapter("select * from teacher_info ", con);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //teacher_ddl.DataSource = dt;
        //teacher_ddl.DataTextField = "teacher_name";
        //teacher_ddl.DataValueField = "teacher_id";
        //teacher_ddl.DataBind();
        //teacher_ddl.Items.Insert(0, new ListItem("Select Teacher", "0"));


        SqlDataAdapter da = new SqlDataAdapter("subject_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "teacher");
        da.SelectCommand.Parameters.AddWithValue("@subject_id", "");
        da.SelectCommand.Parameters.AddWithValue("@subject_name", "");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@teacher", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        teacher_ddl.DataSource = dt;
        teacher_ddl.DataTextField = "teacher_name";
        teacher_ddl.DataValueField = "teacher_id";
        teacher_ddl.DataBind();
        teacher_ddl.Items.Insert(0, new ListItem("Select Teacher", "0"));
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    protected void export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=subject.xls");
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
                    GridView1.Columns[6].Visible = false;
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