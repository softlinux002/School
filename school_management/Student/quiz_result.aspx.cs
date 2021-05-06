using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Globalization;

public partial class Student_quiz_result : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            section();
            Result();
        }
    }

    public void section()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from quiz_section", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Section_ddl.DataSource = dt;
        Section_ddl.DataTextField = "section";
        Section_ddl.DataValueField = "pk_id";
        Section_ddl.DataBind();
        Section_ddl.Items.Insert(0, "Select Subject");
    }

    public void Result()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct subject,question,option1,option2,option3,option4,option5,correctoption,ans,email,password from result_view where subject='" + Section_ddl.SelectedItem.ToString() + "' and email='" + Session["std_email"].ToString() + "' and password='" + Session["std_pass"].ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Result();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
      
        
    }
}