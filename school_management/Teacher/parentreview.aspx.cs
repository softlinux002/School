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
public partial class Teacher_parentreview : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            classname();
            batch();
        }
    }
    public void classname()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct class_name from class_info ",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, ("Select Class"));
    }
    public void section()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct section_name from section where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, ("Selcet Section"));
    }
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        section();
    }

    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        rollno();
    }
    protected void text_studentroll_SelectedIndexChanged(object sender, EventArgs e)
    {
        export_excel.Visible = true;
        father();
        show();
    }
    public void rollno()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where batch='"+Batch_dll.SelectedItem.ToString()+"' and stream='"+streamddl.SelectedItem.ToString()+"' and  class='"+class_ddl.SelectedItem.ToString()+"' and section='"+section_ddl.SelectedItem.ToString()+"'",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        text_studentroll.DataSource = dt;
        text_studentroll.DataTextField = "roll_no";
        text_studentroll.DataValueField = "student_id";
        text_studentroll.DataBind();
        text_studentroll.Items.Insert(0, ("Select Roll no"));
    }
    public void father()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from studentinfo where roll_no='"+text_studentroll.SelectedItem.ToString()+"'",con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_father.Text = dr["father_name"].ToString();
            dr.Close();
        }
        con.Close();
      
    }

    public void show()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from add_review where  class='"+class_ddl.SelectedItem.ToString()+"' and roll_no='"+text_studentroll.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        show();
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
            this.show();

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
                    //GridView1.Columns[12].Visible = false;
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