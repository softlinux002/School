using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
 
 
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            school();
        }
    }

    public void school()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select top 1 * from school_info order by pk_id desc", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Image2.ImageUrl = dr["image"].ToString();
        }
        dr.Close();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "0")
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "1")
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "2")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
            Panel5.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "3")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
            Panel5.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "4")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = true;
        
        }
        else if (DropDownList1.SelectedValue == "5")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = true;
        
        }
        else if (DropDownList1.SelectedValue == "6")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = true;
        }
            
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from admin_login where username='" + Text_user.Text + "' and password='" + Text_pass.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_user.Text = dr["username"].ToString();
            Text_pass.Text = dr["password"].ToString();
            Lbl_type.Text = dr["type"].ToString();
            Session["ad_name"] = Text_user.Text;
            Session["ad_pass"] = Text_pass.Text;
            Session["type"] = Lbl_type.Text;
            Response.Redirect("~/Admin/admindash.aspx");

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('incorrect Mail and Password!!');", true);
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from teacher_info where email='" + Text_teacemail.Text + "' and password ='" + Text_teacherpass.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_name.Text = dr["teacher_name"].ToString();
            Image_teacher.ImageUrl = dr["image"].ToString();
            Text_teacemail.Text = dr["email"].ToString();
            Text_teacherpass.Text = dr["password"].ToString();
            Lbl_teacher_type.Text = dr["type"].ToString();
            Session["teach_email"] = Text_teacemail.Text;
            Session["teach_pass"] = Text_teacherpass.Text;
            Session["teacher_type"] = Lbl_teacher_type.Text;
            Session["teacher_image"] = Image_teacher.ImageUrl;
            Session["teacher_name"] = Lbl_name.Text;
            Response.Redirect("~/Teacher/Teacherdashboard.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('incorrect Mail and Password!!');", true);
        }

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from studentinfo where email='" + Text_studentemail.Text + "' and password ='" + Text_spass.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_name.Text = dr["student_name"].ToString();
            Image_student.ImageUrl = dr["image"].ToString();
            Text_studentemail.Text = dr["email"].ToString();
            Text_spass.Text = dr["password"].ToString();
            Lbl_stype.Text = dr["type"].ToString();
            Session["std_email"] = Text_studentemail.Text;
            Session["std_pass"] = Text_spass.Text;
            Session["std_type"] = Lbl_stype.Text;
            Session["std_image"] = Image_student.ImageUrl;
            Session["std_name"] = Lbl_name.Text;
            Response.Redirect("~/Student/Default.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('incorrect Mail and Password!!');", true);
           
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from parentinfo where email='" + Text_pmail.Text + "' and password ='" + Text_prnt_pass.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
           
            Lbl_name.Text = dr["firstname"].ToString();
            Text_pmail.Text = dr["email"].ToString();
            Text_prnt_pass.Text = dr["password"].ToString();
            Lbl_prnt_type.Text = dr["type"].ToString();
            Session["prnt_email"] = Text_pmail.Text;
            Session["prnt_pass"] = Text_prnt_pass.Text;
            Session["prnt_type"] = Lbl_prnt_type.Text;
            Session["prnt_name"] = Lbl_name.Text;
            Response.Redirect("~/Parent/parent_dashboard.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('incorrect Mail and Password!!');", true);
            
        }
        

    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgotpassword.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session["teacher_type"] = DropDownList1.SelectedItem.ToString();
        Response.Redirect("forgotpassword.aspx");

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Session["std_type"] = DropDownList1.SelectedItem.ToString();
        Response.Redirect("forgotpassword.aspx");

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Session["prnt_type"] = DropDownList1.SelectedItem.ToString();
        Response.Redirect("forgotpassword.aspx");

    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from add_libraryemployee where email='" + Text_empemail.Text + "'and password='" + Text_emppass.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_empname.Text = dr["employee_name"].ToString();
            Text_empemail.Text = dr["email"].ToString();
            Text_emppass.Text = dr["password"].ToString();
            lbl_emptype.Text = dr["type"].ToString();
            Image_emp.ImageUrl = dr["image"].ToString();
            Session["library_email"] = Text_empemail.Text;
            Session["Lib_pass"] = Text_emppass.Text;
            Session["emp_name"] = Lbl_empname.Text;
            Session["emp_type"] = lbl_emptype.Text;
            Session["emp_image"] = Image_emp.ImageUrl;
            Response.Redirect("~/Library/library_dashboard.aspx");
        
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('incorrect Mail and Password!!');", true);
        }
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Session["emp_type"] = DropDownList1.SelectedItem.ToString();
        Response.Redirect("forgotpassword.aspx");
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Hostel_incharge_info where email='" + Text_hemail.Text + "'and password='" + Text_hpass.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_inchargename.Text = dr["name"].ToString();
            Text_hemail.Text = dr["email"].ToString();
            Text_hpass.Text = dr["password"].ToString();
            Lbl_inchargetype.Text = dr["type"].ToString();
            Image_lbl_incharge.ImageUrl = dr["image"].ToString();
            Session["hostelincharge_email"] = Text_hemail.Text;
            Session["hostelincharge_pass"] = Text_hpass.Text;
            Session["hincharge_name"] = Lbl_inchargename.Text;
            Session["hincharge_type"] = Lbl_inchargetype.Text;
            Session["hincharge_image"] = Image_lbl_incharge.ImageUrl;
            Response.Redirect("~/Hostel/hostel_dash.aspx");

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('incorrect Mail Password!!');", true);
        }
    }

    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Session["type"] = DropDownList1.SelectedItem.ToString();
        Response.Redirect("forgotpassword.aspx");
    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from allempdetail where email='" + Text_employee.Text + "'and password='" + Text_epass.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Lbl_employeename.Text = dr["emp_name"].ToString();
            Text_employee.Text = dr["email"].ToString();
            Text_epass.Text = dr["password"].ToString();
            Lbl_etype.Text = dr["type"].ToString();
            Image3.ImageUrl = dr["image"].ToString();
            Session["employee_email"] = Text_employee.Text;
            Session["ad_pass"] = Text_epass.Text;
            Session["ad_name"] = Lbl_employeename.Text;
            Session["type"] = Lbl_etype.Text;
            Session["employee_image"] = Image3.ImageUrl;
            Response.Redirect("~/Admin/admindash.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('incorrect Password!!');", true);

        }
    }
}