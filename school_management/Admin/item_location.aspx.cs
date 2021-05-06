using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_item_location : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            item();
            gridshow();
            blank();
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("select * from item_location where location_name='" + Text_location.Text + "'and item_name='" + ddl_item.SelectedItem.ToString() + "'", con);
        com.ExecuteNonQuery();
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Exist Already!!!!');", true);
           
            dr.Close();
        }
        else
        {
            dr.Close();
            //SqlCommand cmd = new SqlCommand("item_location_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@pk_id", "");
            //cmd.Parameters.AddWithValue("@location_name", Text_location.Text);
            //cmd.Parameters.AddWithValue("@item_name", ddl_item.SelectedItem.ToString());
            //cmd.ExecuteNonQuery();
            inventry.inventserv obj = new inventry.inventserv();
            int a = obj.itemlocinsert(Text_location.Text, ddl_item.SelectedItem.ToString());
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
        Text_location.Text = "";
        ddl_item.SelectedValue = null;
    }

    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("item_location_dlt_proc", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        inventry.inventserv obj = new inventry.inventserv();
        GridView1.DataSource = obj.itemlocshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("item_location_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_location.Text = dr["location_name"].ToString();
            a = dr["item_name"].ToString();  
            dr.Close();
            item();
            ddl_item.Items.Insert(0, a);
            
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

        //SqlCommand cmd = new SqlCommand("item_location_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@location_name", Text_location.Text);
        //cmd.Parameters.AddWithValue("@item_name", ddl_item.SelectedItem.ToString());
        //cmd.ExecuteNonQuery();
        inventry.inventserv obj = new inventry.inventserv();
        int a = obj.itemlocupdate(Convert.ToInt32(Label_id.Text), Text_location.Text, ddl_item.SelectedItem.ToString());
            if(a>0)
            {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
        gridshow();
        blank();
        con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
         }
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("item_location_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        inventry.inventserv obj = new inventry.inventserv();
        int a = obj.itemlocdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        }
         con.Close();
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    public void item()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from add_category", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_item.DataSource = dt;
        ddl_item.DataTextField = "category_name";
        ddl_item.DataValueField = "pk_id";
        ddl_item.DataBind();
        ddl_item.Items.Insert(0, "Select Item Name");
    }
}