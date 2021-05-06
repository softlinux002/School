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

public partial class Teacher_dailyattendance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["teach_email"] == null || Session["teach_pass"] == null || Session["teacher_type"] == null)
            {
                Response.Redirect("../Default.aspx");

            }
            else
            {

                batchddl();
            }
         }
    }

  
    public void batchddl()
    {

        SqlDataAdapter da = new SqlDataAdapter("select distinct batch from timetable where teacher_name='" + Session["teacher_name"].ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        batch_ddl.DataSource = dt;
        batch_ddl.DataTextField = "batch";
        batch_ddl.DataValueField = "batch";
        batch_ddl.DataBind();
        batch_ddl.Items.Insert(0, new ListItem("Select Batch", "0"));
    }

    protected void name_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        batchddl();
    }

    protected void batch_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        streamddl();
        
       
    }
    protected void stream_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        classddl();
    }
    

    public void classddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select distinct class from timetable where teacher_name='"+Session["teacher_name"].ToString()+"' and stream='"+stream_ddl.SelectedItem.ToString()+"' and batch='"+batch_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class";
        class_ddl.DataValueField = "class";
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }

    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        sectionddl();
    }

    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        gridshow();
        
    }

    public void sectionddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct section from timetable where teacher_name='" + Session["teacher_name"].ToString() + "' and batch='" + batch_ddl.SelectedItem.ToString() + "' and stream='" + stream_ddl.SelectedItem.ToString() + "' and class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section";
        section_ddl.DataValueField = "section";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }

    

    public void streamddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct stream from timetable where teacher_name='"+Session["teacher_name"].ToString()+"' and batch='"+batch_ddl.SelectedItem.ToString()+"' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        stream_ddl.DataSource = dt;
        stream_ddl.DataTextField = "stream";
        stream_ddl.DataBind();
        stream_ddl.Items.Insert(0, new ListItem("Select Stream", "0"));
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();

        foreach (GridViewRow row in GridView1.Rows)
        {

            string a = "";
            Label l1 = (Label)row.FindControl("Lbl_id");
            Label rollno = (Label)row.FindControl("Lbl_rollno");
            Label name = (Label)row.FindControl("Lbl_name");
            RadioButton rbt = (RadioButton)row.FindControl("RadioButton1");
            RadioButton rbt1 = (RadioButton)row.FindControl("RadioButton2");
            TextBox txt = (TextBox)row.FindControl("TextBox1");
          
            if (rbt.Checked == true)
            {
                a = "Present";
            }
            else if (rbt1.Checked == true)
            {
                a = "Absent";
                string senderusername;
                senderusername = Label9.Text;
                string senderpassword;
                senderpassword = Label10.Text;
                string senderid;
                senderid = Label11.Text;
                
                SqlCommand cmd2 = new SqlCommand("select * from studentinfo where student_name='" + name.Text + "' and roll_no='" + rollno.Text + "'", con);
                cmd2.ExecuteNonQuery();
                SqlDataReader dr1 = cmd2.ExecuteReader();
                if (dr1.Read())
                {
                    Lbl_mother.Text = dr1["mother_name"].ToString();
                    Lbl_father.Text = dr1["father_name"].ToString();
                   
                }
                dr1.Close();

                SqlCommand cmd1 = new SqlCommand("Select * from parent_studentview_atten where student_name='" + name.Text + "'and mother_name='" + Lbl_mother.Text + "'and father_name='"+Lbl_father.Text+"'", con);
                cmd1.ExecuteNonQuery();
                SqlDataReader dr = cmd1.ExecuteReader();
                if (dr.Read())
                {
                    Lbl_phone.Text = dr["mobilephone"].ToString();
                  
                }
                dr.Close();
                string sURL;
                string message1 = "Your Children is not coming in school." + "\n\n";
                StreamReader objReader;

                sURL = "http://pointsms.in/API/sms.php?username=" + senderusername + "&password=" + senderpassword + "&from=" + senderid + "&to=" + Lbl_phone.Text + "&msg=" + message1;

                WebRequest wrGETURL;
                wrGETURL = WebRequest.Create(sURL);
                try
                {
                    Stream objStream;
                    objStream = wrGETURL.GetResponse().GetResponseStream();
                    objReader = new StreamReader(objStream);
                    objReader.Close();
                    
                }
                catch (Exception ex)
                {
                    ex.ToString();
                }

               
            }

            SqlCommand cmd = new SqlCommand("insert into dailyattandance values('" + Text_date.Text + "','" + batch_ddl.SelectedItem.ToString() + "','" + stream_ddl.SelectedItem.ToString() + "','" + class_ddl.SelectedItem.ToString() + "','" + section_ddl.SelectedItem.ToString() + "','" + rollno.Text + "','" + name.Text + "','" + a + "','" + txt.Text + "')", con);
            cmd.ExecuteNonQuery();
          
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Attendance Submit!!!!');", true);
            GridView1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Session["date"] = Text_date.Text;
            Session["class"] = class_ddl.SelectedItem.ToString();
            Session["batch"] = batch_ddl.SelectedItem.ToString();
            Session["stream"] = stream_ddl.SelectedItem.ToString();
            Panel4.Visible = true;
        }
       
        con.Close();
        total();
        present();
        Absent();
        blank();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {
        
        batch_ddl.SelectedValue = null;
        stream_ddl.SelectedValue = null;
        class_ddl.SelectedValue = null;
        section_ddl.SelectedValue = null;
        
    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from studentinfo where  batch='" + batch_ddl.SelectedItem.ToString() + "'and stream='" + stream_ddl.SelectedItem.ToString() + "'and class='" + class_ddl.SelectedItem.ToString() + "'and section='" + section_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("lectureplan_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
       
        con.Close();
    }
    //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    GridView1.PageIndex = e.NewPageIndex;
    //    gridshow();
    //}

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }
    

    public void total()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) as count from dailyattandance where date='" + Session["date"].ToString() + "' and batch='" + Session["batch"].ToString() + "' and class='" + Session["class"].ToString() + "' and stream='" + Session["stream"].ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_totalstd.Text = dr["count"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();

    }

    public void present()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) as count from dailyattandance where date='" + Session["date"].ToString() + "' and batch='" + Session["batch"].ToString() + "' and class='" + Session["class"].ToString() + "' and stream='" + Session["stream"].ToString() + "' and status='Present'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_Present.Text = dr["count"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void Absent()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) as count from dailyattandance where date='" + Session["date"].ToString() + "' and batch='" + Session["batch"].ToString() + "' and class='" + Session["class"].ToString() + "' and stream='" + Session["stream"].ToString() + "' and status='Absent'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_absnt.Text = dr["count"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }


    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow grd in GridView1.Rows)
        {
            RadioButton rbt1 = (RadioButton)grd.FindControl("RadioButton2");
            RadioButton rbt = (RadioButton)grd.FindControl("RadioButton1");
            TextBox a1 = (TextBox)grd.FindControl("TextBox1");
          
            if (rbt1.Checked == true)
            {
                a1.Visible = true;
        

            }
            else if (rbt.Checked == true)
            {
                a1.Visible = false;
              
            }
        
        }
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow grd in GridView1.Rows)
        {
            RadioButton rbt1 = (RadioButton)grd.FindControl("RadioButton2");
            RadioButton rbt = (RadioButton)grd.FindControl("RadioButton1");
            TextBox a1 = (TextBox)grd.FindControl("TextBox1");
           
            if (rbt1.Checked == true)
            {
                a1.Visible = true;
               
            }
            else if (rbt.Checked == true)
            {
                a1.Visible = false;
              
            }

        }
    }
    
    
}