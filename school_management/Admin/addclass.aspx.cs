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

public partial class Admin_addclass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            batch();
            gridshow();
            blank();
            
        }
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand com = new SqlCommand("select * from class_info where batch='" + batch_ddl.SelectedItem.ToString() + "' and class_name='" + class_dll.SelectedItem.ToString() + "'", con);
        SqlCommand cmd1 = new SqlCommand("class_proc", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@action", "classexist");
        cmd1.Parameters.AddWithValue("@class_id", "");
        cmd1.Parameters.AddWithValue("@batch", batch_ddl.SelectedItem.ToString());
        cmd1.Parameters.AddWithValue("@class_name", class_dll.SelectedItem.ToString());
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Exist Already!!!!');", true);
            dr.Close();
        }
        else
        {
            dr.Close();
            //SqlCommand cmd = new SqlCommand("class_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@class_id", "");
            //cmd.Parameters.AddWithValue("@batch", batch_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@class_name", class_dll.SelectedItem.ToString());

            //cmd.ExecuteNonQuery();
            classwebref.academic obj = new classwebref.academic();
            int a = obj.addclassinsert(batch_ddl.SelectedItem.ToString(), class_dll.SelectedItem.ToString());
            if (a > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);
                gridshow();
                blank();
            }
           
        }
        con.Close();
    }

    public void blank()
    {
        batch_ddl.SelectedValue = null;
        class_dll.SelectedValue = null;
    }

    public void gridshow()
    {
        classwebref.academic obj = new classwebref.academic();
        GridView1.DataSource = obj.addclassshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("class_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@class_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        if (dr.Read())
        {
            Label_id.Text = dr["class_id"].ToString();
            a = dr["batch"].ToString();
            b = dr["class_name"].ToString();
            dr.Close();
            batch();
            batch_ddl.Items.Insert(0,a);
            classname();
            class_dll.Items.Insert(0, b);
        }
        Export_excel.Visible = false;
        clr_btn.Visible = true;
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

        //SqlCommand cmd = new SqlCommand("class_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@class_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@batch", batch_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class_name", class_dll.SelectedItem.ToString());
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.addclassupdate(Convert.ToInt32(Label_id.Text),batch_ddl.SelectedItem.ToString(),class_dll.SelectedItem.ToString());
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!');", true);
            gridshow();
            blank();
        }
        
        con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("class_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@class_id", l1.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.addclassdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!');", true);
        }
       
        con.Close();
    }
    public void batch()
    {
        
        SqlDataAdapter da = new SqlDataAdapter("class_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "batch");
        da.SelectCommand.Parameters.AddWithValue("@class_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", "");
        da.SelectCommand.Parameters.AddWithValue("@class_name", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        batch_ddl.DataSource = dt;
        batch_ddl.DataTextField = "batch";
        batch_ddl.DataValueField = "batch_id";
        batch_ddl.DataBind();
        batch_ddl.Items.Insert(0, new ListItem("Select Batch", "0"));

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
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
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }
    public void classname()
        {

            SqlDataAdapter da = new SqlDataAdapter("class_proc", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@action", "class");
            da.SelectCommand.Parameters.AddWithValue("@class_id", "");
            da.SelectCommand.Parameters.AddWithValue("@batch", "");
            da.SelectCommand.Parameters.AddWithValue("@class_name","");
            DataTable dt = new DataTable();
            da.Fill(dt);
            class_dll.DataSource = dt;
            class_dll.DataTextField = "class";
            class_dll.DataValueField = "pk_id";
            class_dll.DataBind();
            class_dll.Items.Insert(0, "Select Class");

        }
    protected void batch_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        classname();
    }
}