using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class demo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            school();
            //show();
        }
    }
    public void school()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select top 1 * from school_info order by pk_id desc", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Image2.ImageUrl = dr["image"].ToString();
        }
        dr.Close();
        cmd.ExecuteNonQuery();
        con.Close();
    }

   
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from demoadmin where username='" + Text_user.Text + "' and password='" + Text_pass.Text + "'and type='Demo'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_user.Text = dr["username"].ToString();
            Text_pass.Text = dr["password"].ToString();
            Lbl_type.Text = dr["type"].ToString();
            Session["ad_name"] = Text_user.Text;
            Session["ad_pass"] = Text_pass.Text;
            Session["type"] = Lbl_type.Text;
            Response.Redirect("~/Admin/Demodash.aspx");

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('incorrect Mail and Password!!');", true);
        }

    }
    //public void show()
    //{
    //    SqlDataAdapter da = new SqlDataAdapter("Select * from demoadmin", con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    GridView1.DataSource = dt;
    //    GridView1.DataBind();
    //}

    protected void LinkButton1_click(object sender, EventArgs e)
    {
        ImageButton lnk = (ImageButton)sender;
        GridViewRow grd = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)grd.FindControl("Label4");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from demoadmin where pk_id='" + l1.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr=cmd.ExecuteReader();
        if (dr.Read())
        {
            lbl_id.Text = dr["pk_id"].ToString();
            Text_user.Text = dr["username"].ToString();
            Text_pass.Text = dr["password"].ToString();
            dr.Close();
        }
        //Panel1.Visible = true;
        LinkButton3.Visible = true;
        con.Close();
    }
   
}