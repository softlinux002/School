
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

public partial class Teacher_Leaveform : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
            show();
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("teacher_leave_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@pk_id", "");
        //cmd.Parameters.AddWithValue("@Teacher_id", Text_teacher_id.Text);
        //cmd.Parameters.AddWithValue("@Teacher_name", Text_teachername.Text);
        //cmd.Parameters.AddWithValue("@day ",day_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@month ", month_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@year ", year_txt.Text);
        //cmd.Parameters.AddWithValue("@Reason", Text_reason.Text);
        //cmd.Parameters.AddWithValue("@status","Pending");
        //cmd.ExecuteNonQuery();
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        int a = obj.leaveinsert(Text_teacher_id.Text, Text_teachername.Text, day_ddl.SelectedItem.ToString(), month_ddl.SelectedItem.ToString(), year_txt.Text, Text_reason.Text, "Pending");
        if (a > 0)
        {
            Response.Write("<script>alert('Data Submitted')</script>");

            gridshow();
            blank();
        }
            con.Close();
    }
    public void blank()
    {

        Text_teacher_id.Text = "";
        Text_teachername.Text = "";
        year_txt.Text = "";
        Text_reason.Text = "";
        day_ddl.SelectedValue = null;
        month_ddl.SelectedValue = null;

    }
    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("teacher_leave_dlt_proc", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        GridView1.DataSource = obj.leaveshow();
        GridView1.DataBind();
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("teacher_leave_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_teacher_id.Text = dr["Teacher_id"].ToString();
            Text_teachername.Text = dr["Teacher_name"].ToString();
            a = dr["day"].ToString();
            b = dr["month"].ToString();
            year_txt.Text = dr["year"].ToString();
            Text_reason.Text = dr["Reason"].ToString();
            dr.Close();
            day_ddl.Items.Insert(0, a);
            month_ddl.Items.Insert(0, b);
        }
        export_excel.Visible = false;
        clr_btn.Visible = false;
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

        //SqlCommand cmd = new SqlCommand("teacher_leave_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@Teacher_id", Text_teacher_id.Text);
        //cmd.Parameters.AddWithValue("@Teacher_name", Text_teachername.Text);
        //cmd.Parameters.AddWithValue("@day ", day_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@month ", month_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@year ", year_txt.Text);
        //cmd.Parameters.AddWithValue("@Reason", Text_reason.Text);
        //cmd.Parameters.AddWithValue("@status", "Pending");
        //cmd.ExecuteNonQuery();
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        int a = obj.leaveupdate(Convert.ToInt32(Label_id.Text),Text_teacher_id.Text, Text_teachername.Text, day_ddl.SelectedItem.ToString(), month_ddl.SelectedItem.ToString(), year_txt.Text, Text_reason.Text, "Pending");
        if (a > 0)
        {
            Response.Write("<script>alert('Data Updated')</script>");
            gridshow();
            blank();
        }
        upd_btn.Visible = false;
        submit_btn.Visible = true;
        con.Close();
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("teacher_leave_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        int a = obj.leavedeletedelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            Response.Write("<script>alert('Data Deleted')</script>");
        }
            con.Close();
    }



    protected void Text_teacher_id_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from teacher_info where teacher_tid='"+Text_teacher_id.Text+"'",con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_teachername.Text = dr["Teacher_name"].ToString();

        }
        else
        {
            Response.Write("<script>alert('Please enter Valid ID')</script>");
        }

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
        Response.AddHeader("content-disposition", "attachment;filename=teacher_leave.xls");
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
    public void show()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from teacher_info where email='" + Session["teach_email"].ToString() + "'and password='" + Session["teach_pass"].ToString() + "'",con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_teacher_id.Text = dr["teacher_tid"].ToString();
            Text_teachername.Text = dr["teacher_name"].ToString();
            dr.Close();
            
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }
}