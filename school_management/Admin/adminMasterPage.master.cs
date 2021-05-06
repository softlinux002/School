using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_adminMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ad_name"] == null || Session["ad_pass"] == null || Session["type"] == null && Session["employee_email"]==null)
        {
            Response.Redirect("../Default.aspx");
        }
        
        if (Session["type"].ToString() == "Librarian")
        {
            
            Image1.ImageUrl = Session["employee_image"].ToString();
            Label1.Text = Session["ad_name"].ToString();
            Pnl_library.Visible = true;
            Pnl_admin.Visible = false;
            Pnl_transport.Visible = false;
            Panel_hostel.Visible = false;
            Pnl_clerk.Visible = false;
        }
        else if (Session["type"].ToString() == "Hostel")
        {
            Image1.ImageUrl = Session["employee_image"].ToString();
            Label1.Text = Session["ad_name"].ToString();
            Pnl_library.Visible = false;
            Pnl_admin.Visible = false;
            Pnl_transport.Visible = false;
            Panel_hostel.Visible = true;
            Pnl_clerk.Visible = false;
        }
        else if (Session["type"].ToString() == "Clerk")
        {
            Image1.ImageUrl = Session["employee_image"].ToString();
            Label1.Text = Session["ad_name"].ToString();
            Pnl_library.Visible = false;
            Pnl_admin.Visible = true;
            Pnl_transport.Visible = true;
            Panel_hostel.Visible = false;
            Pnl_clerk.Visible = true;
            Pnl_adminpass.Visible = false;
        }
        else if (Session["type"].ToString()=="Demo")
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
        else
        {
            showteacher();
            showimage();
            Label1.Text = Session["ad_name"].ToString();
            Pnl_library.Visible = true;
            Pnl_admin.Visible = true;
            Pnl_transport.Visible = true;
            Panel_hostel.Visible = true;
            Pnl_clerk.Visible = true;
            Pnl_librarypass.Visible = false;
            Pnl_hostel.Visible = false;
            Pnl_clerkpass.Visible = false;
        }

        if (!IsPostBack)
        {
           
            shownotification();
        }

    }
    protected void Linkbutton_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("../Default.aspx");
    }
    public void showimage()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select top 1 * from dashimage order by pk_id desc", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Image1.ImageUrl = dr["image"].ToString();
            dr.Close();    
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void shownotification()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select count(*) as count from add_review", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_notification.Text = dr["Count"].ToString();
            dr.Close();
        }
    }
    public void showteacher()
    {
        
        SqlDataAdapter da = new SqlDataAdapter("Select * from teacher_info", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    LinkButton lnk = (LinkButton)sender;
    //    RepeaterItem itm = (RepeaterItem)lnk.NamingContainer;
    //    LinkButton l1 = (LinkButton)itm.FindControl("LinkButton2");
    //    Response.Redirect("Showteacherfulltimetabledetail.aspx?id=" + Server.UrlDecode(l1.Text));
    //}
    

}
