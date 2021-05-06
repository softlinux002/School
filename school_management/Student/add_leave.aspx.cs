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
public partial class Student_add_leave : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();
          
            gridshow();
            
           
        }
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
                con.Open();
                //SqlCommand cmd = new SqlCommand("student_leave_proc", con);
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@action", "insert");
                //cmd.Parameters.AddWithValue("@pk_id", "");
                //cmd.Parameters.AddWithValue("@batch",Text_batch.Text);
                //cmd.Parameters.AddWithValue("@stream", text_stream.Text);
                //cmd.Parameters.AddWithValue("@class",text_class.Text);
                //cmd.Parameters.AddWithValue("@section", text_secion.Text);
                //cmd.Parameters.AddWithValue("@roll_no", text_roll.Text);
                //cmd.Parameters.AddWithValue("@student_name", name_txt.Text);
                //cmd.Parameters.AddWithValue("@date", dob_txt.Text);
                //cmd.Parameters.AddWithValue("@reason", leave_txt.Text);
                //cmd.Parameters.AddWithValue("@status", "Pending");
                //cmd.ExecuteNonQuery();
                stuweb.Studentwebservice obj = new stuweb.Studentwebservice();
                int a = obj.insert(Text_batch.Text, text_stream.Text, text_class.Text, text_secion.Text, text_roll.Text, name_txt.Text, dob_txt.Text, leave_txt.Text, "Pending");
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
        text_class.Text = "";
        text_secion.Text = "";
        text_roll.Text = "";
        name_txt.Text = "";
        dob_txt.Text = "";
        leave_txt.Text = "";
    }

    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("student_leave_dlt_proc", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        stuweb.Studentwebservice obj = new stuweb.Studentwebservice();
        GridView1.DataSource = obj.show();
        GridView1.DataBind();
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("student_leave_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        string f;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            name_txt.Text = dr["student_name"].ToString();
            dob_txt.Text = dr["date"].ToString();
            leave_txt.Text = dr["reason"].ToString();
           text_class.Text= dr["class"].ToString();
           text_secion.Text = dr["section"].ToString();
            text_roll.Text = dr["roll_no"].ToString();
            Text_batch.Text = dr["batch"].ToString();
            text_stream.Text = dr["stream"].ToString();
            dr.Close();
           
        }
        clear_btn.Visible = false;
        export_excel.Visible = false;
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
        stuweb.Studentwebservice obj = new stuweb.Studentwebservice();
        int a = obj.update(Convert.ToInt32(Label_id.Text),Text_batch.Text, text_stream.Text, text_class.Text, text_secion.Text, text_roll.Text, name_txt.Text, dob_txt.Text, leave_txt.Text, "Pending");
        if (a > 0)
        {
            gridshow();
            blank();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
            submit_btn.Visible = true;
            upd_btn.Visible = false;
        }
         con.Close();
        gridshow();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("student_leave_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        con.Close();
        gridshow();
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
        Response.AddHeader("content-disposition", "attachment;filename=leave.xls");
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

    public void show()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from studentinfo where email='" + Session["std_email"].ToString() + "' and password='" + Session["std_pass"].ToString() + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_batch.Text = dr["batch"].ToString();
            text_class.Text = dr["class"].ToString();
            text_stream.Text = dr["stream"].ToString();
            text_secion.Text = dr["section"].ToString();
            text_roll.Text = dr["roll_no"].ToString();
            name_txt.Text = dr["student_name"].ToString();
            dr.Close();
        }
     
        con.Close();
    }
}