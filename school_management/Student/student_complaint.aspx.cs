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
public partial class Student_student_complaint : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

           
            complaint();
        }
    }

    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        
       
    }
    public void classddl()
    {
       
    }
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }


    public void complaint()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from stuinfo_comp_view where email='" + Session["std_email"].ToString() + "' and password='" + Session["std_pass"].ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void examterm_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        complaint();
    }
    //protected void export_excel_Click(object sender, EventArgs e)
    //{
    //    Response.Clear();
    //    Response.Buffer = true;
    //    Response.AddHeader("content-disposition", "attachment;filename=Website.xls");
    //    Response.Charset = "";
    //    Response.ContentType = "application/vnd.ms-excel";
    //    using (StringWriter sw = new StringWriter())
    //    {
    //        HtmlTextWriter hw = new HtmlTextWriter(sw);

    //        //To Export all pages
    //        GridView1.AllowPaging = false;
    //        this.complaint();

    //        GridView1.HeaderRow.BackColor = Color.White;
    //        foreach (TableCell cell in GridView1.HeaderRow.Cells)
    //        {
    //            cell.BackColor = GridView1.HeaderStyle.BackColor;
    //        }
    //        foreach (GridViewRow row in GridView1.Rows)
    //        {
    //            row.BackColor = Color.White;
    //            foreach (TableCell cell in row.Cells)
    //            {
    //                if (row.RowIndex % 2 == 0)
    //                {
    //                    cell.BackColor = GridView1.AlternatingRowStyle.BackColor;
    //                }
    //                else
    //                {
    //                    cell.BackColor = GridView1.RowStyle.BackColor;
    //                }
    //                cell.CssClass = "textmode";
    //                //GridView1.Columns[12].Visible = false;
    //            }
    //        }

    //        GridView1.RenderControl(hw);

    //        //style to format numbers to string
    //        string style = @"<style> .textmode { mso-number-format:\@; } </style>";
    //        Response.Write(style);
    //        Response.Output.Write(sw.ToString());
    //        Response.Flush();
    //        Response.End();

    //    }
    //}
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }
}