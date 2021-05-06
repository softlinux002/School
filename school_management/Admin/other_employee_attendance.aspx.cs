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

public partial class Admin_other_employee_attendance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            type();
            gridshow();
        }
    }

    public void type()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select distinct(type) from allempdetail", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        emptype_ddl.DataSource = dt;
        emptype_ddl.DataTextField = "type";
        emptype_ddl.DataBind();
        emptype_ddl.Items.Insert(0, "Select Type");
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {

        con.Open();
        foreach (GridViewRow grd in GridView1.Rows)
        {
            string a = "";
            Label id = (Label)grd.FindControl("Lbl_id");
            Label tid = (Label)grd.FindControl("Lbl_tid");
            Label name = (Label)grd.FindControl("Lbl_name");
            RadioButton rbt = (RadioButton)grd.FindControl("RadioButton1");
            RadioButton rbt1 = (RadioButton)grd.FindControl("RadioButton2");
            RadioButton rbt2 = (RadioButton)grd.FindControl("RadioButton3");
            if (rbt.Checked == true)
            {
                a = "Present";
            }
            if (rbt1.Checked == true)
            {
                a = "Absent";
            }
            if (rbt2.Checked == true)
            {
                a = "Leave";
            }

            DateTime dt = DateTime.Now;
            var date = dt.ToShortDateString();
            SqlCommand cmd = new SqlCommand("insert into emp_attendance values('" + tid.Text + "','" + name.Text + "','" + Text_day.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + Text_year.Text + "','" + a + "','"+emptype_ddl.SelectedItem.ToString()+"')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Attendance Submit')</script>");

        }
        //attendncedetail();
        Panel1.Visible = false;
        Panel2.Visible = true;
        submit_btn.Visible = true;
        blank();
    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from allempdetail where type='"+emptype_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    


    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }
    public void attendncedetail()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from  teacherdailyattendance", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
    }



    protected void Text_year_TextChanged(object sender, EventArgs e)
    {
        //checkleave();
        gridshow();
        Panel1.Visible = true;

    }
    //public void checkleave()
    //{

    //    foreach (GridViewRow grd in GridView1.Rows)
    //    {

    //        string a = "";
    //        Label id = (Label)grd.FindControl("Lbl_id");
    //        Label tid = (Label)grd.FindControl("Lbl_tid");
    //        Label name = (Label)grd.FindControl("Lbl_name");
    //        RadioButton rbt = (RadioButton)grd.FindControl("RadioButton1");
    //        RadioButton rbt1 = (RadioButton)grd.FindControl("RadioButton2");
    //        RadioButton rbt2 = (RadioButton)grd.FindControl("RadioButton3");
    //        con.Open();
    //        SqlCommand cmd1 = new SqlCommand("Select * from teacher_leave where Teacher_id='" + tid.Text + "'and Teacher_name='" + name.Text + "' and day='" + Text_date.Text + "' and month='" + DropDownList1.SelectedItem.ToString() + "' and year='" + Text_year.Text + "'and status='Approved' ", con);

    //        SqlDataReader dr1 = cmd1.ExecuteReader();
    //        if (dr1.Read())
    //        {

    //            rbt2.Checked = true;

    //        }
    //        dr1.Close();
    //        cmd1.ExecuteNonQuery();
    //        con.Close();
    //    }


    //}
    public void blank()
    {
        Text_day.Text = "";
        DropDownList1.SelectedValue = null;
        Text_year.Text = "";

    }
}