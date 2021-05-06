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

public partial class Admin_insert_employee : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();
            role1();
        }
    }
    protected void btnSubmit_click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("adduser_proc", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@Action", "insert");
        com.Parameters.AddWithValue("@pk_id", "");
        com.Parameters.AddWithValue("@FName", Tb_fname.Text);
        com.Parameters.AddWithValue("@LName", tb_lname.Text);
        com.Parameters.AddWithValue("@Email", tb_email.Text);
        com.Parameters.AddWithValue("@Uname", Uname_txt.Text);
        com.Parameters.AddWithValue("@Type", ddl_type.SelectedItem.ToString());
        com.Parameters.AddWithValue("@Password", password_txt.Text);
        com.Parameters.AddWithValue("@RoleName", ddlrname.SelectedItem.ToString());
        com.Parameters.AddWithValue("@Address1", tb_address1.Text);
        com.Parameters.AddWithValue("@Mobile", tb_no.Text);
        com.Parameters.AddWithValue("@City", tb_city.Text);
        com.Parameters.AddWithValue("@State", tb_state.Text);
        com.Parameters.AddWithValue("@Country", tb_country.Text);
        com.Parameters.AddWithValue("@PCode", tb_postal.Text);
        com.Parameters.AddWithValue("@date", DateTime.Now.ToString());
        com.ExecuteNonQuery();
        con.Close();
        show();
        blank();
        string message = "alert('Record Added Successfully')";
        ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
    }
    protected void upd_btn_click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("adduser_proc", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@Action", "update");
        com.Parameters.AddWithValue("@pk_id", Lbl_Idd.Text);
        com.Parameters.AddWithValue("@FName", Tb_fname.Text);
        com.Parameters.AddWithValue("@LName", tb_lname.Text);
        com.Parameters.AddWithValue("@Email", tb_email.Text);
        com.Parameters.AddWithValue("@Uname", Uname_txt.Text);
        com.Parameters.AddWithValue("@Type", ddl_type.SelectedItem.ToString());
        com.Parameters.AddWithValue("@Password", password_txt.Text);
        com.Parameters.AddWithValue("@RoleName", ddlrname.SelectedItem.ToString());
        com.Parameters.AddWithValue("@Address1", tb_address1.Text);
        com.Parameters.AddWithValue("@Mobile", tb_no.Text);
        com.Parameters.AddWithValue("@City", tb_city.Text);
        com.Parameters.AddWithValue("@State", tb_state.Text);
        com.Parameters.AddWithValue("@Country", tb_country.Text);
        com.Parameters.AddWithValue("@PCode", tb_postal.Text);
        com.Parameters.AddWithValue("@date", "");
        com.ExecuteNonQuery();
        con.Close();
        show();
        blank();
        btnSubmit.Visible = true;
        upd_btn.Visible = false;
        btn_cancel.Visible = false;
        string message = "alert('Record Updated Successfully')";
        ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
    }
    public void blank()
    {
        Tb_fname.Text = "";
        tb_lname.Text = "";
        tb_email.Text = "";
        Uname_txt.Text = "";
        password_txt.Text = "";
        ddlrname.SelectedValue = null;
        tb_address1.Text = "";
        tb_no.Text = "";
        tb_city.Text = "";
        tb_state.Text = "";
        tb_country.Text = "";
        tb_postal.Text = "";
        ddl_type.SelectedValue = "0";
    }

    public void show()
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select * from tbl_employee", con);
        da.SelectCommand.CommandType = CommandType.Text;
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void DeleteLinkButton_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow grid = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)grid.FindControl("Lbl_id");
        con.Open();
        SqlCommand com = new SqlCommand("delete from tbl_Employee where pk_id=@id", con);
        com.CommandType = CommandType.Text;
        com.Parameters.AddWithValue("@Id", l1.Text);
        com.ExecuteNonQuery();
        con.Close();
        Response.Write("<Script>alert('Record Deleted Successfully')</Script>");
        show();

    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

   

    protected void EditLinkButton_Click(object sender, EventArgs e)
    {
        btn_cancel.Visible = true;
        LinkButton lnk = (LinkButton)sender;
        GridViewRow grid = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)grid.FindControl("Lbl_id");
        con.Open();
        string a;
        SqlCommand com = new SqlCommand("select * from tbl_Employee where pk_id=@id", con);
        com.CommandType = CommandType.Text;
        com.Parameters.AddWithValue("@Id", l1.Text);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Lbl_Idd.Text = l1.Text;
            Tb_fname.Text = dr["FName"].ToString();
            tb_lname.Text = dr["LName"].ToString();
            tb_email.Text = dr["Email"].ToString();
            string Type = dr["Type"].ToString();
            if (Type == "Admin")
            {
                ddl_type.SelectedValue = "1";
            }
            else if (Type == "User")
            {
                ddl_type.SelectedValue = "2";
            }

            password_txt.Text = dr["Password"].ToString();
            string role = dr["RoleName"].ToString();
            Uname_txt.Text = dr["Uname"].ToString();
            tb_address1.Text = dr["Address1"].ToString();
            tb_no.Text = dr["Mobile"].ToString();
            tb_city.Text = dr["City"].ToString();
            tb_state.Text = dr["State"].ToString();
            tb_country.Text = dr["Country"].ToString();
            tb_postal.Text = dr["PCode"].ToString();
            dr.Close();
            com.ExecuteNonQuery();
            con.Close();
            show();
            btnSubmit.Visible = false;
            upd_btn.Visible = true;
            role1();
            ddlrname.Items.Insert(0, role);
        }
        else
        {
            dr.Close();
            com.ExecuteNonQuery();
            con.Close();
            show();
            btnSubmit.Visible = false;
            upd_btn.Visible = true;

        }
    }
    public void role1()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_role", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddlrname.DataSource = dt;
        ddlrname.DataTextField = "role_name";
        ddlrname.DataValueField = "role_name";
        ddlrname.DataBind();
        ddlrname.Items.Insert(0, new ListItem("---Select---", "0"));
        con.Close();
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        btn_cancel.Visible = false;
        btnSubmit.Visible = true;
        upd_btn.Visible = false;
        blank();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        show();
    }
}