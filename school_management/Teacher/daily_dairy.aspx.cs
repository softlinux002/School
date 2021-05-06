
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

public partial class Teacher_daily_dairy : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            classddl();
            gridshow();
            blank();
            batch();
        }
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("dailydairy_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@pk_id", "");
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@subject_name", subject_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@date", date_txt.Text);
        //cmd.Parameters.AddWithValue("@description", homework_txt.Text);
        //cmd.ExecuteNonQuery();
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        int a = obj.dailydiaryinsert(Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), subject_ddl.SelectedItem.ToString(), date_txt.Text, homework_txt.Text);
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
        class_ddl.SelectedValue = null;
        section_ddl.SelectedValue = null;
        subject_ddl.SelectedValue = null;
        date_txt.Text = "";
        homework_txt.Text = "";
    }

    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("dailydairy_dlt_proc", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        GridView1.DataSource = obj.dailydiaryshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("dailydairy_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        string g;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            a = dr["class"].ToString();
            b = dr["section"].ToString();
            c = dr["subject_name"].ToString();
            d = dr["batch"].ToString();
            g = dr["stream"].ToString();
            date_txt.Text = dr["date"].ToString();
            homework_txt.Text = dr["description"].ToString();
            dr.Close();
            batch();
            Batch_dll.Items.Insert(0, d);
            stream();
            streamddl.Items.Insert(0, g);
            classddl();
            class_ddl.Items.Insert(0, a);
            sectionddl();
            section_ddl.Items.Insert(0, b);
            subjectddl();
            subject_ddl.Items.Insert(0, c);
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
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        int a = obj.dailydiaryupdate(Convert.ToInt32(Label_id.Text),Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), subject_ddl.SelectedItem.ToString(), date_txt.Text, homework_txt.Text);
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
        //SqlCommand cmd = new SqlCommand("dailydairy_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        int a = obj.dailydiarydelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        }
            con.Close();
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

    public void sectionddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct section_name from section where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }

    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        sectionddl();
    }

    public void subjectddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct subject_name from subject_info where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        subject_ddl.DataSource = dt;
        subject_ddl.DataTextField = "subject_name";
        subject_ddl.DataBind();
        subject_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }

    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        subjectddl();
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
        Response.AddHeader("content-disposition", "attachment;filename=Website.xls");
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
                    GridView1.Columns[9].Visible = false;
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