using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Parent_parentMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["prnt_email"] == null || Session["prnt_pass"] == null || Session["prnt_type"] == null)
        {
            Response.Redirect("../Default.aspx");

        }
        else
        {
            Lbl_name.Visible = true;
            Lbl_name.Text = Session["prnt_name"].ToString();
        }


    }
    protected void Linkbutton_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("../Default.aspx");
    }
}
