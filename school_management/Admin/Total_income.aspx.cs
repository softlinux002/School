using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_Total_income : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //splitmonth();
        }

    }
    public void splitmonth()
    {
        con.Open();

        if (ddl_month.SelectedItem.ToString() == "January")
        {
            lbl_month1.Text = "1";
        }
        else if (ddl_month.SelectedItem.ToString() == "February")
        {
            lbl_month1.Text = "2";
        }
        else if (ddl_month.SelectedItem.ToString() == "March")
        {
            lbl_month1.Text = "3";
        }
        else if (ddl_month.SelectedItem.ToString() == "April")
        {
            lbl_month1.Text = "4";
        }
        else if (ddl_month.SelectedItem.ToString() == "May")
        {
            lbl_month1.Text = "5";
        }
        else if (ddl_month.SelectedItem.ToString() == "June")
        {
            lbl_month1.Text = "6";
        }
        else if (ddl_month.SelectedItem.ToString() == "July")
        {
            lbl_month1.Text = "7";
        }
        else if (ddl_month.SelectedItem.ToString() == "August")
        {
            lbl_month1.Text = "8";
        }
        else if (ddl_month.SelectedItem.ToString() == "September")
        {
            lbl_month1.Text = "9";
        }
        else if (ddl_month.SelectedItem.ToString() == "October")
        {
            lbl_month1.Text = "10";
        }
        else if (ddl_month.SelectedItem.ToString() == "November")
        {
            lbl_month1.Text = "11";
        }
        else if (ddl_month.SelectedItem.ToString() == "December")
        {
            lbl_month1.Text = "12";
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Please Select Month!!!!');", true);
          
        }
        //SqlCommand cmd1 = new SqlCommand("Select DatePart(MM,date) as DateMonth from fees_history where pk_id='" + Label_id.Text + "'", con);
        //SqlDataReader dr1 = cmd1.ExecuteReader();
        SqlCommand comd = new SqlCommand("select * from fees_history where MONTH(date)='" + lbl_month1.Text + "' and YEAR(date)='" + Text_year.Text + "'", con);
        SqlDataReader ddr = comd.ExecuteReader();
        if (ddr.Read())
        {
            ddr.Close();
            SqlCommand cmmd = new SqlCommand("select sum(payment) as pay from fees_history where MONTH(date)='" + lbl_month1.Text + "' and YEAR(date)='" + Text_year.Text + "'", con);
            SqlDataReader dr2 = cmmd.ExecuteReader();
            if (dr2.Read())
            {
                total_txt.Text = dr2["pay"].ToString();
            }
        }
        else
        {
            ddr.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Record Not Found!!!!');", true);
         
        }
        con.Close();
        //string date = Convert.ToDateTime(Lbl_date.Text).ToShortDateString();
    }

    public void countexpenditure()
    {
        con.Open();
        if (ddl_month1.SelectedItem.ToString() == "January")
        {
            lbl_month11.Text = "1";
        }
        else if (ddl_month1.SelectedItem.ToString() == "February")
        {
            lbl_month11.Text = "2";
        }
        else if (ddl_month1.SelectedItem.ToString() == "March")
        {
            lbl_month11.Text = "3";
        }
        else if (ddl_month1.SelectedItem.ToString() == "April")
        {
            lbl_month11.Text = "4";
        }
        else if (ddl_month1.SelectedItem.ToString() == "May")
        {
            lbl_month11.Text = "5";
        }
        else if (ddl_month1.SelectedItem.ToString() == "June")
        {
            lbl_month11.Text = "6";
        }
        else if (ddl_month1.SelectedItem.ToString() == "July")
        {
            lbl_month11.Text = "7";
        }
        else if (ddl_month1.SelectedItem.ToString() == "August")
        {
            lbl_month11.Text = "8";
        }
        else if (ddl_month1.SelectedItem.ToString() == "September")
        {
            lbl_month11.Text = "9";
        }
        else if (ddl_month1.SelectedItem.ToString() == "October")
        {
            lbl_month11.Text = "10";
        }
        else if (ddl_month1.SelectedItem.ToString() == "November")
        {
            lbl_month11.Text = "11";
        }
        else if (ddl_month1.SelectedItem.ToString() == "December")
        {
            lbl_month11.Text = "12";
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Please Select Month!!!!');", true);
            
        }

        SqlCommand comd = new SqlCommand("select * from emp_salary where MONTH(date)='" + lbl_month11.Text + "' and YEAR(date)='" + text_year1.Text + "'", con);
        SqlDataReader ddr = comd.ExecuteReader();
        if (ddr.Read())
        {
            ddr.Close();
            SqlCommand cmmd = new SqlCommand("select sum(paid_salary) as pay from emp_salary where MONTH(date)='" + lbl_month11.Text + "' and YEAR(date)='" + text_year1.Text + "'", con);
            SqlDataReader dr2 = cmmd.ExecuteReader();
            if (dr2.Read())
            {
                lbl_empsalary.Text = dr2["pay"].ToString();
            }
            dr2.Close();

            SqlCommand cmd = new SqlCommand("select sum(paid) as pay from salary_tbl where MONTH(date)='" + lbl_month11.Text + "' and YEAR(date)='" + text_year1.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbl_teachsalary.Text = dr["pay"].ToString();
            }
            dr.Close();
            text_total1.Text = (Convert.ToInt32(lbl_empsalary.Text) + Convert.ToInt32(lbl_teachsalary.Text)).ToString();
        }
        else
        {
            ddr.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Not Found!!!!');", true);
            
        }
        con.Close();
    }

    public void yearincome()
    {
        con.Open();
        SqlCommand comd = new SqlCommand("select * from fees_history where YEAR(date)='" + text_year2.Text + "'", con);
        SqlDataReader ddr = comd.ExecuteReader();
        if (ddr.Read())
        {
            ddr.Close();
            SqlCommand cmmd = new SqlCommand("select sum(payment) as pay from fees_history where YEAR(date)='" + text_year2.Text + "'", con);
            SqlDataReader dr2 = cmmd.ExecuteReader();
            if (dr2.Read())
            {
                text_total2.Text = dr2["pay"].ToString();
            }
        }
        else
        {
            ddr.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Not Found!!!!');", true);
           
        }
        con.Close();
    }

    public void yearexpenditure()
    {
        con.Open();
        SqlCommand comd = new SqlCommand("select * from emp_salary where YEAR(date)='" + Text_year3.Text + "'", con);
        SqlDataReader ddr = comd.ExecuteReader();
        if (ddr.Read())
        {
            ddr.Close();
            SqlCommand cmmd = new SqlCommand("select sum(paid_salary) as pay from emp_salary where YEAR(date)='" + Text_year3.Text + "'", con);
            SqlDataReader dr2 = cmmd.ExecuteReader();
            if (dr2.Read())
            {
                lbl_empsalary.Text = dr2["pay"].ToString();
            }
            dr2.Close();

            SqlCommand cmd = new SqlCommand("select sum(paid) as pay from salary_tbl where YEAR(date)='" + Text_year3.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbl_teachsalary.Text = dr["pay"].ToString();
            }
            dr.Close();
        
        text_total3.Text = (Convert.ToInt32(lbl_empsalary.Text) + Convert.ToInt32(lbl_teachsalary.Text)).ToString();
        }
        else
        {
            ddr.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Not Found!!!!');", true);
           
        }
        con.Close();
    }

    protected void Text_year3_TextChanged(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        yearexpenditure();
    }

    protected void Text_year2_TextChanged(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        yearincome();
    }

    protected void Text_year_TextChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        splitmonth();
    }

    protected void Text_year1_TextChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        countexpenditure();
    }

   

   

    

    

    protected void bookcost_btn_Click(object sender, EventArgs e)
    {
        con.Open();
       
        SqlDataAdapter da = new SqlDataAdapter("select * from add_books", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        DateTime currentdate = DateTime.Now;
        string date = currentdate.ToShortDateString();
        foreach (GridViewRow row in GridView1.Rows)
        {
            Label cost = (Label)row.FindControl("lbl_cost");
            Label copy = (Label)row.FindControl("lbl_copy");
            
            lbl_totalbookcost.Text = (Convert.ToInt32(cost.Text)*Convert.ToInt32(copy.Text)).ToString();

            SqlCommand cmd = new SqlCommand("insert into dummy_bookcost values('"+lbl_totalbookcost.Text+"','"+date+"')", con);
            cmd.ExecuteNonQuery();
        }

        SqlCommand cmd1 = new SqlCommand("select sum(cost) as count from dummy_bookcost where date='"+date+"'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            text_bookcost.Text = dr["count"].ToString();
        }
        dr.Close();
        SqlCommand cmd3 = new SqlCommand("truncate table dummy_bookcost", con);
        cmd3.ExecuteNonQuery();
        con.Close();
    }
}