using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Globalization;
public partial class Admin_pay_salary : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            classddl();
        }
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from salary_tbl where teacher_tid='" + tid_ddl.SelectedItem.ToString() + "' and teacher_name='" + name_ddl.SelectedItem.ToString() + "'and year='" + year_txt.Text + "'and month='" + month_ddl.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Salary already Paid!!!!');", true);
            blank();
            dr.Close();
        }
        else
        {

            dr.Close();
            DateTime currentdate = DateTime.Now;
            string date = currentdate.ToString("dd/MM/yyyy");
            //SqlCommand cmd = new SqlCommand("salary_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@pk_id", "");
            //cmd.Parameters.AddWithValue("@teacher_name", name_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@teacher_tid", tid_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@year", year_txt.Text);
            //cmd.Parameters.AddWithValue("@month", month_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@date", (DateTime.ParseExact(date, "dd/MM/yyyy", CultureInfo.InvariantCulture)).ToShortDateString());
            //cmd.Parameters.AddWithValue("@salary", salary_txt.Text);
            //cmd.Parameters.AddWithValue("@holiday", holiday_txt.Text);
            //cmd.Parameters.AddWithValue("@paid", paidsalary_txt.Text);
            //cmd.ExecuteNonQuery();
            teacherservice.teachersev obj = new teacherservice.teachersev();
            int a = obj.teacherpayinsert(name_ddl.SelectedItem.ToString(), tid_ddl.SelectedItem.ToString(), year_txt.Text, month_ddl.SelectedItem.ToString(), (DateTime.ParseExact(date, "dd/MM/yyyy", CultureInfo.InvariantCulture)).ToShortDateString(), salary_txt.Text, holiday_txt.Text, paidsalary_txt.Text);
            if (a > 0)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Salary Submitted Successfully!!!!');", true);
                blank();
            }
        }
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {
        tid_ddl.SelectedValue = null;
        year_txt.Text = "";
        salary_txt.Text = "";
        holiday_txt.Text = "";
        name_ddl.SelectedValue = null;
        paidsalary_txt.Text = "";
        month_ddl.SelectedValue = null;
    }

    public void classddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from teacher_info", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        name_ddl.DataSource = dt;
        name_ddl.DataTextField = "teacher_name";
        name_ddl.DataValueField = "teacher_id";
        name_ddl.DataBind();
        name_ddl.Items.Insert(0, new ListItem("Select Teacher Name", "0"));
    }
    protected void name_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from teacher_info where teacher_name='"+name_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        tid_ddl.DataSource = dt;
        tid_ddl.DataTextField = "teacher_tid";
        tid_ddl.DataValueField = "teacher_id";
        tid_ddl.DataBind();
        tid_ddl.Items.Insert(0, new ListItem("Select Teacher ID", "0"));
    }
    protected void tid_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        teacherid();
    }

    public void teacherid()
    {
        con.Open();
        SqlCommand da = new SqlCommand("select * from teacher_info where teacher_name='"+name_ddl.SelectedItem.ToString()+"' and teacher_tid='"+tid_ddl.SelectedItem.ToString()+"'", con);
        SqlDataReader dr = da.ExecuteReader();
        if (dr.Read())
        {
            salary_txt.Text = dr["salary"].ToString();
        }
        dr.Close();
        con.Close();
    }

    public void countholiday()
    {
        con.Open();
      
        
            SqlCommand cmd = new SqlCommand("select count(*) as count from teacher_leave where Teacher_name='" + name_ddl.SelectedItem.ToString() + "' and Teacher_id='" + tid_ddl.SelectedItem.ToString() + "' and month='" + month_ddl.SelectedItem.ToString() + "' and year='" + year_txt.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbl_count.Text = dr["count"].ToString();
            }
            holiday_txt.Text = lbl_count.Text;
            string deduct = (Convert.ToInt32(salary_txt.Text) / 30 * Convert.ToInt32(lbl_count.Text)).ToString();

            paidsalary_txt.Text = (Convert.ToInt32(salary_txt.Text) - (Convert.ToInt32(deduct))).ToString();
        
        con.Close();

    }
    protected void month_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        countholiday();
    }
}