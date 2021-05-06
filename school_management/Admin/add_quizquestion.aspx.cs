
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

public partial class Admin_add_quizquestion : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            section();
            gridshow();
            blank();
        }
    }

    public void section()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from quiz_section", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section";
        section_ddl.DataValueField = "pk_id";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Exam Name", "0"));
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("quiz_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "insert");
        cmd.Parameters.AddWithValue("@ques_id", "");
        cmd.Parameters.AddWithValue("@subject", section_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@question", question_txt.Text);
        cmd.Parameters.AddWithValue("@option1", opt1_txt.Text);
        cmd.Parameters.AddWithValue("@option2", opt2_txt.Text);
        cmd.Parameters.AddWithValue("@option3", opt3_txt.Text);
        cmd.Parameters.AddWithValue("@option4", opt4_txt.Text);
        cmd.Parameters.AddWithValue("@option5", opt5_txt.Text);

        if (RadioButtonList1.SelectedValue == "1")
        {
            RadioButtonList1.SelectedValue = "1";
        }
        else if (RadioButtonList1.SelectedValue == "2")
        {
            RadioButtonList1.SelectedValue = "2";
        }
        else if (RadioButtonList1.SelectedValue == "3")
        {
            RadioButtonList1.SelectedValue = "3";
        }
        else if (RadioButtonList1.SelectedValue == "4")
        {
            RadioButtonList1.SelectedValue = "4";
        }
        else if (RadioButtonList1.SelectedValue == "5")
        {
            RadioButtonList1.SelectedValue = "5";
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('please select the correct option!!');", true);
            
        }
        cmd.Parameters.AddWithValue("@correctoption", RadioButtonList1.SelectedValue);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!');", true);
        gridshow();
        blank();
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {
        section_ddl.SelectedValue = null;
        question_txt.Text = "";
        opt1_txt.Text = "";
        opt2_txt.Text = "";
        opt3_txt.Text = "";
        opt4_txt.Text = "";
        opt5_txt.Text = "";
        RadioButtonList1.SelectedValue = null;
    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("quiz_dlt_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@ques_id", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        string a;
        string b;
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("quiz_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@ques_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label_id.Text = dr["ques_id"].ToString();
            a = dr["subject"].ToString();
           
            question_txt.Text = dr["question"].ToString();
            opt1_txt.Text = dr["option1"].ToString();
            opt2_txt.Text = dr["option2"].ToString();
            opt3_txt.Text = dr["option3"].ToString();
            opt4_txt.Text = dr["option4"].ToString();
            opt5_txt.Text = dr["option5"].ToString();
            b = dr["correctoption"].ToString();
            if(b=="1")
            {
                RadioButtonList1.SelectedValue = "1";
            }
            else if (b == "2")
            {
                RadioButtonList1.SelectedValue = "2";
            }
            else if (b == "3")
            {
                RadioButtonList1.SelectedValue = "3";
            }
            else if (b == "4")
            {
                RadioButtonList1.SelectedValue = "4";
            }
            else if (b == "5")
            {
                RadioButtonList1.SelectedValue = "5";
            }
            else
            {
                Response.Write("<script>alert('please select the correct option')</script>");
            }
            dr.Close();
            section();
            section_ddl.Items.Insert(0, a);

        }
        export_excel.Visible = false;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("quiz_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@ques_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@subject", section_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@question", question_txt.Text);
        cmd.Parameters.AddWithValue("@option1", opt1_txt.Text);
        cmd.Parameters.AddWithValue("@option2", opt2_txt.Text);
        cmd.Parameters.AddWithValue("@option3", opt3_txt.Text);
        cmd.Parameters.AddWithValue("@option4", opt4_txt.Text);
        cmd.Parameters.AddWithValue("@option5", opt5_txt.Text);
        if (RadioButtonList1.SelectedValue == "1")
        {
            RadioButtonList1.SelectedValue = "1";
        }
        else if (RadioButtonList1.SelectedValue == "2")
        {
            RadioButtonList1.SelectedValue = "2";
        }
        else if (RadioButtonList1.SelectedValue == "3")
        {
            RadioButtonList1.SelectedValue = "3";
        }
        else if (RadioButtonList1.SelectedValue == "4")
        {
            RadioButtonList1.SelectedValue = "4";
        }
        else if (RadioButtonList1.SelectedValue == "5")
        {
            RadioButtonList1.SelectedValue = "5";
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('please select the correct option!!');", true);
           
        }
        cmd.Parameters.AddWithValue("@correctoption", RadioButtonList1.SelectedValue);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!');", true);
        gridshow();
        blank();

        clr_btn.Visible = true;
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
        SqlCommand cmd = new SqlCommand("quiz_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@ques_id", l1.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!');", true);
        con.Close();
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
        Response.AddHeader("content-disposition", "attachment;filename=quiz.xls");
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
                    GridView1.Columns[10].Visible = false;
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