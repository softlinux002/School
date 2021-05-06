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

public partial class Teacher_lecture_plan : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            nameddl();
            gridshow();
           
        }
    }

    public void nameddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from teacher_info where email='" + Session["teach_email"].ToString() + "' and password='" + Session["teach_pass"].ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        name_ddl.DataSource = dt;
        name_ddl.DataTextField = "teacher_name";
        name_ddl.DataValueField = "teacher_id";
        name_ddl.DataBind();
        name_ddl.Items.Insert(0, new ListItem("Select Teacher", "0"));
    }

    public void batchddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        batch_ddl.DataSource = dt;
        batch_ddl.DataTextField = "batch";
        batch_ddl.DataValueField = "batch_id";
        batch_ddl.DataBind();
        batch_ddl.Items.Insert(0, new ListItem("Select Batch", "0"));
    }

    protected void name_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        batchddl();
    }

    protected void batch_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        classddl();
        streamddl();
    }

    public void classddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from class_info where batch='" + batch_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
        class_ddl.DataValueField = "class_id";
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }

    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        sectionddl();
    }

    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        subjectddl();
    }

    public void sectionddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from section where batch='" + batch_ddl.SelectedItem.ToString() + "' and class='"+class_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
        section_ddl.DataValueField = "section_id";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }

    public void subjectddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from subject_info where class='" + class_ddl.SelectedItem.ToString() + "' and section='"+ section_ddl.SelectedItem.ToString() +"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        subject_ddl.DataSource = dt;
        subject_ddl.DataTextField = "subject_name";
        subject_ddl.DataValueField = "subject_id";
        subject_ddl.DataBind();
        subject_ddl.Items.Insert(0, new ListItem("Select Subject", "0"));
    }

    public void streamddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct stream from studentinfo where batch='" + batch_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        stream_ddl.DataSource = dt;
        stream_ddl.DataTextField = "stream";
        stream_ddl.DataBind();
        stream_ddl.Items.Insert(0, new ListItem("Select Stream", "0"));
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = System.IO.Path.GetExtension(lect_plan.FileName);
        string imgg = "";
        if (lect_plan.HasFile)
        {
            if ((str == ".doc") || (str == ".docx") || (str == ".pdf"))
            {
                imgg = ("~/img/" + lect_plan.FileName);
                lect_plan.SaveAs(Server.MapPath("~/img/") + lect_plan.FileName);

                //SqlCommand cmd = new SqlCommand("lectureplan_proc", con);
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@action", "insert");
                //cmd.Parameters.AddWithValue("@pk_id", "");
                //cmd.Parameters.AddWithValue("@teacher_name", name_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@batch", batch_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@stream", stream_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@subject", subject_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@image", imgg);
                //cmd.ExecuteNonQuery();
                webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
                int a = obj.insert(name_ddl.SelectedItem.ToString(),batch_ddl.SelectedItem.ToString(),stream_ddl.SelectedItem.ToString(),class_ddl.SelectedItem.ToString(),section_ddl.SelectedItem.ToString(),subject_ddl.SelectedItem.ToString(),imgg);
                if (a > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);
                }
            }
            else
            {
               
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('File should be  .doc, .docx, .pdf ...!!!!');", true);
            }
        }
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
        name_ddl.SelectedValue = null;
        batch_ddl.SelectedValue = null;
        stream_ddl.SelectedValue = null;
        class_ddl.SelectedValue = null;
        section_ddl.SelectedValue = null;
        subject_ddl.SelectedValue = null;
    }

    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("lectureplan_procevent", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        GridView1.DataSource = obj.show();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("lectureplan_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select_id");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        string f;
        string g;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            a = dr["teacher_name"].ToString();
            b = dr["batch"].ToString();
            c = dr["stream"].ToString();
            d = dr["class"].ToString();
            f = dr["section"].ToString();
            g = dr["subject"].ToString();
            Image2.ImageUrl = dr["image"].ToString();
            dr.Close();
            nameddl();
            name_ddl.Items.Insert(0, a);
            batchddl();
            batch_ddl.Items.Insert(0, b);
            streamddl();
            stream_ddl.Items.Insert(0, c);
            classddl();
            class_ddl.Items.Insert(0, d);
            sectionddl();
            section_ddl.Items.Insert(0, f);
            subject_ddl.Items.Insert(0, g);
        }
        clear_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = System.IO.Path.GetExtension(lect_plan.FileName);
        string imgg = "";
        if (lect_plan.HasFile)
        {
            if ((str == ".doc") || (str == ".docx") || (str == ".pdf"))
            {
               
                    imgg = ("~/img/" + lect_plan.FileName);
                    lect_plan.SaveAs(Server.MapPath("~/img/") + lect_plan.FileName);
                

                //SqlCommand cmd = new SqlCommand("lectureplan_proc", con);
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@action", "Update");
                //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
                //cmd.Parameters.AddWithValue("@teacher_name", name_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@batch", batch_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@stream", stream_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@subject", subject_ddl.SelectedItem.ToString());
                //cmd.Parameters.AddWithValue("@image", imgg);
                
                //cmd.ExecuteNonQuery();
                    webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
                    int a = obj.update(Convert.ToInt32(Label_id.Text),name_ddl.SelectedItem.ToString(), batch_ddl.SelectedItem.ToString(), stream_ddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), subject_ddl.SelectedItem.ToString(), imgg);
                    if (a > 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
                    }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('File should be  .doc, .docx, .pdf ...!!!!');", true);
            }
        }
        gridshow();
        blank();
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
        //SqlCommand cmd = new SqlCommand("lectureplan_procevent", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        webservicesteacher.serviceteacher obj = new webservicesteacher.serviceteacher();
        int a = obj.delete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        }
            con.Close();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }
}