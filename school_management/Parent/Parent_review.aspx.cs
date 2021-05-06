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
public partial class Parent_Parent_review : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
   
            Text_Father.Text = Session["prnt_name"].ToString();
            studentname();
            gridshow();
        }
    }
    protected void Submit_click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("add_review_proc",con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@pk_id", "");
        //cmd.Parameters.AddWithValue("@father_name", Session["prnt_name"].ToString());
        //cmd.Parameters.AddWithValue("@student_name", student_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@roll_no", text_roll.Text);
        //cmd.Parameters.AddWithValue("@class", text_class.Text);
        //cmd.Parameters.AddWithValue("@section", Text_section.Text);
        //cmd.Parameters.AddWithValue("@complaint", TextBox1.Text);
        //cmd.ExecuteNonQuery();
        parents.parentservice obj = new parents.parentservice();
        int a = obj.insert(Session["prnt_name"].ToString(), student_ddl.SelectedItem.ToString(), text_roll.Text, text_class.Text, Text_section.Text, TextBox1.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Complaints/Review Sent Successfully!!!!');", true);
            gridshow();
            blank();
        }
            con.Close();
    }
    public void blank()
    {
        
        student_ddl.SelectedValue = null;
        text_roll.Text = "";
        text_class.Text = "" ;
        Text_section.Text = "";
        TextBox1.Text = "";
    
    }
   
    protected void student_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        rollshow();
        classname();
        section();
        stream();
    }
    public void rollshow()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from studentinfo where student_name='" + student_ddl.SelectedItem.ToString() + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            text_roll.Text = dr["roll_no"].ToString();
            dr.Close();

        
        }
        con.Close();
    }
    public void stream()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from studentinfo where student_name='" + student_ddl.SelectedItem.ToString() + "' and roll_no='" + text_roll.Text + "' and class='" + text_class.Text + "'and section='" + Text_section.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_Stream.Text = dr["stream"].ToString();
        }
        dr.Close();
        cmd.ExecuteNonQuery();
        con.Close();
    }



    //protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    section();
    //}
    public void classname()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from studentinfo where student_name='" + student_ddl.SelectedItem.ToString() + "' and roll_no='"+text_roll.Text+"'", con);
        
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            text_class.Text = dr["class"].ToString();
          

        }
        dr.Close();
        cmd.ExecuteNonQuery();
        con.Close();
    
    }
    public void section()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from studentinfo where student_name='" + student_ddl.SelectedItem.ToString() + "' and roll_no='" + text_roll.Text + "' and class='" + text_class.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_section.Text = dr["section"].ToString();
            dr.Close();


        }
        con.Close();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("add_review_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string c;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_Father.Text = dr["father_name"].ToString();
           text_class.Text = dr["class"].ToString();
            Text_section.Text = dr["section"].ToString();
            c = dr["student_name"].ToString();
            text_roll.Text = dr["roll_no"].ToString();
            TextBox1.Text = dr["complaint"].ToString();
            dr.Close();
            //classname();
            //class_ddl.Items.Insert(0, a);
            //section();
            //Section_ddl.Items.Insert(0, b);
            studentname();
            student_ddl.Items.Insert(0, c);
            
        }
        export_excel.Visible = false;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("add_review_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@father_name", Text_Father.Text);
        //cmd.Parameters.AddWithValue("@student_name", student_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@roll_no", text_roll.Text);
        //cmd.Parameters.AddWithValue("@class", text_class.Text);
        //cmd.Parameters.AddWithValue("@section", Text_section.Text);
        //cmd.Parameters.AddWithValue("@complaint", TextBox1.Text);
        //cmd.ExecuteNonQuery();
        parents.parentservice obj = new parents.parentservice();
        int a = obj.update(Convert.ToInt32(Label_id.Text), Text_Father.Text, student_ddl.SelectedItem.ToString(), text_roll.Text, text_class.Text, Text_section.Text, TextBox1.Text);
        if (a > 0)
        {
            gridshow();
            blank();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
            submit_btn.Visible = true;
            upd_btn.Visible = false;
        }
            con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("add_review_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        parents.parentservice obj = new parents.parentservice();
        int a = obj.delete(Convert.ToInt32(l1.Text));
        {

            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        }
        con.Close();
    }
    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("add_review_dlt_proc", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        parents.parentservice obj = new parents.parentservice();
        GridView1.DataSource = obj.show();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void studentname()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where father_name='" + Session["prnt_name"].ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        student_ddl.DataSource = dt;
        student_ddl.DataTextField = "student_name";
        student_ddl.DataValueField = "student_id";
        student_ddl.DataBind();
        student_ddl.Items.Insert(0, "Select Name");
    }
    protected void export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=review.xls");
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
                    GridView1.Columns[8].Visible = false;
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