using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.IO;
public partial class Admin_hostelstudentrecord : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCountries(string prefixText)
    {

        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);

            con.Open();
            string QueryString = prefixText;
            string[] parts = QueryString.Split(' ');
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("select distinct student_id from student_hostelinfo WHERE (");
            for (int i = 0; i < parts.Length; i++)
            {
                sb.AppendFormat("(student_id like '%{0}%')", parts[i]);

                if (i != parts.Length - 1)
                {
                    sb.Append(" AND ");
                }

            }
            sb.Append(")");
            string output = sb.ToString();
            SqlCommand cm = new SqlCommand(output, con);
            SqlDataAdapter da = new SqlDataAdapter(output, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            List<string> CountryNames = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                CountryNames.Add(dt.Rows[i]["student_id"].ToString());
            }
            return CountryNames;
            con.Close();
        }

    }

    protected void student_ddl_TextChanged(object sender, EventArgs e)
    {
        con.Open();


        SqlCommand cmd = new SqlCommand("select * from student_hostelinfo_fees_view where student_id='" + student_ddl.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Panel1.Visible = true;
            Text_sname.Text = dr["student_name"].ToString();
            Lbl_father.Text = dr["father_name"].ToString();
            Lbl_gender.Text = dr["gender"].ToString();
            Lbl_admitdate.Text = dr["date"].ToString();
            Lbl_hostel.Text = dr["hostel_name"].ToString();
            Lbl_type.Text = dr["type"].ToString();
            Lbl_roomno.Text = dr["room_no"].ToString();
            Lbl_seat.Text = dr["seat"].ToString();
            Lbl_charge.Text = dr["Charge"].ToString();
            Lbl_mobile.Text = dr["mobile"].ToString();
            Lbl_date.Text = dr["date_of_pay"].ToString();
            Lbl_amount.Text = dr["amount_pay"].ToString();
            Lbl_remaining.Text = dr["remaining"].ToString();
            dr.Close();

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Please Enter Valid Id!!!!');", true);
           
        }

        con.Close();
    }
 
}