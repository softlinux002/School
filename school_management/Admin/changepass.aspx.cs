using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_changepass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("select * from admin_login where password='" + Text_oldpass.Text + "'", con);
        SqlCommand cmd = new SqlCommand("adminlogin_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "passchange");
        cmd.Parameters.AddWithValue("@pk_id", "");
        cmd.Parameters.AddWithValue("@username ", "");
        cmd.Parameters.AddWithValue("@password", Text_oldpass.Text);
        cmd.Parameters.AddWithValue("@type", "");
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr["pk_id"].ToString();
            dr.Close();
            //SqlCommand cmd1 = new SqlCommand("update admin_login set password ='" + text_confirm.Text + "'where pk_id='" + Label1.Text + "'", con);
            SqlCommand cmd1 = new SqlCommand("adminlogin_proc", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@action", "update");
            cmd1.Parameters.AddWithValue("@pk_id", Label1.Text);
            cmd1.Parameters.AddWithValue("@username ", "");
            cmd1.Parameters.AddWithValue("@password", text_confirm.Text);
            cmd1.Parameters.AddWithValue("@type", "");
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