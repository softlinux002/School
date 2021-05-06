using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_StudentMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["std_email"] == null || Session["std_pass"] == null || Session["std_type"] == null)
        {
            Response.Redirect("../Default.aspx");

        }
        else
        {
            Lbl_name.Visible = true;
            Image_std.Visible = true;
            Image_std.ImageUrl = Session["std_image"].ToString();
            Lbl_name.Text = Session["std_name"].ToString();
        
        }
    }
    protected void Linkbutton_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("../Default.aspx");
    }
}
