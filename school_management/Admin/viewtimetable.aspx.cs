using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_viewtimetable : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!IsPostBack)
            {
                classname();
                section();
                gridshow_sun();
                gridshowmon();
                gridshowtue();
                gridshowwed();
                gridshowthru();
                gridshowfri();
                gridshowsat();
                batch();
            }
        }
    }
    public void classname()
    {
        SqlDataAdapter da = new SqlDataAdapter("class_dlt_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show1");
        da.SelectCommand.Parameters.AddWithValue("@class_id", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
     
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, "Select Class");
    }
    public void section()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct section_name  from section where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, "Select Section");
    }
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        section();
    }
    public void gridshow_sun()
    {


        SqlDataAdapter da = new SqlDataAdapter("select * from timetable where class='" + class_ddl.SelectedItem.ToString() + "' and day='" + DropDownList2.SelectedItem.ToString() + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView_sun.DataSource = dt;
        GridView_sun.DataBind();

    }
    public void gridshowmon()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from timetable where class='" + class_ddl.SelectedItem.ToString() + "' and day='" + DropDownList2.SelectedItem.ToString() + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView_mon.DataSource = dt;
        GridView_mon.DataBind();

    }
    public void gridshowtue()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from timetable where class='" + class_ddl.SelectedItem.ToString() + "' and day='" + DropDownList2.SelectedItem.ToString() + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView_tue.DataSource = dt;
        GridView_tue.DataBind();

    }
    public void gridshowwed()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from timetable where class='" + class_ddl.SelectedItem.ToString() + "' and day='" + DropDownList2.SelectedItem.ToString() + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView_wed.DataSource = dt;
        GridView_wed.DataBind();

    }
    public void gridshowthru()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from timetable where class='" + class_ddl.SelectedItem.ToString() + "' and day='" + DropDownList2.SelectedItem.ToString() + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView_thru.DataSource = dt;
        GridView_thru.DataBind();

    }
    public void gridshowfri()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from timetable where class='" + class_ddl.SelectedItem.ToString() + "' and day='" + DropDownList2.SelectedItem.ToString() + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView_fri.DataSource = dt;
        GridView_fri.DataBind();

    }
    public void gridshowsat()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from timetable where class='" + class_ddl.SelectedItem.ToString() + "' and day='" + DropDownList2.SelectedItem.ToString() + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView_sat.DataSource = dt;
        GridView_sat.DataBind();

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedValue == "1")
        {
            GridView_mon.Visible = false;
            GridView_tue.Visible = false;
            GridView_wed.Visible = false;
            GridView_thru.Visible = false;
            GridView_fri.Visible = false;
            GridView_sat.Visible = false;
            GridView_sun.Visible = true;
            gridshow_sun();
        }
        else if (DropDownList2.SelectedValue == "2")
        {
            GridView_mon.Visible = true;
            GridView_tue.Visible = false;
            GridView_wed.Visible = false;
            GridView_thru.Visible = false;
            GridView_fri.Visible = false;
            GridView_sat.Visible = false;
            GridView_sun.Visible = false;
            gridshowmon();

        }
        else if (DropDownList2.SelectedValue == "3")
        {
            GridView_mon.Visible = false;
            GridView_tue.Visible = true;
            GridView_wed.Visible = false;
            GridView_thru.Visible = false;
            GridView_fri.Visible = false;
            GridView_sat.Visible = false;
            GridView_sun.Visible = false;
            gridshowtue();
        }
        else if (DropDownList2.SelectedValue == "4")
        {
            GridView_mon.Visible = false;
            GridView_tue.Visible = false;
            GridView_wed.Visible = true;
            GridView_thru.Visible = false;
            GridView_fri.Visible = false;
            GridView_sat.Visible = false;
            GridView_sun.Visible = false;
            gridshowwed();
        }
        else if (DropDownList2.SelectedValue == "5")
        {
            GridView_mon.Visible = false;
            GridView_tue.Visible = false;
            GridView_wed.Visible = false;
            GridView_thru.Visible = true;
            GridView_fri.Visible = false;
            GridView_sat.Visible = false;
            GridView_sun.Visible = false;
            gridshowthru();
        }
        else if (DropDownList2.SelectedValue == "6")
        {
            GridView_mon.Visible = false;
            GridView_tue.Visible = false;
            GridView_wed.Visible = false;
            GridView_thru.Visible = false;
            GridView_fri.Visible = true;
            GridView_sat.Visible = false;
            GridView_sun.Visible = false;
            gridshowfri();
        }
        else if (DropDownList2.SelectedValue == "7")
        {

            GridView_mon.Visible = false;
            GridView_tue.Visible = false;
            GridView_wed.Visible = false;
            GridView_thru.Visible = false;
            GridView_fri.Visible = false;
            GridView_sat.Visible = true;
            GridView_sun.Visible = false;
            gridshowsat();
        }



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
    }
    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct stream from studentinfo where batch='" + Batch_dll.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        streamddl.DataSource = dt;
        streamddl.DataTextField = "stream";

        streamddl.DataBind();
        streamddl.Items.Insert(0, "Select Stream ");
    }
}