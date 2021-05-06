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

public partial class Admin_teacher_attandence_search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = true;
            gridshow();
            day();
            search_btn_click(submint_btn, EventArgs.Empty);
        }
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
   
    protected void prev_linkbutton_click(object sender, EventArgs e)
    {
        if (MonthLabel.Text == "1")
        {
            YearLabel.Text = (Convert.ToInt32(YearLabel.Text) - 1).ToString();
            MonthLabel.Text = "12";
            int dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            con.Open();
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
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from teacher_day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            search_btn_click(submint_btn, EventArgs.Empty);
        }
        else
        {
            YearLabel.Text = YearLabel.Text;
            MonthLabel.Text = (Convert.ToInt32(MonthLabel.Text) - 1).ToString();
            int dayinmonth1 = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            con.Open();
            SqlCommand cmd = new SqlCommand("truncate table teacher_day_tbl", con);
            cmd.ExecuteNonQuery();

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
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from teacher_day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
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
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from teacher_day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            search_btn_click(submint_btn, EventArgs.Empty);
        }
        else
        {
            YearLabel.Text = YearLabel.Text;
            MonthLabel.Text = (Convert.ToInt32(MonthLabel.Text) + 1).ToString();

            int dayinmonth1 = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
            con.Open();
            SqlCommand cmd = new SqlCommand("truncate table teacher_day_tbl", con);
            cmd.ExecuteNonQuery();

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
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter("select distinct day from teacher_day_tbl", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            search_btn_click(submint_btn, EventArgs.Empty);
        }

    }
    

    protected void search_btn_click(object sender, EventArgs e)
    {
        con.Open();
        studentattendance();
        int dayinmonth;
        dayinmonth = DateTime.DaysInMonth(Convert.ToInt32(YearLabel.Text), Convert.ToInt32(MonthLabel.Text));
        foreach (RepeaterItem itm in Repeater2.Items)
        {
            Label tname = (Label)itm.FindControl("lbl_tname");
            Label tid = (Label)itm.FindControl("lbl_tid");
            Repeater rptr = (Repeater)itm.FindControl("Repeater3");
            int i = 1;
            foreach (RepeaterItem itmm in rptr.Items)
            {
                CheckBox chek = (CheckBox)itmm.FindControl("CheckBox1");
                if (i <= dayinmonth)
                {
                    SqlCommand cmd = new SqlCommand("select * from teacher_attandence where day='" + i + "' and teacher_name='" + tname.Text + "' and teacher_tid='" + tid.Text + "' and month='" + MonthLabel.Text + "' and year='" + YearLabel.Text + "'", con);
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
}