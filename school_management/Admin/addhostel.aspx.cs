using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_addhostel : System.Web.UI.Page
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
        //SqlCommand cmd1 = new SqlCommand("Select * from add_hostel where hostel_no='" + Text_hostelno.Text + "' or hostel_name='" + Text_hostelname.Text + "'", con);
        SqlCommand cmd1 = new SqlCommand("add_hostel_proc", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@action", "exist");
        cmd1.Parameters.AddWithValue("@hostel_id", "");
        cmd1.Parameters.AddWithValue("@hostel_no", Text_hostelno.Text);
        cmd1.Parameters.AddWithValue("@hostel_name", Text_hostelname.Text);
        cmd1.ExecuteNonQuery();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Already Exist!!!!');", true);
            
            dr1.Close();

        }
        else
        {
            dr1.Close();
            //SqlCommand cmd = new SqlCommand("add_hostel_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@hostel_id", "");
            //cmd.Parameters.AddWithValue("@hostel_no", Text_hostelno.Text);
            //cmd.Parameters.AddWithValue("@hostel_name", Text_hostelname.Text);
            //cmd.ExecuteNonQuery();
            hostel.hostelservice obj = new hostel.hostelservice();
            int a = obj.insert(Text_hostelno.Text, Text_hostelname.Text);
            if (a > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);
                gridshow();
                blank();
            }
           
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
        hostel.hostelservice obj = new hostel.hostelservice();
        GridView1.DataSource = obj.show();
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
       
        hostel.hostelservice obj = new hostel.hostelservice();
        int a = obj.update(Convert.ToInt32(Label_id.Text), Text_hostelno.Text, Text_hostelname.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
            gridshow();
            blank();
        }
      
       
        upd_btn.Visible = false;
        submit_btn.Visible = true;
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        hostel.hostelservice obj = new hostel.hostelservice();
        int a = obj.delete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        }
        
       
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
}