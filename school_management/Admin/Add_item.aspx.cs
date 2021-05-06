using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Add_item : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 445;
            string id = "Item 100" + j;
            Text_itemcode.Text = id;
            gridshow();
            
            item();
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("add_item_proc", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@action", "insert");
        //    cmd.Parameters.AddWithValue("@pk_id", "");
        //    cmd.Parameters.AddWithValue("@item_code", Text_itemcode.Text);
        //    cmd.Parameters.AddWithValue("@item_name", ddl_item.SelectedItem.ToString());
        //    cmd.Parameters.AddWithValue("@item_location", item_location_text.Text);
        //    cmd.Parameters.AddWithValue("@rate", rate_text.Text);
        //    cmd.Parameters.AddWithValue("@quantity", quantity_text.Text);
        //    cmd.Parameters.AddWithValue("@stock", stock_text.Text);
        //    cmd.Parameters.AddWithValue("@description", text_desc.Text);
        //    cmd.ExecuteNonQuery();
            inventry.inventserv obj = new inventry.inventserv();
            int a = obj.iteminsert(Text_itemcode.Text, ddl_item.SelectedItem.ToString(), item_location_text.Text, rate_text.Text, quantity_text.Text, stock_text.Text, text_desc.Text);
            if (a > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);

                gridshow();
                blank();
            }
        con.Close();
    }

    public void blank()
    {
        Text_itemcode.Text = "";
        ddl_item.SelectedValue = null;
        item_location_text.Text = "";
        rate_text.Text = "";
        quantity_text.Text = "";
        stock_text.Text = "";
        text_desc.Text = "";
    }

    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("add_item_dlt_proc", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        inventry.inventserv obj = new inventry.inventserv();
        GridView1.DataSource = obj.itemshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("add_item_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_itemcode.Text = dr["item_code"].ToString();
            a = dr["item_name"].ToString();
            item_location_text.Text = dr["item_location"].ToString();
            rate_text.Text = dr["rate"].ToString();
            quantity_text.Text = dr["quantity"].ToString();
            stock_text.Text = dr["stock"].ToString();
            text_desc.Text = dr["description"].ToString();
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

        //SqlCommand cmd = new SqlCommand("add_item_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@item_code", Text_itemcode.Text);
        //cmd.Parameters.AddWithValue("@item_name", ddl_item.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@item_location", item_location_text.Text);
        //cmd.Parameters.AddWithValue("@rate", rate_text.Text);
        //cmd.Parameters.AddWithValue("@quantity", quantity_text.Text);
        //cmd.Parameters.AddWithValue("@stock", stock_text.Text);
        //cmd.Parameters.AddWithValue("@description", text_desc.Text);
        //cmd.ExecuteNonQuery();
        inventry.inventserv obj = new inventry.inventserv();
        int a = obj.itemupdate(Convert.ToInt32(Label_id.Text),Text_itemcode.Text, ddl_item.SelectedItem.ToString(), item_location_text.Text, rate_text.Text, quantity_text.Text, stock_text.Text, text_desc.Text);
        if (a > 0)
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
        //SqlCommand cmd = new SqlCommand("add_item_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        inventry.inventserv obj = new inventry.inventserv();
        int a = obj.itemdelete(Convert.ToInt32(l1.Text));
            if(a>0)
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
        
        SqlDataAdapter da = new SqlDataAdapter("add_item_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "category");
        da.SelectCommand.Parameters.AddWithValue("@pk_id","");
        da.SelectCommand.Parameters.AddWithValue("@item_code", "");
        da.SelectCommand.Parameters.AddWithValue("@item_name", "");
        da.SelectCommand.Parameters.AddWithValue("@item_location", "");
        da.SelectCommand.Parameters.AddWithValue("@rate", "");
        da.SelectCommand.Parameters.AddWithValue("@quantity", "");
        da.SelectCommand.Parameters.AddWithValue("@stock","");
        da.SelectCommand.Parameters.AddWithValue("@description", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_item.DataSource = dt;
        ddl_item.DataTextField = "category_name";
        ddl_item.DataValueField = "pk_id";
        ddl_item.DataBind();
        ddl_item.Items.Insert(0, "Select Item Name");
    }
    protected void ddl_item_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("Select * from item_location where item_name='"+ddl_item.SelectedItem.ToString()+"'",con);
        SqlCommand cmd = new SqlCommand("add_item_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "item");
        cmd.Parameters.AddWithValue("@pk_id", "");
        cmd.Parameters.AddWithValue("@item_code", "");
        cmd.Parameters.AddWithValue("@item_name", ddl_item.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@item_location", "");
        cmd.Parameters.AddWithValue("@rate", "");
        cmd.Parameters.AddWithValue("@quantity", "");
        cmd.Parameters.AddWithValue("@stock","");
        cmd.Parameters.AddWithValue("@description", "");
        cmd.ExecuteNonQuery();
        SqlDataReader dr=cmd.ExecuteReader();
        if (dr.Read())
        {
            item_location_text.Text = dr["location_name"].ToString();
            dr.Close();
        }
        else
        {
            dr.Close();
            Response.Write("<script>alert('Please Select Location First Your Location is not Set ')</script>");
        }
        cmd.ExecuteReader();
        con.Close();
    }

}