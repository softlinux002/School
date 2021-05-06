using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            grid();
            schoolname();

        }

    }
    public void grid()
    {
        con.Open();
        string query = "Select ident_current('participationcertificate')";
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
       
        SqlCommand cmd = new SqlCommand("participationcertificate_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "school");
        cmd.Parameters.AddWithValue("@pk_id", lbl_pkid.Text);
        cmd.Parameters.AddWithValue("@schoolname", "");
        cmd.Parameters.AddWithValue("@student_name", "");
        cmd.Parameters.AddWithValue("@participation_title", "");
        cmd.Parameters.AddWithValue("@description", "");
        cmd.Parameters.AddWithValue("@date", "");
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lbl_schoolname.Text = dr["schoolname"].ToString();
            lbl_studentname.Text = dr["student_name"].ToString();
            lbl_title.Text = dr["participation_title"].ToString();
            lbl_desc.Text = dr["description"].ToString();
            lbl_date.Text = dr["date"].ToString();
        }
        dr.Close();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}