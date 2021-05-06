using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_search_employee_attendance : System.Web.UI.Page
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

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void employeeid()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from allempdetail where type='"+emptype_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        emp_id_ddl.DataSource = dt;
        emp_id_ddl.DataTextField = "emp_id";
        emp_id_ddl.DataValueField = "pk_id";
        emp_id_ddl.DataBind();
        emp_id_ddl.Items.Insert(0, "Select Employee ID");

    }

    protected void emptype_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        employeeid();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from allempdetail where emp_id='" + emp_id_ddl.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_name.Text = dr["emp_name"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();

    }

    public void gridshow()
    {

        SqlDataAdapter da = new SqlDataAdapter("Select * from emp_attendance where emp_id='" + emp_id_ddl.SelectedItem.ToString() + "'and emp_name='" + Text_name.Text + "' and Month='" + ddl_month.SelectedItem.ToString() + "' and year='" + text_year.Text + "' and type='"+emptype_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    //public void Present()
    //{

    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("Select count(status) as count from teacherdailyattendance where teacher_name='" + DropDownList1.SelectedItem.ToString() + "'and status='Present'", con);
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    if (dr.Read())
    //    {

    //        Label1.Text = dr["count"].ToString();
    //        dr.Close();
    //    }
    //    else
    //    {
    //        dr.Close();
    //        Label1.Text = "0";
    //    }
    //    cmd.ExecuteNonQuery();
    //    SqlCommand cmd1 = new SqlCommand("Select count(status) as count from teacherdailyattendance where teacher_name='" + DropDownList1.SelectedItem.ToString() + "'and status='Absent'", con);
    //    cmd1.ExecuteNonQuery();
    //    SqlDataReader dr1 = cmd1.ExecuteReader();
    //    if (dr1.Read())
    //    {

    //        Label2.Text = dr1["count"].ToString();
    //        dr.Close();
    //    }
    //    else
    //    {
    //        dr.Close();
    //        Label2.Text = "0";
    //    }
    //    con.Close();

    //}



    
    protected void text_year_TextChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        gridshow();
        Leave();
        Absent();
        Present();

    }
    public void Leave()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select count(status) as count from emp_attendance where emp_name='" + Text_name.Text + "'and status='Leave' and month='" + ddl_month.SelectedItem.ToString() + "' and year='" + text_year.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Label1.Text = dr["count"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void Absent()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select count(status) as count from emp_attendance where emp_name='" + Text_name.Text + "'and status='Absent' and month='" + ddl_month.SelectedItem.ToString() + "' and year='" + text_year.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Label2.Text = dr["count"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void Present()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select count(status) as count from emp_attendance where emp_name='" + Text_name.Text + "'and status='Present' and month='"+ddl_month.SelectedItem.ToString()+"' and year='"+text_year.Text+"'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Label3.Text = dr["count"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }
}