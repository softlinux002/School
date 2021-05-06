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
public partial class Admin_employee_salary : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            type();
        }
    }

    public void type()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select distinct(type) from allempdetail", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        emptype_ddl.DataSource = dt;
        emptype_ddl.DataTextField = "type";
        emptype_ddl.DataBind();
        emptype_ddl.Items.Insert(0, "Select Type");
    }

    public void employeeid()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from allempdetail where type='" + emptype_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        empid_ddl.DataSource = dt;
        empid_ddl.DataTextField = "emp_id";
        empid_ddl.DataBind();
        empid_ddl.Items.Insert(0, "Select Employee ID");
    }
    protected void emptype_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

        employeeid();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from allempdetail where emp_id='" + empid_ddl.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            name_txt.Text = dr["emp_name"].ToString();
            salary_txt.Text = dr["salary"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void countholiday()
    {

        con.Open();
        SqlCommand cmd2 = new SqlCommand("Select * from emp_attendance where emp_id='" + empid_ddl.SelectedItem.ToString() + "' and emp_name='" + name_txt.Text + "'and year='" + year_txt.Text + "'and month='" + month_ddl.SelectedItem.ToString() + "'", con);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        if (!dr2.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Wrong Month Enter!!!!');", true);
            blank();
            dr2.Close();
        }
        else
        {
            dr2.Close();

            SqlCommand cmd = new SqlCommand("select count(*) as count from emp_attendance where emp_name='" + name_txt.Text + "' and emp_id='" + empid_ddl.SelectedItem.ToString() + "' and month='" + month_ddl.SelectedItem.ToString() + "' and year='" + year_txt.Text + "' and status='Leave'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbl_leave.Text = dr["count"].ToString();
            }
            dr.Close();

            SqlCommand cmd1 = new SqlCommand("select count(*) as count from emp_attendance where emp_name='" + name_txt.Text + "' and emp_id='" + empid_ddl.SelectedItem.ToString() + "' and month='" + month_ddl.SelectedItem.ToString() + "' and year='" + year_txt.Text + "' and status='Absent'", con);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                lbl_absent.Text = dr1["count"].ToString();
            }
            //dr1.Close();

            holiday_txt.Text = (Convert.ToInt32(lbl_leave.Text) + Convert.ToInt32(lbl_absent.Text)).ToString();
            string deduct = (Convert.ToInt32(salary_txt.Text) / 30 * Convert.ToInt32(holiday_txt.Text)).ToString();

            paidsalary_txt.Text = (Convert.ToInt32(salary_txt.Text) - (Convert.ToInt32(deduct))).ToString();
        }
        con.Close();
    }
    protected void month_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        countholiday();
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd=new SqlCommand("Select * from emp_salary where emp_id='"+empid_ddl.SelectedItem.ToString()+"' and emp_name='"+name_txt.Text+"'and year='"+year_txt.Text+"'and month='"+month_ddl.SelectedItem.ToString()+"'",con);
       cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
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
            lbl_dateeee.Text = currentdate.ToString("dd/MM/yyyy");
            SqlCommand cmd1 = new SqlCommand(@"insert into emp_salary values(@emp_type,@emp_id,@emp_name,@year,@month,@date,@total_salary,@holiday,@paid_salary)", con);
            cmd1.Parameters.AddWithValue("@emp_type", emptype_ddl.SelectedIndex.ToString());
            cmd1.Parameters.AddWithValue("@emp_id", empid_ddl.SelectedIndex.ToString());
            cmd1.Parameters.AddWithValue("@emp_name", name_txt.Text);
            cmd1.Parameters.AddWithValue("@year", year_txt.Text);
            cmd1.Parameters.AddWithValue("@month", month_ddl.SelectedItem.ToString());
            cmd1.Parameters.AddWithValue("@date", (DateTime.ParseExact(lbl_dateeee.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture)).ToShortDateString());
            cmd1.Parameters.AddWithValue("@total_salary",salary_txt.Text);
            cmd1.Parameters.AddWithValue("@holiday",holiday_txt.Text);
            cmd1.Parameters.AddWithValue("@paid_salary",paidsalary_txt.Text);
            cmd1.ExecuteNonQuery();
           
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Submitted!!!');", true);
            blank();
            con.Close();
        }
   }
    public void blank()
    {
        emptype_ddl.SelectedValue = null;
        name_txt.Text = "";
        year_txt.Text = "";
        month_ddl.SelectedValue = null;
        salary_txt.Text = "";
        holiday_txt.Text = "";
        paidsalary_txt.Text = "";
    }
}