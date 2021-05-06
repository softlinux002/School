using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_clerk_passchange : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        if (Session["type"].ToString() == "Clerk")
        {
            con.Open();
         
            SqlCommand cmd = new SqlCommand("allempdetail_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "allemppass");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@type ", "Clerk");
            cmd.Parameters.AddWithValue("@emp_no", "");
            cmd.Parameters.AddWithValue("@designation", "");
            cmd.Parameters.AddWithValue("@doj", "");
            cmd.Parameters.AddWithValue("@emp_name", "");
            cmd.Parameters.AddWithValue("@father_name", "");
            cmd.Parameters.AddWithValue("@gender", "");
            cmd.Parameters.AddWithValue("@dob", "");
            cmd.Parameters.AddWithValue("@country", "");
            cmd.Parameters.AddWithValue("@state", "");
            cmd.Parameters.AddWithValue("@city", "");
            cmd.Parameters.AddWithValue("@address", "");
            cmd.Parameters.AddWithValue("@mobile", "");
            cmd.Parameters.AddWithValue("@email", "");
            cmd.Parameters.AddWithValue("@maritial_status", "");
            cmd.Parameters.AddWithValue("@blood_group", "");
            cmd.Parameters.AddWithValue("@total_experience_year", "");
            cmd.Parameters.AddWithValue("@total_exp_month", "");
            cmd.Parameters.AddWithValue("@experiencedetail", "");
            cmd.Parameters.AddWithValue("@salary", "");
            cmd.Parameters.AddWithValue("@password", Text_oldpass.Text);
            cmd.Parameters.AddWithValue("@emp_id", "");
            cmd.Parameters.AddWithValue("designation", "");
            cmd.Parameters.AddWithValue("@image", "");
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr["pk_id"].ToString();
                dr.Close();
               
                SqlCommand cmd1 = new SqlCommand("allempdetail_proc", con);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@action", "updatepass");
                cmd1.Parameters.AddWithValue("@pk_id", Label1.Text);
                cmd1.Parameters.AddWithValue("@type ", "");
                cmd1.Parameters.AddWithValue("@emp_no", "");
                cmd1.Parameters.AddWithValue("@designation", "");
                cmd1.Parameters.AddWithValue("@doj", "");
                cmd1.Parameters.AddWithValue("@emp_name", "");
                cmd1.Parameters.AddWithValue("@father_name", "");
                cmd1.Parameters.AddWithValue("@gender", "");
                cmd1.Parameters.AddWithValue("@dob", "");
                cmd1.Parameters.AddWithValue("@country", "");
                cmd1.Parameters.AddWithValue("@state", "");
                cmd1.Parameters.AddWithValue("@city", "");
                cmd1.Parameters.AddWithValue("@address", "");
                cmd1.Parameters.AddWithValue("@mobile", "");
                cmd1.Parameters.AddWithValue("@email", "");
                cmd1.Parameters.AddWithValue("@maritial_status", "");
                cmd1.Parameters.AddWithValue("@blood_group", "");
                cmd1.Parameters.AddWithValue("@total_experience_year", "");
                cmd1.Parameters.AddWithValue("@total_exp_month", "");
                cmd1.Parameters.AddWithValue("@experiencedetail", "");
                cmd1.Parameters.AddWithValue("@salary", "");
                cmd1.Parameters.AddWithValue("@password", text_confirm.Text);
                cmd1.Parameters.AddWithValue("@emp_id", "");
                cmd1.Parameters.AddWithValue("designation", "");
                cmd1.Parameters.AddWithValue("@image", "");
                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('Password Change Successfully')</script>");

            }
            else
            {

                Response.Write("<script>alert('Old Password Not Matched')</script>");
            }


            con.Close();
        }

    }

}