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

public partial class Admin_issue_item : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            batchdetail();
        }
    }

    

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {
        batch_ddl.SelectedValue = null;
        class_ddl.SelectedValue = null;
        section_dll.SelectedValue = null;
        stream_ddl.SelectedValue = null;
        roll_txt.Text = "";
        sname_txt.Text = "";
        code_txt.Text = "";
        itmname_txt.Text = "";
        ilocation_txt.Text = "";
        worth_txt.Text = "";
    }

    
    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        section();
    }

    protected void batch_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        classdetail();
    }

    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        stream();
    }

    public void classdetail()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct class_name from class_info", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";

        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }

    public void batchdetail()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct batch from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        batch_ddl.DataSource = dt;
        batch_ddl.DataTextField = "batch";
        batch_ddl.DataBind();
        batch_ddl.Items.Insert(0, new ListItem("Select Batch", "0"));
    }

    public void section()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct section_name from section where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_dll.DataSource = dt;
        section_dll.DataTextField = "section_name";
        section_dll.DataBind();
        section_dll.Items.Insert(0, new ListItem("Select Section", "0"));
    }

    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct stream from studentinfo where class='" + class_ddl.SelectedItem.ToString() + "' and batch='"+batch_ddl.SelectedItem.ToString()+"' and section='"+section_dll.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        stream_ddl.DataSource = dt;
        stream_ddl.DataTextField = "stream";
        stream_ddl.DataBind();
        stream_ddl.Items.Insert(0, new ListItem("Select Stream", "0"));
    }
    public void itemcode()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from add_item where item_code='"+code_txt.Text+"'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            itmname_txt.Text = dr["item_name"].ToString();
            ilocation_txt.Text = dr["item_location"].ToString();
            worth_txt.Text = dr["rate"].ToString();
        }
        dr.Close();
        con.Close();
    }
    protected void roll_txt_TextChanged(object sender, EventArgs e)
    {
        studentname();
    }

    protected void code_txt_TextChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        itemcode();
        OTP();
    }

    public void studentname()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from studentinfo where batch='"+batch_ddl.SelectedItem.ToString()+"' and class='"+class_ddl.SelectedItem.ToString()+"' and stream='"+stream_ddl.SelectedItem.ToString()+"' and section='"+section_dll.SelectedItem.ToString()+"' and roll_no='"+roll_txt.Text+"'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            sname_txt.Text = dr["student_name"].ToString();
        }
        dr.Close();
        con.Close();
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
       
        con.Open();
        //SqlCommand cmd = new SqlCommand("insert into issue_items values('"+batch_ddl.SelectedItem.ToString()+"','"+class_ddl.SelectedItem.ToString()+"','"+section_dll.SelectedItem.ToString()+"','"+stream_ddl.SelectedItem.ToString()+"','"+roll_txt.Text+"','"+sname_txt.Text+"','"+code_txt.Text+"','"+itmname_txt.Text+"','"+worth_txt.Text+"')", con);
        //cmd.ExecuteNonQuery();
        inventry.inventserv obj = new inventry.inventserv();
        int a = obj.issueiteminsert(batch_ddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_dll.SelectedItem.ToString(), stream_ddl.SelectedItem.ToString(), roll_txt.Text, sname_txt.Text, code_txt.Text, itmname_txt.Text, worth_txt.Text);
        if (a > 0)
        {
            SqlCommand cmd1 = new SqlCommand("select * from add_item where item_code='" + code_txt.Text + "' and item_name='" + itmname_txt.Text + "'", con);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                lbl_stock.Text = dr["stock"].ToString();
            }
            dr.Close();
        }
        lbl_stock.Text = (Convert.ToInt32(lbl_stock.Text) - 1).ToString();
        SqlCommand cmd2 = new SqlCommand("update add_item set stock='" + lbl_stock.Text + "' where item_code='" + code_txt.Text + "' and item_name='" + itmname_txt.Text + "'", con);
        cmd2.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Item Issued To Student Successfully!!!!');", true);
  
        con.Close();
        blank();
    }

    public void OTP()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from issue_items where batch='" + batch_ddl.SelectedItem.ToString() + "'and class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_dll.SelectedItem.ToString() + "' and stream='" + stream_ddl.SelectedItem.ToString() + "'and roll_no='" + roll_txt.Text + "' and item_code='" + code_txt.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('You have already Provided!!!!');", true);
            blank();
            dr.Close();
        }
        
        con.Close();

    }
}