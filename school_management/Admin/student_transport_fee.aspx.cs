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
using System.Globalization;
public partial class Admin_student_transport_fee : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            batch();
        }
    }

    //protected void submit_btn_Click(object sender, EventArgs e)
    //{
    //    gridshow();
    //}

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

    public void gridshow()
    {

        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from allocatestationstudent where batch='" + ddl_selectbatch.SelectedItem.ToString() + "' and class='" + ddl_class.SelectedItem.ToString() + "' and section='" + ddl_section.SelectedItem.ToString() + "' and stream='" + ddl_stream.SelectedItem.ToString() + "' and roll_no='" + ddl_roll.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataSource = null;
            GridView1.EmptyDataText = "No Record Found";
            GridView1.DataBind();
        }
       
        con.Close();
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
        gridshow();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    protected void textchange_payfee(object sender, EventArgs e)
    {
       
        TextBox btn = (TextBox)sender;
        GridViewRow grd = (GridViewRow)btn.NamingContainer;
        Label oldpay = (Label)grd.FindControl("Label_oldpay");
        Label id = (Label)grd.FindControl("Lbl_id2");
        TextBox fee = (TextBox)grd.FindControl("text_fee");
        TextBox pay = (TextBox)grd.FindControl("Text_pay");
        TextBox remain = (TextBox)grd.FindControl("Textremaining");

        int a = Convert.ToInt32(fee.Text);
        int b = Convert.ToInt32(pay.Text);
        int c = Convert.ToInt32(oldpay.Text);
        int d = (c + b);
        remain.Text = (a - d).ToString();

    }
    protected void btn_click(object sender, EventArgs e)
    {
        string status = "";
        con.Open();
        Button sbmit = (Button)sender;
        GridViewRow grd = (GridViewRow)sbmit.NamingContainer;
        Label oldpay = (Label)grd.FindControl("Label_oldpay");
        Label id = (Label)grd.FindControl("Lbl_id2");
        TextBox fee = (TextBox)grd.FindControl("text_fee");
        TextBox pay = (TextBox)grd.FindControl("Text_pay");
        TextBox remain = (TextBox)grd.FindControl("Textremaining");
        Label batch = (Label)grd.FindControl("lbl_batch");
        Label clas = (Label)grd.FindControl("lbl_class");
        Label section = (Label)grd.FindControl("lbl_drivername");
        Label stuname = (Label)grd.FindControl("lbl_name");
        Label roll = (Label)grd.FindControl("lbl_roll_no");
        
        int b = Convert.ToInt32(pay.Text);
        int c = Convert.ToInt32(oldpay.Text);
        int d = (c + b);
        SqlCommand cmd = new SqlCommand("update allocatestationstudent set pay_fee='" + d + "',remaining='" + remain.Text + "' where pk_id='" + id.Text + "'", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Fee Submit Successfully!!!!');", true);
      

        SqlCommand cmd1 = new SqlCommand("select * from studentinfo where roll_no='"+roll.Text+"' and student_name='"+stuname.Text+"' and batch='"+batch.Text+"' and class='"+clas.Text+"' and section='"+section.Text+"'", con);
        SqlDataReader ddr = cmd1.ExecuteReader();
        if (ddr.Read())
        {
            father_lbl.Text = ddr["father_name"].ToString();
            mother_lbl.Text = ddr["mother_name"].ToString();
        }
        ddr.Close();

        DateTime currentdate = DateTime.Now;
        string date = currentdate.ToString("dd/MM/yyyy");
        if (Convert.ToInt32(remain.Text) > 0)
        {
            status = "Pending";
        }
        else
        {
            status = "Paid";
        }
        d = (d - c);
        SqlCommand cmmd = new SqlCommand("insert into fees_history values('" + stuname.Text + "','" + father_lbl.Text + "','" + mother_lbl.Text + "','" + roll.Text + "','" + batch.Text + "','" + clas.Text + "','" + section.Text + "','" + (DateTime.ParseExact(date, "dd/MM/yyyy",CultureInfo.InvariantCulture)).ToShortDateString() + "','" + fee.Text + "','Transportfee','" + d + "','" + remain.Text + "','" + status + "')", con);
        cmmd.ExecuteNonQuery();

        pay.Text = "";
        remain.Text = "";
       
        con.Close();
        gridshow();
    }
    
}