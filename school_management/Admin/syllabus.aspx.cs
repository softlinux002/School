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
public partial class Admin_syllabus : System.Web.UI.Page
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
        string str = System.IO.Path.GetExtension(syllabus_img.FileName);
        string imgg = "";
        if (syllabus_img.HasFile)
        {
            if ((str == ".doc") || (str == ".docx") || (str == ".pdf"))
            {
                imgg = ("~/img/" + syllabus_img.FileName);
                syllabus_img.SaveAs(Server.MapPath("~/img/") + syllabus_img.FileName);
           
                 //SqlCommand cmd = new SqlCommand("syllabus_proc", con);
                 //cmd.CommandType = CommandType.StoredProcedure;
                 //cmd.Parameters.AddWithValue("@action", "insert");
                 //cmd.Parameters.AddWithValue("@pk_id", "");
                 //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
                 //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
                 //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
                 //cmd.Parameters.AddWithValue("@subject", subject_ddl.SelectedItem.ToString());
                 //cmd.Parameters.AddWithValue("@syllabus", imgg);

                 
                // cmd.ExecuteNonQuery();

                classwebref.academic obj = new classwebref.academic();
                int a = obj.addsyllabusinsert(Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), subject_ddl.SelectedItem.ToString(), imgg);
                if (a > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);
                }
               

               
            }
            else
            {
               
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('File should be  .doc, .docx, .pdf ...');", true);
            }
        }
        
        gridshow();
        blank();
        con.Close();
    }

    public void blank()
    {
        class_ddl.Items.Clear();
        subject_ddl.Items.Clear();
        Batch_dll.Items.Clear();
        streamddl.Items.Clear();
    }

    public void gridshow()
    {
        classwebref.academic obj = new classwebref.academic();
        GridView1.DataSource = obj.addsyllabusshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        string str = System.IO.Path.GetExtension(syllabus_img.FileName);
        string imgg = "";
        if (syllabus_img.HasFile)
        {
            if ((str == ".doc") || (str == ".docx") || (str == ".pdf"))
            {
                imgg = ("~/img/" + syllabus_img.FileName);
                syllabus_img.SaveAs(Server.MapPath("~/img/") + syllabus_img.FileName);
            }
            else
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('File should be  .doc, .docx, .pdf ...');", true);
            }
        }

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("syllabus_dlt_proc", con);
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
            b = dr["subject"].ToString();
            c = dr["batch"].ToString();
            d = dr["stream"].ToString();
            imgg = dr["syllabus"].ToString();
            dr.Close();
            classdetail();
            class_ddl.Items.Insert(0, a);
            subject();
            subject_ddl.Items.Insert(0, b);
           
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

        string str = System.IO.Path.GetExtension(syllabus_img.FileName);
        string imgg = "";
        if (syllabus_img.HasFile)
        {
            if ((str == ".doc") || (str == ".docx") || (str == ".pdf"))
            {
                imgg = ("~/img/" + syllabus_img.FileName);
                syllabus_img.SaveAs(Server.MapPath("~/img/") + syllabus_img.FileName);
            }
            else
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('File should be  .doc, .docx, .pdf ...');", true);
            }
        }
      
       // SqlCommand cmd = new SqlCommand("syllabus_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@subject", subject_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@syllabus", imgg);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.addsyllabusnupdate(Convert.ToInt32(Label_id.Text), Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), subject_ddl.SelectedItem.ToString(), imgg);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!');", true);
            gridshow();
            blank();
        }
            con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
        classdetail();
        subject();
        
        batch();
        stream();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("syllabus_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.addsyllabusdelete(Convert.ToInt32(Label_id.Text));
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Delete!!');", true);
        }
        con.Close();
    }
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
         subject();
    }
    public void subject()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct subject_name from subject_info where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        subject_ddl.DataSource = dt;
        subject_ddl.DataTextField = "subject_name";
        //subject_ddl.DataValueField = "subject_id";
        subject_ddl.DataBind();
        subject_ddl.Items.Insert(0, new ListItem("Select Subject Name", "0"));
    }
    public void classdetail()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct class_name from class_info", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
      
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void batch()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from batch_tbl", con);
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
        stream();
        classdetail();
    }
    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct stream from studentinfo where batch='" + Batch_dll.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        streamddl.DataSource = dt;
        streamddl.DataTextField = "stream";

        streamddl.DataBind();
        streamddl.Items.Insert(0, "Select Stream");
    }
    protected void Export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=syllabus.xls");
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
                    GridView1.Columns[7].Visible = false;
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