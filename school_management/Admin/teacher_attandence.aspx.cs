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

public partial class Admin_teacher_attandence : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
            Panel1.Visible = true;
            monthyear();
            day();
            studentattendance();
        }
    }

    public void monthyear()
    {
        MonthLabel.Text = DateTime.Now.Month.ToString();
        YearLabel.Text = DateTime.Now.Year.ToString();
    }

    public void day()
    {
        con.Open();
        DateTime date = DateTime.Now.Date;
        string year = date.Year.ToString();
        string month = date.Month.ToString();
        string day = date.Day.ToString();
        int dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(year), Convert.ToInt32(month));
        string dayname = DateTime.Now.DayOfWeek.ToString();
        SqlCommand cmd = new SqlCommand("truncate table teacher_day_tbl", con);
        cmd.ExecuteNonQuery();

        foreach (GridViewRow row in GridView1.Rows)
        {
            Label tname = (Label)row.FindControl("lbl_tname");
            Label tid = (Label)row.FindControl("lbl_tid");
            for (int z = 1; z <= dayinmonth; z++)
            {
                SqlCommand smd = new SqlCommand("insert into teacher_day_tbl values('" + z + "','" + tname.Text + "','" + tid.Text + "')", con);
                smd.ExecuteNonQuery();
            }
        }
        SqlDataAdapter da = new SqlDataAdapter("select distinct day from teacher_day_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

        con.Close();
    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from teacher_info", con);
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
        SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM teacher_info;SELECT * FROM teacher_day_tbl", con);
        DataSet ds = new DataSet();
        cmd.Fill(ds);
        ds.Relations.Add(new DataRelation("nestThem", ds.Tables[0].Columns["teacher_name"], ds.Tables[1].Columns["teacher_name"]));

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
    //protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Panel1.Visible = true;
    //    monthyear();
    //    day();
    //    studentattendance();
    //}
    protected void prev_linkbutton_click(object sender, EventArgs e)
    {
        con.Open();

        if (MonthLabel.Text == "1")
        {
            YearLabel.Text = (Convert.ToInt32(YearLabel.Text) - 1).ToString();
            MonthLabel.Text = "12";
            int dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            SqlCommand cmd = new SqlCommand("truncate table teacher_day_tbl", con);
            cmd.ExecuteNonQuery();
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label tname = (Label)row.FindControl("lbl_tname");
                Label tid = (Label)row.FindControl("lbl_tid");
                for (int z = 1; z <= dayinmonth; z++)
                {
                    SqlCommand smd = new SqlCommand("insert into teacher_day_tbl values('" + z + "','" + tname.Text + "','" + tid.Text + "')", con);
                    smd.ExecuteNonQuery();
                }
            }
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from teacher_day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            studentattendance();
        }
        else
        {
            YearLabel.Text = YearLabel.Text;
            MonthLabel.Text = (Convert.ToInt32(MonthLabel.Text) - 1).ToString();
            int dayinmonth1 = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            SqlCommand cmd1 = new SqlCommand("truncate table teacher_day_tbl", con);
            cmd1.ExecuteNonQuery();
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label tname = (Label)row.FindControl("lbl_tname");
                Label tid = (Label)row.FindControl("lbl_tid");
                for (int z = 1; z <= dayinmonth1; z++)
                {
                    SqlCommand smd = new SqlCommand("insert into teacher_day_tbl values('" + z + "','" + tname.Text + "','" + tid.Text + "')", con);
                    smd.ExecuteNonQuery();
                }
            }
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from teacher_day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            studentattendance();
        }
        con.Close();
    }

    protected void next_linkbutton_click(object sender, EventArgs e)
    {
        con.Open();
        if (MonthLabel.Text == "12")
        {
            YearLabel.Text = (Convert.ToInt32(YearLabel.Text) + 1).ToString();
            MonthLabel.Text = "1";

            int dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            SqlCommand cmd = new SqlCommand("truncate table teacher_day_tbl", con);
            cmd.ExecuteNonQuery();
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label tname = (Label)row.FindControl("lbl_tname");
                Label tid = (Label)row.FindControl("lbl_tid");
                for (int z = 1; z <= dayinmonth; z++)
                {
                    SqlCommand smd = new SqlCommand("insert into teacher_day_tbl values('" + z + "','" + tname.Text + "','" + tid.Text + "')", con);
                    smd.ExecuteNonQuery();
                }
            }
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from teacher_day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            studentattendance();
        }
        else
        {
            YearLabel.Text = YearLabel.Text;
            MonthLabel.Text = (Convert.ToInt32(MonthLabel.Text) + 1).ToString();

            int dayinmonth1 = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            SqlCommand cmd1 = new SqlCommand("truncate table teacher_day_tbl", con);
            cmd1.ExecuteNonQuery();
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label tname = (Label)row.FindControl("lbl_tname");
                Label tid = (Label)row.FindControl("lbl_tid");
                for (int z = 1; z <= dayinmonth1; z++)
                {
                    SqlCommand smd = new SqlCommand("insert into teacher_day_tbl values('" + z + "','" + tname.Text + "','" + tid.Text + "')", con);
                    smd.ExecuteNonQuery();
                }
            }
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from teacher_day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            studentattendance();
        }
        con.Close();
    }
    

    protected void submint_btn_click(object sender, EventArgs e)
    {
        con.Open();
        int dayinmonth;

        if (MonthLabel.Text != null && YearLabel.Text == null)
        {
            dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
        }
        else
        {
            DateTime date = DateTime.Now.Date;
            string year = date.Year.ToString();
            string month = date.Month.ToString();
            string day = date.Day.ToString();
            dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(year), Convert.ToInt32(month));
        }
        foreach (RepeaterItem itm in Repeater2.Items)
        {
            Label name = (Label)itm.FindControl("lbl_name");
            Label tid = (Label)itm.FindControl("lbl_rollno");
            Repeater rptr = (Repeater)itm.FindControl("Repeater3");
            int i = 1;
            foreach (RepeaterItem itmm in rptr.Items)
            {
                CheckBox chek = (CheckBox)itmm.FindControl("CheckBox1");
                if (chek.Checked == true)
                {
                    chek.Text = "Present";
                }
                else
                {
                    chek.Text = "Absent";
                }
                if (i <= dayinmonth)
                {
                    SqlCommand cmd = new SqlCommand("insert into teacher_attandence values('" + i + "','" + name.Text + "','" + tid.Text + "','" + MonthLabel.Text + "','" + YearLabel.Text + "','" + chek.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    i++;
                }
                chek.Checked = false;
                chek.Text = "";
            }
        }

        con.Close();
    }
}