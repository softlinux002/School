using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Globalization;

public partial class Teacher_search_student_attendance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            batch();
            classname();
            gridshow();
        }
    }

    public void monthyear()
    {
        //MonthLabel.Text = DateTime.Now.Month.ToString();
        //YearLabel.Text = DateTime.Now.Year.ToString();
    }

    public void classname()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct class_name from class_info", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
      
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, "Select Class");
    }

    public void day()
    {
        con.Open();
        DateTime date = DateTime.Now.Date;
        string year = date.Year.ToString();
        YearLabel.Text = year.ToString();
        string month = date.Month.ToString();
        MonthLabel.Text = month.ToString();
        string day = date.Day.ToString();
        int dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(year), Convert.ToInt32(month));
        string dayname = DateTime.Now.DayOfWeek.ToString();
        SqlCommand cmd = new SqlCommand("truncate table day_tbl", con);
        cmd.ExecuteNonQuery();


        foreach (GridViewRow row in GridView1.Rows)
        {
            Label sname = (Label)row.FindControl("lbl_sname");
            Label clas = (Label)row.FindControl("lbl_class");
            Label section = (Label)row.FindControl("lbl_section");
            Label roll = (Label)row.FindControl("lbl_roll");
            Label batch = (Label)row.FindControl("lbl_batch");
            Label stream = (Label)row.FindControl("lbl_stream");
            for (int z = 1; z <= dayinmonth; z++)
            {
                SqlCommand smd = new SqlCommand("insert into day_tbl values('" + z + "','" + sname.Text + "','" + roll.Text + "','" + batch.Text + "','" + clas.Text + "','" + stream.Text + "','" + section.Text + "')", con);
                smd.ExecuteNonQuery();
            }
        }
        SqlDataAdapter da = new SqlDataAdapter("select distinct day from day_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

        con.Close();
    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    public void studentattendance()
    {
        //SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //Repeater2.DataSource = dt;
        //Repeater2.DataBind();
        SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM studentinfo where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'and batch='" + ddl_batch.SelectedItem.ToString() + "' and stream='" + ddl_stream.SelectedItem.ToString() + "';SELECT * FROM day_tbl where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'and batch='" + ddl_batch.SelectedItem.ToString() + "' and stream='" + ddl_stream.SelectedItem.ToString() + "'", con);
        DataSet ds = new DataSet();
        cmd.Fill(ds);
        ds.Relations.Add(new DataRelation("nestThem", ds.Tables[0].Columns["student_name"], ds.Tables[1].Columns["student_name"]));

        Repeater2.DataSource = ds;
        Repeater2.DataBind();
    }

    protected void Repeater2_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        DataRowView dv = e.Item.DataItem as DataRowView;
        if (dv != null)
        {
            Repeater repSubMenu = e.Item.FindControl("Repeater3") as Repeater;
            if (repSubMenu != null)
            {
                repSubMenu.DataSource = dv.CreateChildView("nestThem");
                repSubMenu.DataBind();
            }
        }
    }
    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        monthyear();
        day();
        studentattendance();
        search_btn_click(submint_btn, EventArgs.Empty);
    }
    protected void prev_linkbutton_click(object sender, EventArgs e)
    {
        if (MonthLabel.Text == "1")
        {
            YearLabel.Text = (Convert.ToInt32(YearLabel.Text) - 1).ToString();
            MonthLabel.Text = "12";
            int dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            con.Open();
            SqlCommand cmd = new SqlCommand("truncate table day_tbl", con);
            cmd.ExecuteNonQuery();
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label sname = (Label)row.FindControl("lbl_sname");
                Label clas = (Label)row.FindControl("lbl_class");
                Label section = (Label)row.FindControl("lbl_section");
                Label roll = (Label)row.FindControl("lbl_roll");
                Label batch = (Label)row.FindControl("lbl_batch");
                Label stream = (Label)row.FindControl("lbl_stream");
                for (int z = 1; z <= dayinmonth; z++)
                {
                    SqlCommand smd = new SqlCommand("insert into day_tbl values('" + z + "','" + sname.Text + "','" + roll.Text + "','" + batch.Text + "','" + clas.Text + "','" + stream.Text + "','" + section.Text + "')", con);
                    smd.ExecuteNonQuery();
                }
            }
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            studentattendance();
            search_btn_click(submint_btn, EventArgs.Empty);
        }
        else
        {
            YearLabel.Text = YearLabel.Text;
            MonthLabel.Text = (Convert.ToInt32(MonthLabel.Text) - 1).ToString();
            int dayinmonth1 = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            con.Open();
            SqlCommand cmd1 = new SqlCommand("truncate table day_tbl", con);
            cmd1.ExecuteNonQuery();
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label sname = (Label)row.FindControl("lbl_sname");
                Label clas = (Label)row.FindControl("lbl_class");
                Label section = (Label)row.FindControl("lbl_section");
                Label roll = (Label)row.FindControl("lbl_roll");
                Label batch = (Label)row.FindControl("lbl_batch");
                Label stream = (Label)row.FindControl("lbl_stream");
                for (int z = 1; z <= dayinmonth1; z++)
                {
                    SqlCommand smd = new SqlCommand("insert into day_tbl values('" + z + "','" + sname.Text + "','" + roll.Text + "','" + batch.Text + "','" + clas.Text + "','" + stream.Text + "','" + section.Text + "')", con);
                    smd.ExecuteNonQuery();
                }
            }
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            studentattendance();
            search_btn_click(submint_btn, EventArgs.Empty);
        }

    }

    protected void next_linkbutton_click(object sender, EventArgs e)
    {
        if (MonthLabel.Text == "12")
        {
            YearLabel.Text = (Convert.ToInt32(YearLabel.Text) + 1).ToString();
            MonthLabel.Text = "1";

            int dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            con.Open();
            SqlCommand cmd = new SqlCommand("truncate table day_tbl", con);
            cmd.ExecuteNonQuery();
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label sname = (Label)row.FindControl("lbl_sname");
                Label clas = (Label)row.FindControl("lbl_class");
                Label section = (Label)row.FindControl("lbl_section");
                Label roll = (Label)row.FindControl("lbl_roll");
                Label batch = (Label)row.FindControl("lbl_batch");
                Label stream = (Label)row.FindControl("lbl_stream");
                for (int z = 1; z <= dayinmonth; z++)
                {
                    SqlCommand smd = new SqlCommand("insert into day_tbl values('" + z + "','" + sname.Text + "','" + roll.Text + "','" + batch.Text + "','" + clas.Text + "','" + stream.Text + "','" + section.Text + "')", con);
                    smd.ExecuteNonQuery();
                }
            }
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            studentattendance();
            search_btn_click(submint_btn, EventArgs.Empty);
        }
        else
        {
            YearLabel.Text = YearLabel.Text;
            MonthLabel.Text = (Convert.ToInt32(MonthLabel.Text) + 1).ToString();

            int dayinmonth1 = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            con.Open();
            SqlCommand cmd1 = new SqlCommand("truncate table day_tbl", con);
            cmd1.ExecuteNonQuery();
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label sname = (Label)row.FindControl("lbl_sname");
                Label clas = (Label)row.FindControl("lbl_class");
                Label section = (Label)row.FindControl("lbl_section");
                Label roll = (Label)row.FindControl("lbl_roll");
                Label batch = (Label)row.FindControl("lbl_batch");
                Label stream = (Label)row.FindControl("lbl_stream");
                for (int z = 1; z <= dayinmonth1; z++)
                {
                    SqlCommand smd = new SqlCommand("insert into day_tbl values('" + z + "','" + sname.Text + "','" + roll.Text + "','" + batch.Text + "','" + clas.Text + "','" + stream.Text + "','" + section.Text + "')", con);
                    smd.ExecuteNonQuery();
                }
            }
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            studentattendance();
            search_btn_click(submint_btn, EventArgs.Empty);
        }

    }
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlDataAdapter da = new SqlDataAdapter("select distinct section_name from section where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
       
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, "Select Section");
        stream();
    }

    protected void search_btn_click(object sender, EventArgs e)
    {
        con.Open();
        Panel1.Visible = true;
        studentattendance();
        int dayinmonth;
        dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
        foreach (RepeaterItem itm in Repeater2.Items)
        {
            Label name = (Label)itm.FindControl("lbl_name");
            Label rollno = (Label)itm.FindControl("lbl_rollno");
            Label batch = (Label)itm.FindControl("Lbl_batch");
            Label stream = (Label)itm.FindControl("Lbl_stream");
            Repeater rptr = (Repeater)itm.FindControl("Repeater3");
            int i = 1;
            foreach (RepeaterItem itmm in rptr.Items)
            {
                CheckBox chek = (CheckBox)itmm.FindControl("CheckBox1");
                if (i <= dayinmonth)
                {
                    SqlCommand cmd = new SqlCommand("select * from student_attandence where day='" + i + "'and batch='" + batch.Text + "' and class='" + class_ddl.SelectedItem.ToString() + "'and stream='" + stream.Text + "' and section='" + section_ddl.SelectedItem.ToString() + "' and student_name='" + name.Text + "' and roll_no='" + rollno.Text + "' and month='" + MonthLabel.Text + "' and year='" + YearLabel.Text + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        chek.Text = dr["status"].ToString();

                        if (chek.Text == "Present")
                        {
                            chek.Checked = true;
                        }
                        else
                        {
                            chek.Checked = false;
                        }
                        dr.Close();
                        chek.Text = "";
                        i++;
                    }
                    else
                    {
                        dr.Close();
                        Response.Write("<script>('Attendance of this month is not found')</script>");
                    }

                }

            }
        }

        con.Close();
    }
    public void batch()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_batch.DataSource = dt;
        ddl_batch.DataTextField = "batch";
        ddl_batch.DataValueField = "batch_id";
        ddl_batch.DataBind();
        ddl_batch.Items.Insert(0, "Select Batch");
    }
    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct stream from studentinfo where batch='" + ddl_batch.SelectedItem.ToString() + "' and class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_stream.DataSource = dt;
        ddl_stream.DataTextField = "stream";
        //ddl_stream.DataValueField = "student_id";
        ddl_stream.DataBind();
        ddl_stream.Items.Insert(0, "Select Stream");
    }
}