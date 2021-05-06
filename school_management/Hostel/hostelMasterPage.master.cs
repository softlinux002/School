using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hostel_hostelMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["hostelincharge_email"] == null || Session["hostelincharge_pass"] == null || Session["hincharge_type"] == null)
        {
            Response.Redirect("../Default.aspx");

        }
        else
        {
            Lbl_name.Visible = true;
            Image_std.Visible = true;
            Image_std.ImageUrl = Session["hincharge_image"].ToString();
            Lbl_name.Text = Session["hincharge_name"].ToString();

        }
    }
    protected void Linkbutton_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("../Default.aspx");
    }
}
