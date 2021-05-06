using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_createemployeetype : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();

        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {


        con.Open();
        //SqlCommand com = new SqlCommand("employeetype_proc", con);
        //com.CommandType = CommandType.StoredProcedure;
        //com.Parameters.AddWithValue("@action", "insert");
        //com.Parameters.AddWithValue("@pk_id", "");
        //com.Parameters.AddWithValue("@name", Tb_rname.Text);
        //com.ExecuteNonQuery();
        employee.employeeservice obj = new employee.employeeservice();
        int a = obj.insert(Tb_rname.Text);
        if (a > 0)
        {
            show();
            blank();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Type  are Submitted Sucessfully !!!!');", true);
        }
        
    }

    public void blank()
    {
        Tb_rname.Text = "";
    }

    public void show()
    {
        employee.employeeservice obj = new employee.employeeservice();
        GridView1.DataSource = obj.show();
        GridView1.DataBind();
    }


    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("employeetype_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select_id");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Tb_rname.Text = dr["name"].ToString();
            dr.Close();
        }
        //export_excel.Visible = false;
       clr_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();

    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        clr_btn.Visible = false;
        submit_btn.Visible = true;
        upd_btn.Visible = false;
        blank();
    }


    protected void upd_btn_Click(object sender, EventArgs e)
    {
        //con.Open();
        //SqlCommand com = new SqlCommand("employeetype_proc", con);
        //com.CommandType = CommandType.StoredProcedure;
        //com.Parameters.AddWithValue("@action", "update");
        //com.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //com.Parameters.AddWithValue("@name", Tb_rname.Text);
        //com.ExecuteNonQuery();
        //con.Close();
        employee.employeeservice obj = new employee.employeeservice();
        int a = obj.update(Convert.ToInt32(Label_id.Text), Tb_rname.Text);
        if (a > 0)
        {
            blank();
            show();
            submit_btn.Visible = true;
            upd_btn.Visible = false;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Type name Updated Sucessfully !!!!');", true);
        }
      }

    protected void btn_delete_Click(object sender, EventArgs e)
    {

        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("employeetype_procevent", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        employee.employeeservice obj = new employee.employeeservice();
        int a = obj.delete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            
            Response.Write("<script>alert('Data Deleted')</script>");
            show();
        }
            con.Close();

    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        show();
    }
}