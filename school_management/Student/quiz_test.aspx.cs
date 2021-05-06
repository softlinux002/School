using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Globalization;

public partial class Student_quiz_test : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            section();
        }
    }

    public void section()
    {
        SqlDataAdapter da = new SqlDataAdapter("select top 10 * from quiz_section", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "section";
        DropDownList1.DataValueField = "pk_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Select Subject");
    }

    public void StartQuiz()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from quiz where subject='" + DropDownList1.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        StartQuiz();
    }

    protected void Submit_click(object sender, EventArgs e)
    {
        con.Open();
        string ans = "";
        foreach (RepeaterItem itm in Repeater1.Items)
        {
            Label ques = (Label)itm.FindControl("lbl_question");
            RadioButton r1 = (RadioButton)itm.FindControl("R1");
            Label opt1 = (Label)itm.FindControl("lbl_opt1");
            RadioButton r2 = (RadioButton)itm.FindControl("R2");
            Label opt2 = (Label)itm.FindControl("lbl_opt2");
            RadioButton r3 = (RadioButton)itm.FindControl("R3");
            Label opt3 = (Label)itm.FindControl("lbl_opt3");
            RadioButton r4 = (RadioButton)itm.FindControl("R4");
            Label opt4 = (Label)itm.FindControl("lbl_opt4");
            RadioButton r5 = (RadioButton)itm.FindControl("R5");
            Label opt5 = (Label)itm.FindControl("lbl_opt5");

            if (r1.Checked == true && r2.Checked==false && r3.Checked==false  && r4.Checked==false && r5.Checked==false)
            {
                ans = "1";
            }
            else if (r1.Checked == false && r2.Checked == true && r3.Checked == false && r4.Checked == false && r5.Checked == false)
            {
                ans = "2";
            }
            else if (r1.Checked == false && r2.Checked == false && r3.Checked == true && r4.Checked == false && r5.Checked == false)
            {
                ans = "3";
            }
            else if (r1.Checked == false && r2.Checked == false && r3.Checked == false && r4.Checked == true && r5.Checked == false)
            {
                ans = "4";
            }
            else if (r1.Checked == false && r2.Checked == false && r3.Checked == false && r4.Checked == false && r5.Checked == true)
            {
                ans = "5";
            }
            else
            {
                ans = "";
            }

            SqlCommand cmd = new SqlCommand("insert into quiz_ans_tbl values('" + DropDownList1.SelectedItem.ToString() + "','" + ques.Text + "','" + ans + "','" + Session["std_email"].ToString() + "','" + Session["std_pass"].ToString() + "')", con);
            cmd.ExecuteNonQuery();
        }
        submit_btn.Visible = false;
        back_btn.Visible = true;
        con.Close();
        con.Open();
        foreach (RepeaterItem itm in Repeater1.Items)
        {
            Label ques = (Label)itm.FindControl("lbl_question");
            RadioButton r1 = (RadioButton)itm.FindControl("R1");
            Label opt1 = (Label)itm.FindControl("lbl_opt1");
            RadioButton r2 = (RadioButton)itm.FindControl("R2");
            Label opt2 = (Label)itm.FindControl("lbl_opt2");
            RadioButton r3 = (RadioButton)itm.FindControl("R3");
            Label opt3 = (Label)itm.FindControl("lbl_opt3");
            RadioButton r4 = (RadioButton)itm.FindControl("R4");
            Label opt4 = (Label)itm.FindControl("lbl_opt4");
            RadioButton r5 = (RadioButton)itm.FindControl("R5");
            Label opt5 = (Label)itm.FindControl("lbl_opt5");
            Image right = (Image)itm.FindControl("img_right");
            Image worng = (Image)itm.FindControl("img_worng");
            Label notans = (Label)itm.FindControl("lbl_notans");
            SqlCommand cmd1 = new SqlCommand("select * from quiz where question='" + ques.Text + "' and option1='" + opt1.Text + "' and option2='" + opt2.Text + "' and option3='" + opt3.Text + "' and option4='" + opt4.Text + "' and option5='" + opt5.Text + "'", con);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                Label_correct.Text = dr["correctoption"].ToString();
            }
            dr.Close();
            string ans1 = "";
            if (r1.Checked == true && r2.Checked == false && r3.Checked == false && r4.Checked == false && r5.Checked == false)
            {
                ans1 = "1";
            }
            else if (r1.Checked == false && r2.Checked == true && r3.Checked == false && r4.Checked == false && r5.Checked == false)
            {
                ans1 = "2";
            }
            else if (r1.Checked == false && r2.Checked == false && r3.Checked == true && r4.Checked == false && r5.Checked == false)
            {
                ans1 = "3";
            }
            else if (r1.Checked == false && r2.Checked == false && r3.Checked == false && r4.Checked == true && r5.Checked == false)
            {
                ans1 = "4";
            }
            else if (r1.Checked == false && r2.Checked == false && r3.Checked == false && r4.Checked == false && r5.Checked == true)
            {
                ans1 = "5";
            }
            else
            {
                ans1 = "";
            }

            if (ans1 == Label_correct.Text)
            {
                right.Visible = true;
                worng.Visible = false;
            }
            else
            {
                right.Visible = false;
                worng.Visible = true;
            }
            if (ans1 == null)
            {
                right.Visible = false;
                worng.Visible = false;
                notans.Visible = true;
            }
        }
       
        con.Close();

    }

    protected void back_btn_click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}