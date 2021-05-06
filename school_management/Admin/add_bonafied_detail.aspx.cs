using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_add_bonafied_detail : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("bonafied_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "insert");
        cmd.Parameters.AddWithValue("@pk_id", "");
        cmd.Parameters.AddWithValue("@school_name", text_school.Text);
        cmd.Parameters.AddWithValue("@student_name", Text_sname.Text);
        cmd.Parameters.AddWithValue("@father_name", ddl_father.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@clas", Text_class.Text);
        cmd.Parameters.AddWithValue("@fee", fee_txt.Text);
        cmd.Parameters.AddWithValue("@date", DateTime.Now.ToShortDateString());
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!');", true);
        gridshow();
        blank();
        con.Close();
        Response.Redirect("bonafied_certficate.aspx");
    }
    public void blank()
    {
        text_school.Text = "";
        Text_sname.Text = "";
        ddl_father.SelectedValue = null;
        Text_class.Text = "";
        fee_txt.Text = "";
    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("bonafied_procevent", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
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
        SqlCommand cmd = new SqlCommand("bonafied_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;

        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            text_school.Text = dr["school_name"].ToString();
            Text_sname.Text = dr["student_name"].ToString();
            a = dr["father_name"].ToString();
            Text_class.Text = dr["clas"].ToString();
            fee_txt.Text = dr["fee"].ToString();
            Text_date.Text = dr["date"].ToString();
            dr.Close();
            father();
            ddl_father.Items.Insert(0, a);

        }
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

        SqlCommand cmd = new SqlCommand("bonafied_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@school_name", text_school.Text);
        cmd.Parameters.AddWithValue("@student_name", Text_sname.Text);
        cmd.Parameters.AddWithValue("@father_name", ddl_father.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@clas", Text_class.Text);
        cmd.Parameters.AddWithValue("@fee", fee_txt.Text);
        cmd.Parameters.AddWithValue("@date", DateTime.Now.ToShortDateString());
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!');", true);
        
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
        SqlCommand cmd = new SqlCommand("bonafied_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!');", true);
        
        con.Close();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void father()
    {
       
        SqlDataAdapter sd = new SqlDataAdapter("bonafied_proc", con);
        sd.SelectCommand.CommandType = CommandType.StoredProcedure;
        sd.SelectCommand.Parameters.AddWithValue("@action", "father");
        sd.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        sd.SelectCommand.Parameters.AddWithValue("@school_name", "");
        sd.SelectCommand.Parameters.AddWithValue("@student_name", Text_sname.Text);
        sd.SelectCommand.Parameters.AddWithValue("@father_name", "");
        sd.SelectCommand.Parameters.AddWithValue("@clas", "");
        sd.SelectCommand.Parameters.AddWithValue("@fee", "");
        sd.SelectCommand.Parameters.AddWithValue("@date", "");
        DataTable dt = new DataTable();
        sd.Fill(dt);
        ddl_father.DataSource = dt;
        ddl_father.DataTextField = "father_name";
        ddl_father.DataBind();
        ddl_father.Items.Insert(0, "Select Father");

    }

    protected void Text_sname_TextChanged(object sender, EventArgs e)
    {
        father();
    }
}