using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_admissionanalysis : System.Web.UI.Page

{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            showcity();
        }

    }
    
    public void showcity()
    {
        //SqlDataAdapter da = new SqlDataAdapter("Select distinct city from studentinfo", con);
        SqlDataAdapter da = new SqlDataAdapter("studentinfo_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "class");
        da.SelectCommand.Parameters.AddWithValue("@student_id", "");
        da.SelectCommand.Parameters.AddWithValue("@admission_no", "");
        da.SelectCommand.Parameters.AddWithValue("@admissiondate", "");
        da.SelectCommand.Parameters.AddWithValue("@bloodgroup", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@father_name", "");
        da.SelectCommand.Parameters.AddWithValue("@mother_name", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", "");
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@dob", "");
        da.SelectCommand.Parameters.AddWithValue("@gender", "");
        da.SelectCommand.Parameters.AddWithValue("@country", "");
        da.SelectCommand.Parameters.AddWithValue("@state", "");
        da.SelectCommand.Parameters.AddWithValue("@city", "");
        da.SelectCommand.Parameters.AddWithValue("@address1", "");
        da.SelectCommand.Parameters.AddWithValue("@phone", "");
        da.SelectCommand.Parameters.AddWithValue("@email", "");
        da.SelectCommand.Parameters.AddWithValue("@password", "");
        da.SelectCommand.Parameters.AddWithValue("@s_id", "");
        da.SelectCommand.Parameters.AddWithValue("@image", "");
        da.SelectCommand.Parameters.AddWithValue("@document_name", "");
        da.SelectCommand.Parameters.AddWithValue("@doc_image", "");
        da.SelectCommand.Parameters.AddWithValue("@type", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        nostudent();
    }
    public void nostudent()
    {
        foreach (RepeaterItem rpt in Repeater1.Items)
        {
            Label l1 = (Label)rpt.FindControl("Label2");
            Label l2 = (Label)rpt.FindControl("Label3");
            con.Open();
            //SqlCommand cmd = new SqlCommand("Select count(*) as count from studentinfo where city='" + l1.Text + "'", con);
            SqlCommand cmd = new SqlCommand("studentinfo_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "total");
            cmd.Parameters.AddWithValue("@student_id", "");
            cmd.Parameters.AddWithValue("@admission_no", "");
            cmd.Parameters.AddWithValue("@admissiondate", "");
            cmd.Parameters.AddWithValue("@bloodgroup", "");
            cmd.Parameters.AddWithValue("@student_name", "");
            cmd.Parameters.AddWithValue("@father_name", "");
            cmd.Parameters.AddWithValue("@mother_name", "");
            cmd.Parameters.AddWithValue("@batch", "");
            cmd.Parameters.AddWithValue("@stream", "");
            cmd.Parameters.AddWithValue("@class", "");
            cmd.Parameters.AddWithValue("@section", "");
            cmd.Parameters.AddWithValue("@roll_no", "");
            cmd.Parameters.AddWithValue("@dob", "");
            cmd.Parameters.AddWithValue("@gender", "");
            cmd.Parameters.AddWithValue("@country", "");
            cmd.Parameters.AddWithValue("@state", "");
            cmd.Parameters.AddWithValue("@city", l1.Text);
            cmd.Parameters.AddWithValue("@address1", "");
            cmd.Parameters.AddWithValue("@phone", "");
            cmd.Parameters.AddWithValue("@email", "");
            cmd.Parameters.AddWithValue("@password", "");
            cmd.Parameters.AddWithValue("@s_id", "");
            cmd.Parameters.AddWithValue("@image", "");
            cmd.Parameters.AddWithValue("@document_name", "");
            cmd.Parameters.AddWithValue("@doc_image", "");
            cmd.Parameters.AddWithValue("@type", "");
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                l2.Text = dr["Count"].ToString();
                dr.Close();
            }
            con.Close();
        }
    }

}