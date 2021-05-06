using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_fee_recession : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            batchddl();
        }
    }

    public void batchddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        batch_ddl.DataSource = dt;
        batch_ddl.DataTextField = "batch";
        batch_ddl.DataValueField = "batch_id";
        batch_ddl.DataBind();
        batch_ddl.Items.Insert(0, new ListItem("Select Batch", "0"));
    }

    protected void batch_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        classddl();
    }

    public void classddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from class_info where batch='" + batch_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
        class_ddl.DataValueField = "class_id";
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }

    public void streamddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct stream from studentinfo where batch='" + batch_ddl.SelectedItem.ToString() + "' and class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        stream_ddl.DataSource = dt;
        stream_ddl.DataTextField = "stream";
        stream_ddl.DataBind();
        stream_ddl.Items.Insert(0, new ListItem("Select Stream", "0"));
    }

    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from section where batch='" + batch_ddl.SelectedItem.ToString() + "' and class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
        section_ddl.DataValueField = "section_id";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }

    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        streamddl();
    }
    public void studentinfo()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from altter_fee_show where batch='" + batch_ddl.SelectedItem.ToString() + "'and class='" + class_ddl.SelectedItem.ToString() + "'and section='" + section_ddl.SelectedItem.ToString() + "' and  stream='" + stream_ddl.SelectedItem.ToString() + "' and roll_no='" + roll_txt.Text + "' and student_name='" + name_txt.Text + "' and feetype='Class Fee'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        string feess = (Convert.ToInt32(fee_txt.Text) - Convert.ToInt32(concession_txt.Text)).ToString();
        SqlCommand cmd = new SqlCommand("update altter_fee_show set fee='" + feess + "' where batch='" + batch_ddl.SelectedItem.ToString() + "' and class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and stream='" + stream_ddl.SelectedItem.ToString() + "' and roll_no='" + roll_txt.Text + "' and student_name='" + name_txt.Text + "' and feetype='Class Fee'", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Concession Approved!!!!');", true);
        blank();
       
        con.Close();
    }
    protected void roll_txt_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from altter_fee_show where roll_no='" + roll_txt.Text + "' and batch='" + batch_ddl.SelectedItem.ToString() + "' and class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and stream='" + stream_ddl.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            name_txt.Text = dr["student_name"].ToString();
            fee_txt.Text = dr["fee"].ToString();
        }
        dr.Close();
        con.Close();
    }
    public void blank()
    {
        batch_ddl.SelectedValue = null;
        class_ddl.SelectedValue = null;
        section_ddl.SelectedValue = null;
        stream_ddl.SelectedValue = null;
        roll_txt.Text = "";
        name_txt.Text = "";
        fee_txt.Text = "";
        concession_txt.Text = "";

    }
}