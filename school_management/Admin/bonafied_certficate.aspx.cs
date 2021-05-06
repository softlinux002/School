using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_bonafied_certficate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
            schoolname();
        }
    }

    public void gridshow()
    {
        con.Open();
        string query = "select ident_current('bonafied_tbl')";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lbl_pkid.Text = dr[0].ToString();
        }
        dr.Close();
        con.Close();
    }

    public void schoolname()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("bonafied_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "bonafied");
        cmd.Parameters.AddWithValue("@pk_id", lbl_pkid.Text);
        cmd.Parameters.AddWithValue("@school_name", "");
        cmd.Parameters.AddWithValue("@student_name", "");
        cmd.Parameters.AddWithValue("@father_name", "");
        cmd.Parameters.AddWithValue("@clas", "");
        cmd.Parameters.AddWithValue("@fee", "");
        cmd.Parameters.AddWithValue("@date", "");
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lbl_schoolname.Text = dr["school_name"].ToString();
            lbl_schoolname1.Text = dr["school_name"].ToString();
            lbl_studentname.Text = dr["student_name"].ToString();
            lbl_fathername.Text = dr["father_name"].ToString();
            lbl_class.Text = dr["clas"].ToString();
            lbl_fee.Text = dr["fee"].ToString();
            lbl_date1.Text = dr["date"].ToString();
            lbl_date.Text = dr["date"].ToString();
        }
        dr.Close();
        con.Close();
    }
}