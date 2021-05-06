using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_teacherdailyattandencesearch : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            teachername();
            
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void teachername()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from teacher_info", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "teacher_tid";
        DropDownList1.DataValueField = "teacher_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Select Teacher ID");
    
    }
  
    public void gridshow()
    {

        SqlDataAdapter da = new SqlDataAdapter("Select * from teacherdailyattendance where teacher_id='" + DropDownList1.SelectedItem.ToString() + "'and teacher_name='"+Text_name.Text+"' and Month='" + ddl_month.SelectedItem.ToString() + "' and year='" + text_year.Text + "'", con);
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


    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from teacher_info where teacher_tid='" + DropDownList1.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_name.Text = dr["teacher_name"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();

    }
    protected void text_year_TextChanged(object sender, EventArgs e)
    {
        //gridshow();
        Leave();
        Absent();
        Present();
        
    }
    public void Leave()
    { 
        con.Open();
        SqlCommand cmd = new SqlCommand("Select count(status) as count from teacherdailyattendance where teacher_name='" + Text_name.Text + "'and status='Leave'", con);
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
        SqlCommand cmd = new SqlCommand("Select count(status) as count from teacherdailyattendance where teacher_name='" + Text_name.Text + "'and status='Absent'", con);
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
        SqlCommand cmd = new SqlCommand("Select count(status) as count from teacherdailyattendance where teacher_name='" + Text_name.Text + "'and status='Present'", con);
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