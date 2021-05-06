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

public partial class Admin_search_student_biodata : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            batch();
        }
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {
        ddl_selectbatch.SelectedValue = null;
        ddl_class.SelectedValue = null;
        ddl_section.SelectedValue = null;
        ddl_stream.SelectedValue = null;
        ddl_roll.SelectedValue = null;
        Text_name.Text = "";
    }

    
    public void batch()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_selectbatch.DataSource = dt;
        ddl_selectbatch.DataTextField = "batch";
        ddl_selectbatch.DataValueField = "batch_id";
        ddl_selectbatch.DataBind();
        ddl_selectbatch.Items.Insert(0, "Select Batch");
    }
    public void classname()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct class from studentinfo where batch='" + ddl_selectbatch.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_class.DataSource = dt;
        ddl_class.DataTextField = "class";
        //ddl_class.DataValueField = "student_id";
        ddl_class.DataBind();
        ddl_class.Items.Insert(0, "Select Class");
    }
    protected void ddl_selectbatch_SelectedIndexChanged(object sender, EventArgs e)
    {
        classname();
    }
    public void section()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct section from studentinfo where batch='" + ddl_selectbatch.SelectedItem.ToString() + "' and class='" + ddl_class.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_section.DataSource = dt;
        ddl_section.DataTextField = "section";
        //ddl_section.DataValueField = "student_id";
        ddl_section.DataBind();
        ddl_section.Items.Insert(0, "Select Section");
    }
    protected void ddl_class_SelectedIndexChanged(object sender, EventArgs e)
    {
        section();
    }
    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct stream from studentinfo where batch='" + ddl_selectbatch.SelectedItem.ToString() + "' and class='" + ddl_class.SelectedItem.ToString() + "' and section='" + ddl_section.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_stream.DataSource = dt;
        ddl_stream.DataTextField = "stream";
        //ddl_stream.DataValueField = "student_id";
        ddl_stream.DataBind();
        ddl_stream.Items.Insert(0, "Select Stream");
    }
    protected void ddl_section_SelectedIndexChanged(object sender, EventArgs e)
    {
        stream();
    }
    public void roll()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select distinct roll_no from studentinfo where batch='" + ddl_selectbatch.SelectedItem.ToString() + "' and class='" + ddl_class.SelectedItem.ToString() + "' and section='" + ddl_section.SelectedItem.ToString() + "'and stream='" + ddl_stream.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_roll.DataSource = dt;
        ddl_roll.DataTextField = "roll_no";
        //ddl_roll.DataValueField = "student_id";
        ddl_roll.DataBind();
        ddl_roll.Items.Insert(0, "Select Roll No");
    }
    protected void ddl_stream_SelectedIndexChanged(object sender, EventArgs e)
    {
        roll();
    }

    protected void ddl_roll_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from studentinfo where batch='" + ddl_selectbatch.SelectedItem.ToString() + "' and class='" + ddl_class.SelectedItem.ToString() + "' and section='" + ddl_section.SelectedItem.ToString() + "'and stream='" + ddl_stream.SelectedItem.ToString() + "' and roll_no='" + ddl_roll.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_name.Text = dr["student_name"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void showtabledata()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from fees_history where batch='"+ddl_selectbatch.SelectedItem.ToString()+"' and class='"+ddl_class.SelectedItem.ToString()+"' and roll_no='"+ddl_roll.SelectedItem.ToString()+"' and student_name='"+Text_name.Text+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Export_excel.Visible = true;
        showtabledata();
    }

    protected void Export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=class.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            //To Export all pages
            GridView1.AllowPaging = false;
            this.showtabledata();

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
                    GridView1.Columns[4].Visible = false;
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

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        showtabledata();
    }
}