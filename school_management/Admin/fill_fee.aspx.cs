using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_add_fee : System.Web.UI.Page
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
         SqlCommand cmd = new SqlCommand("fee_proc", con);
         cmd.CommandType = CommandType.StoredProcedure;
         cmd.Parameters.AddWithValue("@action", "insert");
         cmd.Parameters.AddWithValue("@payment_id", "");
         cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
         cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@roll_no", rollno_txt.Text);
         cmd.Parameters.AddWithValue("@student_name", name_txt.Text);
        cmd.Parameters.AddWithValue("@father_name", father_txt.Text);
        cmd.Parameters.AddWithValue("@title", title_txt.Text);
        cmd.Parameters.AddWithValue("@description", description_txt.Text);
        cmd.Parameters.AddWithValue("@date", deposit_txt.Text);
        cmd.Parameters.AddWithValue("@Total", total_txt.Text);
        cmd.Parameters.AddWithValue("@payment", payment_txt.Text);
        cmd.Parameters.AddWithValue("@balance", balance_txt.Text);
        cmd.Parameters.AddWithValue("@status", status_ddl.SelectedItem.ToString());
         cmd.ExecuteNonQuery();
         Response.Write("<script>alert('Data Submitted')</script>");
        
        gridshow();
        blank();
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {
        class_ddl.SelectedValue = null;
        section_ddl.SelectedValue = null;
        rollno_txt.Text = "";
        name_txt.Text = "";
        father_txt.Text = "";
        title_txt.Text = "";
        description_txt.Text = "";
        deposit_txt.Text = "";
        total_txt.Text = "";
        payment_txt.Text = "";
        balance_txt.Text = "";
        status_ddl.SelectedValue = null;
    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("fee_procevent", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@payment_id", "");
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
        SqlCommand cmd = new SqlCommand("fee_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select_id");
        cmd.Parameters.AddWithValue("@payment_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        if (dr.Read())
        {
            Label_id.Text = dr["payment_id"].ToString();
            a = dr["class"].ToString();
            

            b = dr["section"].ToString();
           

            rollno_txt.Text = dr["roll_no"].ToString();
            name_txt.Text = dr["student_name"].ToString();
            father_txt.Text = dr["father_name"].ToString();
            title_txt.Text = dr["title"].ToString();
            description_txt.Text = dr["description"].ToString();
            deposit_txt.Text = dr["date"].ToString();
            total_txt.Text = dr["Total"].ToString();
            payment_txt.Text = dr["payment"].ToString();
            balance_txt.Text = dr["balance"].ToString();
            c = dr["status"].ToString();
            class_ddl.Items.Insert(0, a);
            section_ddl.Items.Insert(0, b);
            status_ddl.Items.Insert(0, c);
        }
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("fee_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@payment_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@roll_no", rollno_txt.Text);
        cmd.Parameters.AddWithValue("@student_name", name_txt.Text);
        cmd.Parameters.AddWithValue("@father_name", father_txt.Text);
        cmd.Parameters.AddWithValue("@title", title_txt.Text);
        cmd.Parameters.AddWithValue("@description", description_txt.Text);
        cmd.Parameters.AddWithValue("@date", deposit_txt.Text);
        cmd.Parameters.AddWithValue("@Total", total_txt.Text);
        cmd.Parameters.AddWithValue("@payment", payment_txt.Text);
        cmd.Parameters.AddWithValue("@balance", balance_txt.Text);
        cmd.Parameters.AddWithValue("@status", status_ddl.SelectedItem.ToString());
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
        SqlCommand cmd = new SqlCommand("fee_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@payment_id", l1.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        Response.Write("<script>alert('Data Deleted')</script>");
        con.Close();
    }
    
    protected void payment_txt_TextChanged(object sender, EventArgs e)
    {
        int tot = Convert.ToInt32(total_txt.Text);
        int pay = Convert.ToInt32(payment_txt.Text);
        balance_txt.Text = (tot-pay).ToString();
        if (tot > pay)
        {
            status_ddl.SelectedValue = "2";
        }
        else
        {
            status_ddl.SelectedValue = "1";
        }
    }
    protected void rollno_txt_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand da = new SqlCommand("select * from studentinfo where roll_no='" + rollno_txt.Text + "'", con);
        SqlDataReader dr = da.ExecuteReader();
        if (dr.Read())
        {
            name_txt.Text = dr["student_name"].ToString();
            father_txt.Text = dr["father_name"].ToString();
        }
        con.Close();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
}