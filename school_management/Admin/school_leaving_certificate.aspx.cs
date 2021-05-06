using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_school_leaving_certificate : System.Web.UI.Page
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
        string query = "select ident_current('SLC')";
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
        string query = "select * from SLC where pk_id='" + lbl_pkid.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lbl_schoolname.Text = dr["school_name"].ToString();
            lbl_studentname.Text = dr["student_name"].ToString();
            lbl_fathername.Text = dr["father_name"].ToString();
            lbl_class.Text = dr["class"].ToString();
            lbl_firstadmisiondate.Text = dr["admission_date"].ToString();
            lbl_dob.Text = dr["dob"].ToString();
            lbl_applydate.Text = dr["date_of_application"].ToString();
            lbl_date.Text = dr["date_of_issue"].ToString();
            lbl_reason.Text = dr["reason"].ToString();
        }
        dr.Close();
        con.Close();
    }
}