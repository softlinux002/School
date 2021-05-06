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
using System.Net.Mail;
public partial class Admin_add_supplier : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    string pass;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!IsPostBack)
            {
                gridshow();
                blank();
                //admisn_no_txt.Text = GetID("select max(admission_no) from studentinfo").ToString();
            }
            
        }
    }
    public int GetID(String str)
    {
        int i;
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        String MaxId = cmd.ExecuteScalar().ToString();

        if (MaxId.Length == 0)
        {
            i = 0;
        }
        else
            i = Convert.ToInt32(MaxId);
        return ++i;
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        
        con.Open();

        //SqlCommand com = new SqlCommand("select * from suplier_tbl where name='" + Text_vendor_name.Text + "' and email='" + Text_email.Text + "'", con);
        SqlCommand com = new SqlCommand("suplier_proc", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@action", "supplrexist");
        com.Parameters.AddWithValue("@pk_id", "");
        com.Parameters.AddWithValue("@name", Text_vendor_name.Text);
        com.Parameters.AddWithValue("@contact_person","");
        com.Parameters.AddWithValue("@mobile", "");
        com.Parameters.AddWithValue("@email", Text_email.Text);
        com.Parameters.AddWithValue("@tin_no","");
        com.Parameters.AddWithValue("@adress","");
        com.Parameters.AddWithValue("@description","");
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Exist Already!!!!');", true);
        
        }
        else
        {
            dr.Close();
            //SqlCommand cmd = new SqlCommand("suplier_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@pk_id", "");
            //cmd.Parameters.AddWithValue("@name", Text_vendor_name.Text);
            //cmd.Parameters.AddWithValue("@contact_person", Text_cperson.Text);
            //cmd.Parameters.AddWithValue("@mobile", Text_Mobile.Text);
            //cmd.Parameters.AddWithValue("@email", Text_email.Text);
            //cmd.Parameters.AddWithValue("@tin_no", Text_tinno.Text);
            //cmd.Parameters.AddWithValue("@adress", Text_address.Text);
            //cmd.Parameters.AddWithValue("@description", Text_description.Text);
            //cmd.ExecuteNonQuery();
            inventry.inventserv obj = new inventry.inventserv();
            int a = obj.addsupplierinsert(Text_vendor_name.Text, Text_cperson.Text, Text_Mobile.Text, Text_email.Text, Text_tinno.Text, Text_address.Text, Text_description.Text);
            if (a > 0)
            {
                gridshow();
                blank();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Thanks for Registration!!!!');", true);
            }
                con.Close();

        }
    }

    public void blank()
    {
        Text_vendor_name.Text = "";
        Text_cperson.Text = "";
        Text_Mobile.Text = "";
        Text_email.Text = "";
        Text_tinno.Text = "";
        Text_address.Text = "";
        Text_description.Text = "";
    }

    public void gridshow()
    {
        inventry.inventserv obj = new inventry.inventserv();
        GridView1.DataSource = obj.addsuppliershow();
        GridView1.DataBind();
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("suplier_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_vendor_name.Text = dr["name"].ToString();
            Text_cperson.Text = dr["contact_person"].ToString();
            Text_Mobile.Text = dr["mobile"].ToString();
            Text_email.Text = dr["email"].ToString();
           Text_tinno.Text = dr["tin_no"].ToString();
            Text_address.Text = dr["adress"].ToString();
            Text_description.Text = dr["description"].ToString();

        }
        //export_excel.Visible = false;
        clear_btn.Visible = true;
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
        //SqlCommand cmd = new SqlCommand("suplier_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@name", Text_vendor_name.Text);
        //cmd.Parameters.AddWithValue("@contact_person", Text_cperson.Text);
        //cmd.Parameters.AddWithValue("@mobile", Text_Mobile.Text);
        //cmd.Parameters.AddWithValue("@email", Text_email.Text);
        //cmd.Parameters.AddWithValue("@tin_no", Text_tinno.Text);
        //cmd.Parameters.AddWithValue("@adress", Text_address.Text);
        //cmd.Parameters.AddWithValue("@description", Text_description.Text);
        //cmd.ExecuteNonQuery();
        inventry.inventserv obj = new inventry.inventserv();
        int a = obj.addsupplierupdate(Convert.ToInt32(Label_id.Text),Text_vendor_name.Text, Text_cperson.Text, Text_Mobile.Text, Text_email.Text, Text_tinno.Text, Text_address.Text, Text_description.Text);
        if (a > 0)
        {
            gridshow();
            blank();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
            submit_btn.Visible = true;
            upd_btn.Visible = false;
            con.Close();
        }
        }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("suplier_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        inventry.inventserv obj = new inventry.inventserv();
        int a = obj.addsupplierdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
            con.Close();
        }
        }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }
  
}