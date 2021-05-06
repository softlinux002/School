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
public partial class Parent_fee_Search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
        }

    }
    //protected void TextBox1_TextChanged(object sender, EventArgs e)
    //{
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from studentinfo where father_name='" + TextBox1.Text + "'", con);
    //    cmd.ExecuteNonQuery();
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    if (dr.Read())
    //    {

    //        SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where father_name='" + TextBox1.Text + "'", con);
    //        DataTable dt = new DataTable();
    //        dr.Close();
    //        da.Fill(dt);
    //        student_ddl.DataSource = dt;
    //        student_ddl.DataTextField = "student_name";
    //        student_ddl.DataValueField = "student_id";
    //        student_ddl.DataBind();
    //        student_ddl.Items.Insert(0, "Select Name");

    //    }
    //    else
    //    {
    //        Response.Write("<Script>alert('Please Correct Father Name')</script>");
    //    }

    //    con.Close();
    //}
    //protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    section();
    //}
    //protected void student_ddl_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    classname();
    //}
    //public void classname()
    //{
    //    SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where student_name='" + student_ddl.SelectedItem.ToString() + "'", con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    class_ddl.DataSource = dt;
    //    class_ddl.DataTextField = "class";
    //    class_ddl.DataValueField = "student_id";
    //    class_ddl.DataBind();
    //    class_ddl.Items.Insert(0, "Select Class");
    //}
    //public void section()
    //{
    //    SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where student_name='" + student_ddl.SelectedItem.ToString() + "'and class='" + class_ddl.SelectedItem.ToString() + "'", con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    Section_ddl.DataSource = dt;
    //    Section_ddl.DataTextField = "section";
    //    Section_ddl.DataValueField = "student_id";
    //    Section_ddl.DataBind();
    //    Section_ddl.Items.Insert(0, "Select section");
    //}
    //protected void Section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    gridshow();
    //}


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void gridshow()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from Parent_showfee where email='" + Session["prnt_email"] + "' and Password='" + Session["prnt_pass"] + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    
    }
    protected void Export_excel_Click(object sender, EventArgs e)
    {

        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=fee.xls");
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