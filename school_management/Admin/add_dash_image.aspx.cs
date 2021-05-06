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
public partial class Admin_add_dash_image : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
            blank();
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        string imgg = "";
        if (school_img.HasFile)
        {
            imgg = ("~/img/" + school_img.FileName);
            school_img.SaveAs(Server.MapPath("~/img/") + school_img.FileName);

            //SqlCommand cmd = new SqlCommand("dashimage_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@pk_id", "");
            //cmd.Parameters.AddWithValue("@image", imgg);
            //cmd.ExecuteNonQuery();
            settingswebref.setting obj = new settingswebref.setting();
            int a = obj.insert(imgg);
            if (a > 0)
                 {
                Response.Write("<script>alert('Data Submitted')</script>");
                }
            }

        gridshow();
        blank();
        con.Close();
    }

    public void blank()
    {
       
    }

    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("dashimage_event_proc", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        settingswebref.setting obj = new settingswebref.setting();
        GridView1.DataSource = obj.show();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();


        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("dashimage_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Image2.ImageUrl = dr["image"].ToString();
            dr.Close();
        }
        clr_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        Image2.Visible = true;
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();

        string str = System.IO.Path.GetExtension(school_img.FileName);
        string imgg = "";
        if (school_img.HasFile)
        {
            imgg = ("~/img/" + school_img.FileName);
            school_img.SaveAs(Server.MapPath("~/img/") + school_img.FileName);
        }
        else
        {
            imgg = Image2.ImageUrl;
        }

        //SqlCommand cmd = new SqlCommand("dashimage_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@image", imgg);
        //cmd.ExecuteNonQuery();
        settingswebref.setting obj = new settingswebref.setting();
        int a = obj.update(Convert.ToInt32(Label_id.Text), imgg);
        if (a > 0)
        {
            Response.Write("<script>alert('Data Updated')</script>");
            gridshow();
            blank();
        }
            con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
        Image2.Visible = false;
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        settingswebref.setting obj = new settingswebref.setting();
        int a = obj.delete(Convert.ToInt32(l1.Text));
        gridshow();
        Response.Write("<script>alert('Data Deleted')</script>");
        con.Close();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
   
}