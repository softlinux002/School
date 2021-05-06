
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

public partial class Admin_timetable : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            classname();
            section();
            subject();
            gridshow();
            teacher();
            batch();
        }

    }

    public void classname()
        {
            SqlDataAdapter da = new SqlDataAdapter("class_dlt_proc", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@action", "show1");
            da.SelectCommand.Parameters.AddWithValue("@class_id","");
            DataTable dt = new DataTable();
            da.Fill(dt);
            class_ddl.DataSource = dt;
            class_ddl.DataTextField = "class_name";
            //class_ddl.DataValueField = "class_id";
            class_ddl.DataBind();
            class_ddl.Items.Insert(0, "Select Class");
        }
    public void section()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct section_name from section where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
      
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, "Select Section");
    
    }
    public void subject()
    { 
    SqlDataAdapter da=new SqlDataAdapter("select * from subject_info where section='"+section_ddl.SelectedItem.ToString()+"' and class='"+class_ddl.SelectedItem.ToString()+"'",con);
    DataTable dt = new DataTable();
    da.Fill(dt);
    DropDown_subject.DataSource = dt;
    DropDown_subject.DataTextField = "subject_name";
    DropDown_subject.DataValueField = "subject_id";
    DropDown_subject.DataBind();
    DropDown_subject.Items.Insert(0, "Select Subject");
    
    }
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        section();
    }
    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        subject();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("timetable_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@pk_id","");
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@subject", DropDown_subject.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@teacher_name", teacher_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@day", DropDownList2.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@startingtime", stime_txt.Text);
        //cmd.Parameters.AddWithValue("@endingtime", etime_txt.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.timetableshowinsert(Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), DropDown_subject.SelectedItem.ToString(), teacher_ddl.SelectedItem.ToString(), DropDownList2.SelectedItem.ToString(), stime_txt.Text, etime_txt.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Submit Successfully!!');", true);
            blank();
            gridshow();
        }
        con.Close();


    }
    public void blank()
    {
        class_ddl.Items.Clear();
        section_ddl.Items.Clear();
        DropDown_subject.Items.Clear();
        teacher_ddl.Items.Clear();
        DropDownList2.Items.Clear();
        stime_txt.Text = "";
        etime_txt.Text = "";

    
    }
    public void gridshow()
    {
        classwebref.academic obj = new classwebref.academic();
        GridView1.DataSource = obj.timetableshow();
        GridView1.DataBind();
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("timetable_procevent", con);
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
        string k;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
           
            a = dr["class"].ToString();
            b = dr["section"].ToString();
            c = dr["subject"].ToString();
            d = dr["teacher_name"].ToString();
            f = dr["batch"].ToString();
            g = dr["stream"].ToString();
            k= dr["day"].ToString();
            if (k == "Sunday")
            {
                DropDownList2.SelectedIndex = 1;
            }
            else if (k == "Monday")
            {
                DropDownList2.SelectedIndex = 2;
            }
            else if (k == "Tuesday")
            {
                DropDownList2.SelectedIndex = 3;
            }
            else if (k == "Wednesday")
            {
                DropDownList2.SelectedIndex = 4;
            }

            else if (k == "Thrusday")
            {
                DropDownList2.SelectedIndex = 5;
            }
            else if (k == "Friday")
            {
                DropDownList2.SelectedIndex = 6;
            }
            else if (k == "Saturday")
            {
                DropDownList2.SelectedIndex = 7;
            }
            else 
            {
                DropDownList2.SelectedIndex = 0;
            }
            stime_txt.Text = dr["startingtime"].ToString();
            etime_txt.Text = dr["endingtime"].ToString();
            dr.Close();

            classname();
            class_ddl.Items.Insert(0, a);
            section();
            section_ddl.Items.Insert(0, b);
            subject();
            DropDown_subject.Items.Insert(0, c);
            teacher();
            teacher_ddl.Items.Insert(0, d);
            batch();
            Batch_dll.Items.Insert(0, f);
            stream();
            streamddl.Items.Insert(0, g);

        }
        clr_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("timetable_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@batch", Batch_dll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", streamddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@subject", DropDown_subject.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@teacher_name", teacher_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@day", DropDownList2.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@startingtime", stime_txt.Text);
        //cmd.Parameters.AddWithValue("@endingtime", etime_txt.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.timetableshowupdate(Convert.ToInt32(Label_id.Text),Batch_dll.SelectedItem.ToString(), streamddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), DropDown_subject.SelectedItem.ToString(), teacher_ddl.SelectedItem.ToString(), DropDownList2.SelectedItem.ToString(), stime_txt.Text, etime_txt.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!');", true);
            gridshow();
        }
        
        blank();
        con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
        batch();
        stream();
        classname();
        section();
        subject();
        teacher();
       
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("timetable_procevent", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a=obj.timetableshowdelete(Convert.ToInt32(l1.Text));
        gridshow();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!');", true);
        con.Close();
    }
    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }
    public void teacher()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from teacher_info ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        teacher_ddl.DataSource = dt;
        teacher_ddl.DataTextField = "teacher_name";
        teacher_ddl.DataValueField = "teacher_id";
        teacher_ddl.DataBind();
        teacher_ddl.Items.Insert(0, new ListItem("Select Teacher", "0"));
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void batch()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Batch_dll.DataSource = dt;
        Batch_dll.DataTextField = "batch";
        Batch_dll.DataValueField = "batch_id";
        Batch_dll.DataBind();
        Batch_dll.Items.Insert(0, "Select Batch");
    }
    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("select Distinct stream from studentinfo where batch='" + Batch_dll.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        streamddl.DataSource = dt;
        streamddl.DataTextField = "stream";
        streamddl.DataBind();
        streamddl.Items.Insert(0, "Select Stream");
    }
    protected void Batch_dll_SelectedIndexChanged(object sender, EventArgs e)
    {
        stream();
    }
    protected void export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=timetable.xls");
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
}