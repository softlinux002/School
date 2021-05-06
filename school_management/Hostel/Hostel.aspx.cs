using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Hostel_Hostel : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from add_hostel where hostel_no='"+Text_hostelno.Text+"' or hostel_name='"+Text_hostelname.Text+"'",con);
        cmd1.ExecuteNonQuery();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            Response.Write("<script>alert('Record Already Exist')</script>");
            dr1.Close();

        }
        else
        {
            dr1.Close();
            SqlCommand cmd = new SqlCommand("add_hostel_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@hostel_id", "");
            cmd.Parameters.AddWithValue("@hostel_no", Text_hostelno.Text);
            cmd.Parameters.AddWithValue("@hostel_name", Text_hostelname.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Submitted')</script>");
            gridshow();
            blank();
        }
        con.Close();
    }
    public void blank()
    {
        Text_hostelno.Text = "";
        Text_hostelname.Text = "";
    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("add_hostel_procevent", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@hostel_id", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("add_hostel_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select_id");
        cmd.Parameters.AddWithValue("@hostel_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
      
        if (dr.Read())
        {
            Label_id.Text = dr["hostel_id"].ToString();
            Text_hostelno.Text = dr["hostel_no"].ToString();
            Text_hostelname.Text = dr["hostel_name"].ToString();
                
        }
      
        clr_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("add_hostel_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@hostel_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@hostel_no", Text_hostelno.Text);
        cmd.Parameters.AddWithValue("@hostel_name", Text_hostelname.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Data Updated')</script>");
        gridshow();
        blank();
        con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("add_hostel_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@hostel_id", l1.Text);
        cmd.ExecuteNonQuery();
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