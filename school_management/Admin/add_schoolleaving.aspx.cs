using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_add_schoolleaving : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("SLC_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "insert");
        cmd.Parameters.AddWithValue("@pk_id", "");
        cmd.Parameters.AddWithValue("@school_name", text_school.Text);
        cmd.Parameters.AddWithValue("@student_name", Text_sname.Text);
        cmd.Parameters.AddWithValue("@father_name", ddl_father.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@admission_date", admisn_txt.Text);
        cmd.Parameters.AddWithValue("@class", Text_class.Text);
        cmd.Parameters.AddWithValue("@dob", dob_txt.Text);
        cmd.Parameters.AddWithValue("@date_of_application", doa_txt.Text);
        cmd.Parameters.AddWithValue("@date_of_issue", Text_date.Text);
        cmd.Parameters.AddWithValue("@reason", reason_txt.Text);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!');", true);
      
        gridshow();
        blank();
        con.Close();
        Response.Redirect("school_leaving_certificate.aspx");
    }
    public void blank()
    {
        text_school.Text = "";
        Text_sname.Text = "";
        ddl_father.SelectedValue = null;
        Text_class.Text = "";
        doa_txt.Text = "";
        admisn_txt.Text = "";
        dob_txt.Text = "";
        Text_date.Text = "";
        reason_txt.Text = "";
    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("SLC_procevent", con);
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
        SqlCommand cmd = new SqlCommand("SLC_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select_id");
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
            admisn_txt.Text = dr["admission_date"].ToString();
            Text_class.Text = dr["class"].ToString();
            dob_txt.Text = dr["dob"].ToString();
            doa_txt.Text = dr["date_of_application"].ToString();
            Text_date.Text = dr["date_of_issue"].ToString();
            reason_txt.Text = dr["reason"].ToString();
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

        SqlCommand cmd = new SqlCommand("SLC_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Update");
        cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@school_name", text_school.Text);
        cmd.Parameters.AddWithValue("@student_name", Text_sname.Text);
        cmd.Parameters.AddWithValue("@father_name", ddl_father.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@admission_date", admisn_txt.Text);
        cmd.Parameters.AddWithValue("@class", Text_class.Text);
        cmd.Parameters.AddWithValue("@dob", dob_txt.Text);
        cmd.Parameters.AddWithValue("@date_of_application", doa_txt.Text);
        cmd.Parameters.AddWithValue("@date_of_issue", Text_date.Text);
        cmd.Parameters.AddWithValue("@reason", reason_txt.Text);
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
        SqlCommand cmd = new SqlCommand("SLC_procevent", con);
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
        
        SqlDataAdapter da = new SqlDataAdapter("SLC_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "father");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@school_name", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", Text_sname.Text);
        da.SelectCommand.Parameters.AddWithValue("@father_name", "");
        da.SelectCommand.Parameters.AddWithValue("@admission_date", "");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@dob", "");
        da.SelectCommand.Parameters.AddWithValue("@date_of_application", "");
        da.SelectCommand.Parameters.AddWithValue("@date_of_issue", "");
        da.SelectCommand.Parameters.AddWithValue("@reason", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_father.DataSource = dt;
        ddl_father.DataTextField = "father_name";
        ddl_father.DataBind();
        ddl_father.Items.Insert(0, "Select Father");
    }

    protected void Text_sname_TextChanged(object sender, EventArgs e)
    {
        father();
    }

    public void admissiondate()
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("select * from studentinfo where student_name='" + Text_sname.Text + "' and father_name='" + ddl_father.SelectedItem.ToString() + "'", con);
        SqlCommand cmd = new SqlCommand("SLC_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "admission");
        cmd.Parameters.AddWithValue("@pk_id", "");
        cmd.Parameters.AddWithValue("@school_name", "");
        cmd.Parameters.AddWithValue("@student_name", Text_sname.Text);
        cmd.Parameters.AddWithValue("@father_name",ddl_father.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@admission_date", "");
        cmd.Parameters.AddWithValue("@class", "");
        cmd.Parameters.AddWithValue("@dob", "");
        cmd.Parameters.AddWithValue("@date_of_application", "");
        cmd.Parameters.AddWithValue("@date_of_issue", "");
        cmd.Parameters.AddWithValue("@reason", "");
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            admisn_txt.Text = dr["admissiondate"].ToString();
            dob_txt.Text = dr["dob"].ToString();
        }
        dr.Close();
        con.Close();
    }

    protected void ddl_father_selectedIndexChanged(object sender, EventArgs e)
    {
        admissiondate();
    }

}