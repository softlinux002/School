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

public partial class Admin_add_examterm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
            blank();
            batch();
        }
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand com = new SqlCommand("select * from examterm where batch='" + Batch_dll.SelectedItem.ToString() + "' and stream='" + streamddl.SelectedItem.ToString() + "' and examterm='" + eterm_txt.Text + "' and class='" + class_ddl.SelectedItem.ToString() + "' and section='"+Section_ddl.SelectedItem.ToString()+"'", con);
        SqlCommand com = new SqlCommand("examterm_proc", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@action", "exam");
        com.Parameters.AddWithValue("@pk_id", "");
        com.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        com.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
        com.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        com.Parameters.AddWithValue("@examterm", eterm_txt.Text);
        com.Parameters.AddWithValue("@section", Section_ddl.SelectedItem.ToString());
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Exist Already!!');", true);
            blank();
            dr.Close();
        }
        else
        {
            dr.Close();
            //SqlCommand cmd = new SqlCommand("examterm_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@pk_id", "");
            //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@examterm", eterm_txt.Text);
            //cmd.Parameters.AddWithValue("@section", Section_ddl.SelectedItem.ToString());
            //cmd.ExecuteNonQuery();
            classwebref.academic obj = new classwebref.academic();
            int a = obj.examterminsert(Batch_dll.SelectedItem.ToString(),streamddl.SelectedItem.ToString(),class_ddl.SelectedItem.ToString(),eterm_txt.Text,Section_ddl.SelectedItem.ToString());
            if (a > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!');", true);
                gridshow();
                blank();
            }
            
        }
        con.Close();
    }

    public void blank()
    {
        class_ddl.Items.Clear();
        eterm_txt.Text = "";
        Batch_dll.Items.Clear();
        streamddl.Items.Clear();
    }

    public void gridshow()
    {
        classwebref.academic obj = new classwebref.academic();
        GridView1.DataSource = obj.examtermshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("examterm_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            a = dr["class"].ToString();
            class_ddl.Items.Insert(0, a);
            eterm_txt.Text = dr["examterm"].ToString();
            b = dr["section"].ToString();
            c = dr["batch"].ToString();
            d = dr["stream"].ToString();
            dr.Close();
            classddl();
            class_ddl.Items.Insert(0, a);
            sectionshow();
            Section_ddl.Items.Insert(0, b);
            batch();
            Batch_dll.Items.Insert(0, c);
            stream();
            streamddl.Items.Insert(0, d);


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

        //SqlCommand cmd = new SqlCommand("examterm_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@examterm", eterm_txt.Text);
        //cmd.Parameters.AddWithValue("@section", Section_ddl.SelectedItem.ToString());
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.examtermupdate(Convert.ToInt32(Label_id.Text),Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), eterm_txt.Text, Section_ddl.SelectedItem.ToString());
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!');", true);
            gridshow();
            blank();
        }
        con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
        batch();
        classddl();
        sectionshow();
        stream();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("examterm_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.examtermdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!');", true);
        }
         con.Close();
    }
    public void classddl()
    {
        
        SqlDataAdapter da = new SqlDataAdapter("examterm_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "class");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", "");
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@examterm", "");
        da.SelectCommand.Parameters.AddWithValue("@class","");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }
    public void sectionshow()
    {
        
        SqlDataAdapter da = new SqlDataAdapter("examterm_proc", con);
         da.SelectCommand.CommandType = CommandType.StoredProcedure;
         da.SelectCommand.Parameters.AddWithValue("@action", "section");
         da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
         da.SelectCommand.Parameters.AddWithValue("@batch", "");
         da.SelectCommand.Parameters.AddWithValue("@stream", "");
         da.SelectCommand.Parameters.AddWithValue("@examterm", "");
         da.SelectCommand.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
         da.SelectCommand.Parameters.AddWithValue("@section","" );
         DataTable dt = new DataTable();
         da.Fill(dt);
         Section_ddl.DataSource=dt;
         Section_ddl.DataTextField = "section_name";
         
         Section_ddl.DataBind();
         Section_ddl.Items.Insert(0,new ListItem("Select Section","0"));
    }
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        sectionshow();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void batch()
    {
       
        SqlDataAdapter da = new SqlDataAdapter("examterm_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "batch");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", "");
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@examterm", "");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        Batch_dll.DataSource = dt;
        Batch_dll.DataTextField = "batch";
        Batch_dll.DataValueField = "batch_id";
        Batch_dll.DataBind();
        Batch_dll.Items.Insert(0, "Select Batch");
    }
    protected void Batch_dll_SelectedIndexChanged(object sender, EventArgs e)
    {
        classddl();
        stream();
    }
    public void stream()
    {
        
        SqlDataAdapter da = new SqlDataAdapter("examterm_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "stream");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@examterm", "");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        streamddl.DataSource = dt;
        streamddl.DataTextField = "stream";
        streamddl.DataBind();
        Batch_dll.Items.Insert(0, "Select Stream");
    }

    protected void Export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=examterm.xls");
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
                    GridView1.Columns[6].Visible = false;
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