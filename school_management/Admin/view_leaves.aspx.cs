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
public partial class Admin_view_leaves : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            teachergridshow();
            
        }

    }
    public void teachergridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from teacher_leave", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    

    
   
    
    
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        teachergridshow();
    }
  
    protected void button_click(object sender, EventArgs e)
    {
        con.Open();
        Button btn=(Button)sender;
        GridViewRow grd=(GridViewRow)btn.NamingContainer;
        Label l1=(Label)grd.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("update teacher_leave set status ='Approved' where pk_id='"+l1.Text+"'",con);
        cmd.ExecuteNonQuery();
        con.Close();
        teachergridshow();
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
                GridView1.AllowPaging = false;
                this.teachergridshow();

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