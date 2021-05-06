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

public partial class Teacher_Searchdailyattandence : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            batch();

            blank();
        }
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
        Panel1.Visible = true;
        gridshow();
    }

    public void sectionddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from section where batch='" + batch_ddl.SelectedItem.ToString() + "' and class='" + class_ddl.SelectedItem.ToString() + "'", con);
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
        //SqlDataAdapter da = new SqlDataAdapter("select * from subject_info where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //subject_ddl.DataSource = dt;
        //subject_ddl.DataTextField = "subject_name";
        //subject_ddl.DataValueField = "subject_id";
        //subject_ddl.DataBind();
        //subject_ddl.Items.Insert(0, new ListItem("Select Subject", "0"));
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

    //protected void submit_btn_Click(object sender, EventArgs e)
    //{
    //    con.Open();
    //    foreach (GridViewRow row in GridView1.Rows)
    //    {
    //        string a = "";
    //        Label l1 = (Label)row.FindControl("Lbl_id");
    //        Label rollno = (Label)row.FindControl("Lbl_rollno");
    //        Label name = (Label)row.FindControl("Lbl_name");
    //        RadioButtonList rbt = (RadioButtonList)row.FindControl("RadioButtonList1");
    //        if (rbt.SelectedItem.ToString() == "Present")
    //        {
    //            a = "Present";
    //        }
    //        else if (rbt.SelectedItem.ToString() == "Absent")
    //        {
              
    //            a = "Absent";

    //        }
    //        else
    //        {
    //            a = "Leave";
    //        }
    //        DateTime dt = DateTime.Now;
    //        var date = dt.ToShortDateString();

    //        SqlCommand cmd = new SqlCommand("insert into dailyattandance values('" + date.ToString() + "','" + batch_ddl.SelectedItem.ToString() + "','" + stream_ddl.SelectedItem.ToString() + "','" + class_ddl.SelectedItem.ToString() + "','" + section_ddl.SelectedItem.ToString() + "','" + rollno.Text + "','" + name.Text + "','" + a + "')", con);
    //        cmd.ExecuteNonQuery();
    //        Response.Write("<script>alert('Attendance Submit')</script>");

    //    }
    //    con.Close();
    //    blank();
    //}

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {

        batch_ddl.SelectedValue = null;
        stream_ddl.SelectedValue = null;
        class_ddl.SelectedValue = null;
        section_ddl.SelectedValue = null;

        //subject_ddl.SelectedValue = null;
    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from dailyattandance where date='"+Text_date.Text+"' and batch='" + batch_ddl.SelectedItem.ToString() + "'and stream='" + stream_ddl.SelectedItem.ToString() + "'and class='" + class_ddl.SelectedItem.ToString() + "'and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        //con.Open();
        //LinkButton lnk = (LinkButton)sender;
        //GridViewRow row = (GridViewRow)lnk.NamingContainer;
        //Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("lectureplan_procevent", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "Select_id");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //SqlDataReader dr = cmd.ExecuteReader();
        //string a;
        //string b;
        //string c;
        //string d;
        //string f;
        //string g;
        //if (dr.Read())
        //{
        //    Label_id.Text = dr["pk_id"].ToString();
        //    a = dr["teacher_name"].ToString();
        //    b = dr["batch"].ToString();
        //    c = dr["stream"].ToString();
        //    d = dr["class"].ToString();
        //    f = dr["section"].ToString();
        //    g = dr["subject"].ToString();

        //    dr.Close();

        //    batchddl();
        //    batch_ddl.Items.Insert(0, b);
        //    streamddl();
        //    stream_ddl.Items.Insert(0, c);
        //    classddl();
        //    class_ddl.Items.Insert(0, d);
        //    sectionddl();
        //    section_ddl.Items.Insert(0, f);
        //    subject_ddl.Items.Insert(0, g);
        //}
        //clear_btn.Visible = true;
        //upd_btn.Visible = true;
        //submit_btn.Visible = false;
        //con.Close();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        //con.Open();
        //string str = System.IO.Path.GetExtension(lect_plan.FileName);
        //string imgg = "";
        //if (lect_plan.HasFile)
        //{


        //        SqlCommand cmd = new SqlCommand("lectureplan_proc", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@action", "Update");
        //        cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);

        //        cmd.Parameters.AddWithValue("@batch", batch_ddl.SelectedItem.ToString());
        //        cmd.Parameters.AddWithValue("@stream", stream_ddl.SelectedItem.ToString());
        //        cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //        cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //        cmd.Parameters.AddWithValue("@subject", subject_ddl.SelectedItem.ToString());
        //        cmd.Parameters.AddWithValue("@image", imgg);

        //        cmd.ExecuteNonQuery();
        //        Response.Write("<script>alert('Data Updated')</script>");
        //    }
        //    else
        //    {
        //        string message = "alert('File should be  .doc, .docx, .pdf ...')";
        //        ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
        //    }
        //}
        //gridshow();
        //blank();
        //upd_btn.Visible = false;
        //submit_btn.Visible = true;
        //con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("lectureplan_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
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
    public void batch()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        batch_ddl.DataSource = dt;
        batch_ddl.DataTextField = "batch";
        batch_ddl.DataValueField = "batch_id";
        batch_ddl.DataBind();
        batch_ddl.Items.Insert(0, "Select Batch");
    }
  
}