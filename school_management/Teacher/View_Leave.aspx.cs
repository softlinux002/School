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

public partial class Teacher_View_Leave : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            studentleave();
           
        }
    }
    
    
    public void studentleave()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from student_leave ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
    }

    
    
    
    
    
    
    
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        studentleave();
    }
    
    protected void button1_click(object sender, EventArgs e)
    {
        con.Open();
        Button btn = (Button)sender;
        GridViewRow grd = (GridViewRow)btn.NamingContainer;
        Label l2 = (Label)grd.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("update student_leave set status='Approved' where pk_id='"+l2.Text+"' ", con);
        cmd.ExecuteNonQuery();
        studentleave();
    }

        

    protected void export_excel_Click(object sender, EventArgs e)
    {

        
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=teacherleave.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //To Export all pages
                GridView2.AllowPaging = false;
                this.studentleave();

                GridView2.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in GridView2.HeaderRow.Cells)
                {
                    cell.BackColor = GridView2.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in GridView2.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = GridView2.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = GridView2.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                        //GridView1.Columns[12].Visible = false;
                    }
                }

                GridView2.RenderControl(hw);

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
    protected void export_excel1_Click(object sender, EventArgs e)
    {
        //Response.Clear();
        //Response.Buffer = true;
        //Response.AddHeader("content-disposition", "attachment;filename=studentleave.xls");
        //Response.Charset = "";
        //Response.ContentType = "application/vnd.ms-excel";
        //using (StringWriter sw = new StringWriter())
        //{
        //    HtmlTextWriter hw = new HtmlTextWriter(sw);

        //    //To Export all pages
        //    GridView1.AllowPaging = false;
        //    this.studentleave();

        //    GridView1.HeaderRow.BackColor = Color.White;
        //    foreach (TableCell cell in GridView1.HeaderRow.Cells)
        //    {
        //        cell.BackColor = GridView1.HeaderStyle.BackColor;
        //    }
        //    foreach (GridViewRow row in GridView1.Rows)
        //    {
        //        row.BackColor = Color.White;
        //        foreach (TableCell cell in row.Cells)
        //        {
        //            if (row.RowIndex % 2 == 0)
        //            {
        //                cell.BackColor = GridView1.AlternatingRowStyle.BackColor;
        //            }
        //            else
        //            {
        //                cell.BackColor = GridView1.RowStyle.BackColor;
        //            }
        //            cell.CssClass = "textmode";
        //            //GridView1.Columns[12].Visible = false;
        //        }
        //    }

        //    GridView1.RenderControl(hw);

        //    //style to format numbers to string
        //    string style = @"<style> .textmode { mso-number-format:\@; } </style>";
        //    Response.Write(style);
        //    Response.Output.Write(sw.ToString());
        //    Response.Flush();
        //    Response.End();

        //}

    }
}