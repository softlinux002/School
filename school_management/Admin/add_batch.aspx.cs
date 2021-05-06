using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_add_batch : System.Web.UI.Page
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
        SqlCommand cmd1 = new SqlCommand("batch_proc", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@action", "exist");
        cmd1.Parameters.AddWithValue("@batch_id", "");
        cmd1.Parameters.AddWithValue("@batch", batch_txt.Text);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
     
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Exist Already!!!!');", true);
            dr.Close();
        }
        else
        {
            dr.Close();
            //SqlCommand cmd = new SqlCommand("batch_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@batch_id", "");
            //cmd.Parameters.AddWithValue("@batch", batch_txt.Text);
            //cmd.ExecuteNonQuery();
            newbatchweb.newbatch obj = new newbatchweb.newbatch();
            int a = obj.newbatchinsert(batch_txt.Text);
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
        batch_txt.Text = "";
    }

    public void gridshow()
    {

        newbatchweb.newbatch obj = new newbatchweb.newbatch();
        GridView1.DataSource = obj.newbatchshow();
        GridView1.DataBind();
        
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("batch_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@batch_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;

        if (dr.Read())
        {
            Label_id.Text = dr["batch_id"].ToString();
            batch_txt.Text = dr["batch"].ToString();
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
        newbatchweb.newbatch obj = new newbatchweb.newbatch();
        int a = obj.newbatchupdate(Convert.ToInt32(Label_id.Text), batch_txt.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!');", true);
            gridshow();
            blank();
        }
        //SqlCommand cmd = new SqlCommand("batch_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@batch_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@batch", batch_txt.Text);
        //cmd.ExecuteNonQuery();
     
        con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lnk = (LinkButton)sender;
            GridViewRow row = (GridViewRow)lnk.NamingContainer;
            Label l1 = (Label)row.FindControl("Lbl_id");
            //SqlCommand cmd = new SqlCommand("batch_dlt_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "delete");
            //cmd.Parameters.AddWithValue("@batch_id", l1.Text);
            //cmd.ExecuteNonQuery();
            newbatchweb.newbatch obj = new newbatchweb.newbatch();
            int a = obj.newbatchdelete(Convert.ToInt32(l1.Text));
            if (a > 0)
            {
                gridshow();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!');", true);
            }
        }

        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    
        
    }
   

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
}