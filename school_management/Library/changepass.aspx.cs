﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Library_changepass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from admin_login where password='" + Text_oldpass.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr["pk_id"].ToString();
            dr.Close();
            SqlCommand cmd1 = new SqlCommand("update admin_login set password ='" + text_confirm.Text + "'where pk_id='" + Label1.Text + "'", con);
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