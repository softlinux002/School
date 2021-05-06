using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Admin_Insert_class : System.Web.UI.Page
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
        SqlCommand com = new SqlCommand("select * from insert_class where class='" + class_txt.Text + "'", con);
        com.ExecuteNonQuery();
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
          
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Record Exist Already!!!!');", true);
            dr.Close();
        }
        else
        {
            dr.Close();
            //SqlCommand cmd = new SqlCommand("insert_class_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@pk_id", "");
            //cmd.Parameters.AddWithValue("@class", class_txt.Text);
            //cmd.ExecuteNonQuery();
            classwebref.academic obj = new classwebref.academic();
            int a = obj.insert(class_txt.Text);
            if (a > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert(' Data Submitted!!!!');", true);

                gridshow();
                blank();
            }
           
        }
        con.Close();
    }

    public void blank()
    {
        class_txt.Text = "";
    }

    public void gridshow()
    {
        classwebref.academic obj = new classwebref.academic();
        GridView1.DataSource = obj.show();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("insert_class_dlt_proc", con);
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
            class_txt.Text = dr["class"].ToString();
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

        SqlCommand cmd = new SqlCommand("insert_class_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@class", class_txt.Text);
        cmd.ExecuteNonQuery();
        classwebref.academic obj = new classwebref.academic();
        int a = obj.update(Convert.ToInt32(Label_id.Text), class_txt.Text);
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
       
        classwebref.academic obj = new classwebref.academic();
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