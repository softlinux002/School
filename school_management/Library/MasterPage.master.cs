using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Library_MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["library_email"] == null || Session["Lib_pass"] == null || Session["emp_type"] == null)
        {
            Response.Redirect("../Default.aspx");

        }
        else
        {
            Lbl_name.Visible = true;
            Image_emp.Visible = true;
            Lbl_name.Text = Session["emp_name"].ToString();
            Image_emp.ImageUrl = Session["emp_image"].ToString();

        }
    }
    protected void Linkbutton_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("../Default.aspx");
    }
}
