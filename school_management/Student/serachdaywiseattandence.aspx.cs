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
public partial class Student_serachdaywiseattandence : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["std_email"] == null || Session["std_pass"] == null || Session["std_type"] == null)
            {
                Response.Redirect("../Default.aspx");

            }
            else
            {
                show();
            }
        }
    }
        public void show()
        {
        SqlDataAdapter da=new SqlDataAdapter("Select * from studentinfo where student_name='"+Session["std_name"].ToString()+"' and email='"+Session["std_email"].ToString()+"'",con);
            DataTable dt=new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count>0)
            {
                Text_batch.Text=dt.Rows[0]["batch"].ToString();
            }
        }
    
   

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
      
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }

    protected void Text_tdate_TextChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from dailyattandance where name='" + Session["std_name"].ToString() + "' and batch ='" + Text_batch.Text + "' and date BETWEEN '" + Text_fdate.Text + "' and '" + Text_tdate.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Panel1.Visible = true;
    }
}