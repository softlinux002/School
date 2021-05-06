using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Teacher_TeacherMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["teach_email"] == null || Session["teach_pass"] == null || Session["teacher_type"] == null)
        {
            Response.Redirect("../Default.aspx");

        }
        else
        {
            Lbl_teachername.Visible = true;
            Image_tchr.Visible = true;
            Lbl_teachername.Text = Session["teacher_name"].ToString();
            Image_tchr.ImageUrl = Session["teacher_image"].ToString();
        
        }
    }
    protected void Linkbutton_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("../Default.aspx");
    }

}
