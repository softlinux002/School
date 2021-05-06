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

public partial class Admin_createallemployeedetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    string pass;
    string pass1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showtype();
            country();
            gridshow();
            blank();
            emp_no.Text = GetID("select max(emp_no) from allempdetail").ToString();
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
        con.Close();
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        string senderusername;
        senderusername = Label9.Text;
        string senderpassword;
        senderpassword = Label10.Text;
        string senderid;
        senderid = Label11.Text;
        con.Open();

        //SqlCommand com = new SqlCommand("select * from allempdetail where emp_name='" + name_txt.Text + "' and father_name='" + father_txt.Text + "' and email='" + email_txt.Text + "'", con);
        SqlCommand com = new SqlCommand("allempdetail_proc", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@action", "exist");
        com.Parameters.AddWithValue("@pk_id", "");
        com.Parameters.AddWithValue("@type", "");
        com.Parameters.AddWithValue("@emp_no", "");
        com.Parameters.AddWithValue("@designation", "");
        com.Parameters.AddWithValue("@doj", "");
        com.Parameters.AddWithValue("@emp_name", name_txt.Text);
        com.Parameters.AddWithValue("@father_name", father_txt.Text);
        com.Parameters.AddWithValue("@gender", "");
        com.Parameters.AddWithValue("@dob", "");
        com.Parameters.AddWithValue("@country", "");
        com.Parameters.AddWithValue("@state", "");
        com.Parameters.AddWithValue("@city", "");
        com.Parameters.AddWithValue("@address", "");
        com.Parameters.AddWithValue("@mobile", "");
        com.Parameters.AddWithValue("@email", email_txt.Text);
        com.Parameters.AddWithValue("@maritial_status", "");
        com.Parameters.AddWithValue("@blood_group", "");
        com.Parameters.AddWithValue("@total_experience_year", "");
        com.Parameters.AddWithValue("@total_exp_month", "");
        com.Parameters.AddWithValue("@experiencedetail", "");
        com.Parameters.AddWithValue("@salary", "");
        com.Parameters.AddWithValue("@password", "");
        com.Parameters.AddWithValue("@emp_id", "");
        com.Parameters.AddWithValue("@image", "");
        com.ExecuteNonQuery();
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<script>alert('Record Exist Already')</script>");
            dr.Close();
        }
        else
        {
            dr.Close();
            string imgg = "";
            if (emp_img.HasFile)
            {
                imgg = ("~/img/" + emp_img.FileName);
                emp_img.SaveAs(Server.MapPath("~/img/") + emp_img.FileName);
            }


            //SqlCommand cmd = new SqlCommand("allempdetail_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@pk_id", "");
            //cmd.Parameters.AddWithValue("@type",DropDownList1.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@emp_no", emp_no.Text);
            //cmd.Parameters.AddWithValue("@designation", designation.Text);
            //cmd.Parameters.AddWithValue("@doj", joindate_txt.Text);
            //cmd.Parameters.AddWithValue("@emp_name", name_txt.Text);
            //cmd.Parameters.AddWithValue("@father_name", father_txt.Text);
            //cmd.Parameters.AddWithValue("@gender", gender_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@dob", dob_txt.Text);
            //cmd.Parameters.AddWithValue("@country", ddl_country.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@state", ddl_state.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@city", ddl_city.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@address", addres1_txt.Text);
            //cmd.Parameters.AddWithValue("@mobile", mob_txt.Text);
            //cmd.Parameters.AddWithValue("@email", email_txt.Text);
            //cmd.Parameters.AddWithValue("@maritial_status", martial_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@blood_group", blood_txt.Text);
            //cmd.Parameters.AddWithValue("@total_experience_year", exyear_txt.Text);
            //cmd.Parameters.AddWithValue("@total_exp_month", exmonth_txt.Text);
            //cmd.Parameters.AddWithValue("@experiencedetail", exdetail_txt.Text);
            //cmd.Parameters.AddWithValue("@salary", salary_txt.Text);

            //Random ran = new Random();
            //int i = ran.Next(1, 9);
            //int j = i * 289;
            //pass = "Te" + j + "ER";
            //cmd.Parameters.AddWithValue("@password", pass);

            //Random ran1 = new Random();
            //int k = ran1.Next(1, 5);
            //int l = k * 256;
            //pass1 = "Emp" + l + "LE";
            //cmd.Parameters.AddWithValue("@emp_id", pass1);
            //cmd.Parameters.AddWithValue("@image", imgg);

            employee.employeeservice obj = new employee.employeeservice();
            int a = obj.allempinsert(DropDownList1.SelectedItem.ToString(), emp_no.Text, designation.Text, joindate_txt.Text, name_txt.Text, father_txt.Text, gender_ddl.SelectedItem.ToString(), dob_txt.Text, ddl_country.SelectedItem.ToString(), ddl_state.SelectedItem.ToString(), ddl_city.SelectedItem.ToString(), addres1_txt.Text, mob_txt.Text, email_txt.Text, martial_ddl.SelectedItem.ToString(), blood_txt.Text, exyear_txt.Text, exmonth_txt.Text, exdetail_txt.Text, salary_txt.Text, pass, pass1, imgg);
            if (a > 0)
            {
                var smtp = new System.Net.Mail.SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
                }

                smtp.Send("mysswtechnology@gmail.com".ToString(), email_txt.Text, "Message".ToString(), "Your Loginid:-  " + email_txt.Text + "\r\n" + "Your Password:-  " + pass + "\r\n" + "Teacher id:- " + pass1);
                //System.Net.Mail.MailMessage mail = new MailMessage();
                //mail.From = new MailAddress("info@sswtechnology.com");
                //mail.To.Add(email_txt.Text);
                //mail.Subject = "Login Id Details";
                //mail.Body = "<html><head><title>Login Id Details:</title></head><body><div><br/><br/><p>Your Loginid:" + email_txt.Text + "<br/>Your Password:-" + pass + "<br/>" + "Teacher id:-" + pass1 + "<br/> </div></body></Html>"; 
                //mail.IsBodyHtml = true;
                //SmtpClient smtp = new SmtpClient();
                //smtp.Host = "relay-hosting.secureserver.net";
                //smtp.Port = 25;
                //smtp.EnableSsl = false;
                //smtp.Send(mail);
                //cmd.ExecuteNonQuery();
            }
            string sURL;
            string message1 = "Thanks For Registration" + "\n\n" + "Email:" + email_txt.Text + "\n\n" + "Password:" + pass + "\n" + "Teacher_ID:" + pass1 + "\n";
            StreamReader objReader;

            sURL = "http://pointsms.in/API/sms.php?username=" + senderusername + "&password=" + senderpassword + "&from=" + senderid + "&to=" + mob_txt.Text + "&msg=" + message1;

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


            Response.Write("<script>alert('Thanks For Registartion')</script>");
            gridshow();
            blank();


        }
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {
        DropDownList1.SelectedValue = null;
        emp_no.Text = "";
        designation.Text = "";
        joindate_txt.Text = "";
        name_txt.Text = "";
        father_txt.Text = "";
        gender_ddl.SelectedValue = null;
        dob_txt.Text = "";
        ddl_country.SelectedValue = null;
        ddl_state.SelectedValue = null;
        ddl_city.SelectedValue = null;
        addres1_txt.Text = "";
        mob_txt.Text = "";
        email_txt.Text = "";
        martial_ddl.SelectedValue = null;
        blood_txt.Text = "";
        exyear_txt.Text = "";
        exmonth_txt.Text = "";
        exdetail_txt.Text = "";
        salary_txt.Text = "";
    }

    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("allempdetail_dlt_proc", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        employee.employeeservice obj = new employee.employeeservice();
        GridView1.DataSource = obj.allempshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        string imgg = "";
        if (emp_img.HasFile)
        {
            imgg = ("~/img/" + emp_img.FileName);
            emp_img.SaveAs(Server.MapPath("~/img/") + emp_img.FileName);
        }

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("allempdetail_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        string f;
        string g;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            emp_no.Text = dr["emp_no"].ToString();
            designation.Text = dr["designation"].ToString();
            joindate_txt.Text = dr["doj"].ToString();
            name_txt.Text = dr["emp_name"].ToString();
            father_txt.Text = dr["father_name"].ToString();
            g = dr["type"].ToString();
            a = dr["gender"].ToString();
            c = dr["country"].ToString();
            d = dr["state"].ToString();
            f = dr["city"].ToString();
            dob_txt.Text = dr["dob"].ToString();
            addres1_txt.Text = dr["address"].ToString();

            mob_txt.Text = dr["mobile"].ToString();
            email_txt.Text = dr["email"].ToString();
            b = dr["maritial_status"].ToString();
            blood_txt.Text = dr["blood_group"].ToString();
            exyear_txt.Text = dr["total_experience_year"].ToString();
            exmonth_txt.Text = dr["total_exp_month"].ToString();
            exdetail_txt.Text = dr["experiencedetail"].ToString();
            salary_txt.Text = dr["salary"].ToString();
            lbl_pass.Text = dr["password"].ToString();
            lbl_tid.Text = dr["emp_id"].ToString();
            Image2.ImageUrl = dr["image"].ToString();
            dr.Close();
            gender_ddl.Items.Insert(0, a);
            
            martial_ddl.Items.Insert(0, b);
            showtype();
            DropDownList1.Items.Insert(0, g);
            country();
            ddl_country.Items.Insert(0, c);
            state();
            ddl_state.Items.Insert(0, d);
            city();
            ddl_city.Items.Insert(0, f);
        }
        Export_excel.Visible = false;
        clr_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        Image2.Visible = true;
        con.Close();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();

        string imgg = "";
        if (emp_img.HasFile)
        {
            imgg = ("~/img/" + emp_img.FileName);
            emp_img.SaveAs(Server.MapPath("~/img/") + emp_img.FileName);
        }
        else
        {
            imgg = Image2.ImageUrl;
        }


        //SqlCommand cmd = new SqlCommand("allempdetail_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@emp_no", emp_no.Text);
        //cmd.Parameters.AddWithValue("@designation",designation.Text);
        //cmd.Parameters.AddWithValue("@doj", joindate_txt.Text);
        //cmd.Parameters.AddWithValue("@emp_name", name_txt.Text);
        //cmd.Parameters.AddWithValue("@father_name", father_txt.Text);
        //cmd.Parameters.AddWithValue("@gender", gender_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@dob", dob_txt.Text);
        //cmd.Parameters.AddWithValue("@country", ddl_country.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@state", ddl_state.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@city", ddl_city.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@address", addres1_txt.Text);
        //cmd.Parameters.AddWithValue("@mobile", mob_txt.Text);
        //cmd.Parameters.AddWithValue("@email", email_txt.Text);
        //cmd.Parameters.AddWithValue("@maritial_status", martial_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@blood_group", blood_txt.Text);
        //cmd.Parameters.AddWithValue("@total_experience_year", exyear_txt.Text);
        //cmd.Parameters.AddWithValue("@total_exp_month", exmonth_txt.Text);
        //cmd.Parameters.AddWithValue("@experiencedetail", exdetail_txt.Text);
        //cmd.Parameters.AddWithValue("@salary", salary_txt.Text);
       
        //cmd.Parameters.AddWithValue("@password", lbl_pass.Text);
        //cmd.Parameters.AddWithValue("@emp_id", lbl_tid.Text);
        //cmd.Parameters.AddWithValue("@image", imgg);
        //cmd.ExecuteNonQuery();
       
        employee.employeeservice obj = new employee.employeeservice();
        int a = obj.allempupdate(Convert.ToInt32(Label_id.Text), DropDownList1.SelectedItem.ToString(), emp_no.Text, designation.Text, joindate_txt.Text, name_txt.Text, father_txt.Text, gender_ddl.SelectedItem.ToString(), dob_txt.Text, ddl_country.SelectedItem.ToString(), ddl_state.SelectedItem.ToString(), ddl_city.SelectedItem.ToString(), addres1_txt.Text, mob_txt.Text, email_txt.Text, martial_ddl.SelectedItem.ToString(), blood_txt.Text, exyear_txt.Text, exmonth_txt.Text, exdetail_txt.Text, salary_txt.Text, lbl_pass.Text, lbl_tid.Text, imgg);
        if (a > 0)
        {
            Response.Write("<script>alert('Data Updated')</script>");
            gridshow();
            blank();
        }
       
        clr_btn.Visible = true;
        upd_btn.Visible = false;
        submit_btn.Visible = true;
        Image2.Visible = false;
        con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("allempdetail_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        employee.employeeservice obj = new employee.employeeservice();
        int a = obj.allempdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {

            gridshow();
            Response.Write("<script>alert('Data Deleted')</script>");
        }
            con.Close();
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    protected void Export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=Website.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            //To Export all pages
            GridView1.AllowPaging = false;
            this.gridshow();

            GridView1.HeaderRow.BackColor = Color.White;
            foreach (TableCell cell in GridView1.HeaderRow.Cells)
            {
                cell.BackColor = GridView1.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in GridView1.Rows)
            {
                row.BackColor = Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    if (row.RowIndex % 2 == 0)
                    {
                        cell.BackColor = GridView1.AlternatingRowStyle.BackColor;
                    }
                    else
                    {
                        cell.BackColor = GridView1.RowStyle.BackColor;
                    }
                    cell.CssClass = "textmode";
                    GridView1.Columns[19].Visible = false;
                    GridView1.Columns[20].Visible = false;
                }
            }

            GridView1.RenderControl(hw);

            //style to format numbers to string
            string style = @"<style> .textmode { mso-number-format:\@; } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();

        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }
    public void country()
    {
        SqlDataAdapter da = new SqlDataAdapter("allempdetail_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "Country");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@type", "");
        da.SelectCommand.Parameters.AddWithValue("@emp_no", "");
        da.SelectCommand.Parameters.AddWithValue("@designation", "");
        da.SelectCommand.Parameters.AddWithValue("@doj", "");
        da.SelectCommand.Parameters.AddWithValue("@emp_name", "");
        da.SelectCommand.Parameters.AddWithValue("@father_name", "");
        da.SelectCommand.Parameters.AddWithValue("@gender", "");
        da.SelectCommand.Parameters.AddWithValue("@dob", "");
        da.SelectCommand.Parameters.AddWithValue("@country", "");
        da.SelectCommand.Parameters.AddWithValue("@state", "");
        da.SelectCommand.Parameters.AddWithValue("@city", "");
        da.SelectCommand.Parameters.AddWithValue("@address", "");
        da.SelectCommand.Parameters.AddWithValue("@mobile", "");
        da.SelectCommand.Parameters.AddWithValue("@email", "");
        da.SelectCommand.Parameters.AddWithValue("@maritial_status", "");
        da.SelectCommand.Parameters.AddWithValue("@blood_group", "");
        da.SelectCommand.Parameters.AddWithValue("@total_experience_year", "");
        da.SelectCommand.Parameters.AddWithValue("@total_exp_month", "");
        da.SelectCommand.Parameters.AddWithValue("@experiencedetail", "");
        da.SelectCommand.Parameters.AddWithValue("@salary", "");
        da.SelectCommand.Parameters.AddWithValue("@password", "");
        da.SelectCommand.Parameters.AddWithValue("@emp_id", "");
        da.SelectCommand.Parameters.AddWithValue("@image", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_country.DataSource = dt;
        ddl_country.DataTextField = "country_name";
        ddl_country.DataValueField = "pk_id";
        ddl_country.DataBind();
        ddl_country.Items.Insert(0, "Select Country");
    }
    public void state()
    {
             

        SqlDataAdapter da = new SqlDataAdapter("allempdetail_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "state");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@type", "");
        da.SelectCommand.Parameters.AddWithValue("@emp_no", "");
        da.SelectCommand.Parameters.AddWithValue("@designation", "");
        da.SelectCommand.Parameters.AddWithValue("@doj", "");
        da.SelectCommand.Parameters.AddWithValue("@emp_name", "");
        da.SelectCommand.Parameters.AddWithValue("@father_name", "");
        da.SelectCommand.Parameters.AddWithValue("@gender", "");
        da.SelectCommand.Parameters.AddWithValue("@dob", "");
        da.SelectCommand.Parameters.AddWithValue("@country", ddl_country.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@state", "");
        da.SelectCommand.Parameters.AddWithValue("@city", "");
        da.SelectCommand.Parameters.AddWithValue("@address", "");
        da.SelectCommand.Parameters.AddWithValue("@mobile", "");
        da.SelectCommand.Parameters.AddWithValue("@email", "");
        da.SelectCommand.Parameters.AddWithValue("@maritial_status", "");
        da.SelectCommand.Parameters.AddWithValue("@blood_group", "");
        da.SelectCommand.Parameters.AddWithValue("@total_experience_year", "");
        da.SelectCommand.Parameters.AddWithValue("@total_exp_month", "");
        da.SelectCommand.Parameters.AddWithValue("@experiencedetail", "");
        da.SelectCommand.Parameters.AddWithValue("@salary", "");
        da.SelectCommand.Parameters.AddWithValue("@password", "");
        da.SelectCommand.Parameters.AddWithValue("@emp_id", "");
        da.SelectCommand.Parameters.AddWithValue("@image", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_state.DataSource = dt;
        ddl_state.DataTextField = "state_name";
        ddl_state.DataValueField = "pk_id";
        ddl_state.DataBind();
        ddl_state.Items.Insert(0, "Select State");

    }
    public void city()
    {
              

        SqlDataAdapter da = new SqlDataAdapter("allempdetail_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "city");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@type", "");
        da.SelectCommand.Parameters.AddWithValue("@emp_no", "");
        da.SelectCommand.Parameters.AddWithValue("@designation", "");
        da.SelectCommand.Parameters.AddWithValue("@doj", "");
        da.SelectCommand.Parameters.AddWithValue("@emp_name", "");
        da.SelectCommand.Parameters.AddWithValue("@father_name", "");
        da.SelectCommand.Parameters.AddWithValue("@gender", "");
        da.SelectCommand.Parameters.AddWithValue("@dob", "");
        da.SelectCommand.Parameters.AddWithValue("@country", ddl_country.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@state", ddl_state.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@city", "");
        da.SelectCommand.Parameters.AddWithValue("@address", "");
        da.SelectCommand.Parameters.AddWithValue("@mobile", "");
        da.SelectCommand.Parameters.AddWithValue("@email", "");
        da.SelectCommand.Parameters.AddWithValue("@maritial_status", "");
        da.SelectCommand.Parameters.AddWithValue("@blood_group", "");
        da.SelectCommand.Parameters.AddWithValue("@total_experience_year", "");
        da.SelectCommand.Parameters.AddWithValue("@total_exp_month", "");
        da.SelectCommand.Parameters.AddWithValue("@experiencedetail", "");
        da.SelectCommand.Parameters.AddWithValue("@salary", "");
        da.SelectCommand.Parameters.AddWithValue("@password", "");
        da.SelectCommand.Parameters.AddWithValue("@emp_id", "");
        da.SelectCommand.Parameters.AddWithValue("@image", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_city.DataSource = dt;
        ddl_city.DataTextField = "city_name";
        ddl_city.DataValueField = "pk_id";
        ddl_city.DataBind();
        ddl_city.Items.Insert(0, "Select City");
    }
    protected void ddl_country_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }
    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }
    public void showtype()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from employeetype",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "name";
        DropDownList1.DataValueField = "pk_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Select Type");
    }
}