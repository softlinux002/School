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
public partial class Admin_student_info : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    string pass;
    string pass1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            country();
            batchddl();
            gridshow();
            blank();
            admisn_no_txt.Text = GetID("select max(admission_no) from studentinfo").ToString();
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
        string senderusername;
        senderusername = Label9.Text;
        string senderpassword;
        senderpassword = Label10.Text;
        string senderid;
        senderid = Label11.Text;
        con.Open();

        SqlCommand com = new SqlCommand("select * from studentinfo where student_name='" + name_txt.Text + "' and father_name='" + father_txt.Text + "' and mother_name='" + mother_txt.Text + "' and roll_no='" + rollno_txt.Text + "' and email='" + email_txt.Text + "' and batch='" + batch_ddl.SelectedItem.ToString() + "' and class='"+class_ddl.SelectedItem.ToString()+"'", con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Exist Already!!!!');", true);
          
        }
        else
        {
            dr.Close();
            string imgg = "";
            if (student_image.HasFile)
            {
                imgg = ("~/img/" + student_image.FileName);
                student_image.SaveAs(Server.MapPath("~/img/") + student_image.FileName);
            }

            string imgg1 = "";
            if (doc_image.HasFile)
            {
                imgg1 = ("~/img/" + doc_image.FileName);
                doc_image.SaveAs(Server.MapPath("~/img/") + doc_image.FileName);
            }

            //SqlCommand cmd = new SqlCommand("studentinfo_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@student_id", "");
            //cmd.Parameters.AddWithValue("@admission_no", admisn_no_txt.Text);
            //cmd.Parameters.AddWithValue("@admissiondate", admismdate_txt.Text);
            //cmd.Parameters.AddWithValue("@bloodgroup", blood_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@student_name", name_txt.Text);
            //cmd.Parameters.AddWithValue("@father_name", father_txt.Text);
            //cmd.Parameters.AddWithValue("@mother_name", mother_txt.Text);
            //cmd.Parameters.AddWithValue("@batch", batch_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@stream", stream_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@roll_no", rollno_txt.Text);
            //cmd.Parameters.AddWithValue("@dob", dob_txt.Text);
            //cmd.Parameters.AddWithValue("@gender", gender_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@country", ddl_country.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@state", ddl_state.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@city", ddl_city.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@address1", addres1_txt.Text);
            //cmd.Parameters.AddWithValue("@phone", mob_txt.Text);
            //cmd.Parameters.AddWithValue("@email", email_txt.Text);

        
            //Random ran = new Random();
            //int i = ran.Next(1, 9);
            //int j = i * 456;
            //pass = "Co" + j + "Ed";
            //cmd.Parameters.AddWithValue("@password", pass);

            //Random ran1 = new Random();
            //int k = ran.Next(1, 5);
            //int l = k * 456;
            //pass1 = "ST" + l + "Ed";
            //cmd.Parameters.AddWithValue("@s_id", pass1);

            //cmd.Parameters.AddWithValue("@image", imgg);
            //cmd.Parameters.AddWithValue("@document_name", docname_txt.Text);
            //cmd.Parameters.AddWithValue("@doc_image", imgg1);
            //cmd.Parameters.AddWithValue("@type", "student");

            finance.Financeserv obj = new finance.Financeserv();
            int a = obj.studentinsert(admisn_no_txt.Text, admismdate_txt.Text, blood_ddl.SelectedItem.ToString(), name_txt.Text, father_txt.Text, mother_txt.Text, batch_ddl.SelectedItem.ToString(),
              stream_ddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), rollno_txt.Text, dob_txt.Text, gender_ddl.SelectedItem.ToString(),
              ddl_country.SelectedItem.ToString(), ddl_state.SelectedItem.ToString(), ddl_city.SelectedItem.ToString(), addres1_txt.Text, mob_txt.Text, email_txt.Text, pass, pass1, imgg, docname_txt.Text, imgg1, "student");
            if (a > 0)
            {
                var smtp = new System.Net.Mail.SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
                }
                smtp.Send("mysswtechnology@gmail.com".ToString(), email_txt.Text, "Message".ToString(), "Your Loginid:-  " + email_txt.Text + "\r\n" + "Your Password:-  " + pass + "\r\n" + "student id:- " + pass1);
                //System.Net.Mail.MailMessage mail = new MailMessage();
                //mail.From = new MailAddress("info@sswtechnology.com");
                //mail.To.Add(email_txt.Text);
                //mail.Subject = "Login Id Details";
                //mail.Body = "<html><head><title>Login Id Details:</title></head><body><div><br/><br/><p>Your Loginid:" + email_txt.Text + "<br/>Your Password:-" + pass + "<br/>" + "Student id:-" + pass1 + "<br/> </div></body></Html>";
                //mail.IsBodyHtml = true;
                //SmtpClient smtp = new SmtpClient();
                //smtp.Host = "relay-hosting.secureserver.net";
                //smtp.Port = 25;
                //smtp.EnableSsl = false;
                //smtp.Send(mail);


                string sURL;
                string message1 = "Thanks For Registration" + "\n\n" + "Email:" + email_txt.Text + "\n\n" + "Password:" + pass + "\n\n" + "Student ID" + pass1 + "\n";
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

                gridshow();
                blank();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Thanks for Registration!!!!');", true);

                con.Close();
                admisn_no_txt.Text = GetID("select max(admission_no) from studentinfo").ToString();
            }
        }
    }

    public void blank()
    {
        admisn_no_txt.Text = "";
        admismdate_txt.Text = "";
       blood_ddl.SelectedValue = null;
        name_txt.Text = "";
        father_txt.Text = "";
        mother_txt.Text = "";
        rollno_txt.Text = "";
        dob_txt.Text = "";
        addres1_txt.Text = "";
        
        mob_txt.Text = "";
        email_txt.Text = "";
        docname_txt.Text = "";
        batch_ddl.SelectedValue = null;
        class_ddl.SelectedValue = null;
    }

    public void gridshow()
    {
        //SqlDataAdapter da = new SqlDataAdapter("studentinfo_procevent", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action", "show");
        //da.SelectCommand.Parameters.AddWithValue("@student_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        finance.Financeserv obj = new finance.Financeserv();
        GridView1.DataSource = obj.studentshow();
        GridView1.DataBind();
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        string imgg = "";
        if (student_image.HasFile)
        {
            imgg = ("~/img/" + student_image.FileName);
            student_image.SaveAs(Server.MapPath("~/img/") + student_image.FileName);
        }

        string imgg1 = "";
        if (doc_image.HasFile)
        {
            imgg1 = ("~/img/" + doc_image.FileName);
            doc_image.SaveAs(Server.MapPath("~/img/") + doc_image.FileName);
        }



        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("studentinfo_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select_id");
        cmd.Parameters.AddWithValue("@student_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        string f;
        string g;
        string j;
        string k;
        string l;
        if (dr.Read())
        {
            Label_id.Text = dr["student_id"].ToString();
            admisn_no_txt.Text = dr["admission_no"].ToString();
            admismdate_txt.Text = dr["admissiondate"].ToString();
            g = dr["bloodgroup"].ToString();
            name_txt.Text = dr["student_name"].ToString();
            father_txt.Text = dr["father_name"].ToString();
            mother_txt.Text = dr["mother_name"].ToString();
            d = dr["batch"].ToString();
            f = dr["stream"].ToString();
            a = dr["class"].ToString();
            b = dr["section"].ToString();
            rollno_txt.Text = dr["roll_no"].ToString();
            dob_txt.Text = dr["dob"].ToString();
            c = dr["gender"].ToString();
            j = dr["country"].ToString();
            k = dr["state"].ToString();
            l = dr["city"].ToString();
            addres1_txt.Text = dr["address1"].ToString();
            mob_txt.Text = dr["phone"].ToString();
            email_txt.Text = dr["email"].ToString();
            lbl_pass.Text = dr["password"].ToString();
            lbl_sid.Text = dr["s_id"].ToString();
            Image2.ImageUrl = dr["image"].ToString();
            docname_txt.Text = dr["document_name"].ToString();
            imgg1 = dr["doc_image"].ToString();
            dr.Close();
            batchddl();
            batch_ddl.Items.Insert(0, d);
            classddl();
            class_ddl.Items.Insert(0, a);
            sectionddl();
            section_ddl.Items.Insert(0, b);
            gender_ddl.Items.Insert(0, c);
            blood_ddl.Items.Insert(0, g);
            stream_ddl.Items.Insert(0, f);
            country();
            ddl_country.Items.Insert(0, j);
            state();
            ddl_state.Items.Insert(0, k);
            city();
            ddl_city.Items.Insert(0, l);
        }
        export_excel.Visible = false;
        clear_btn.Visible = true;
        Image2.Visible = true;
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

        string imgg = "";
        if (student_image.HasFile)
        {
            imgg = ("~/img/" + student_image.FileName);
            student_image.SaveAs(Server.MapPath("~/img/") + student_image.FileName);
        }
        else
        {
            imgg = Image2.ImageUrl;
        }

        string imgg1 = "";
        if (doc_image.HasFile)
        {
            imgg1 = ("~/img/" + doc_image.FileName);
            doc_image.SaveAs(Server.MapPath("~/img/") + doc_image.FileName);
        }

        //SqlCommand cmd = new SqlCommand("studentinfo_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@student_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@admission_no", admisn_no_txt.Text);
        //cmd.Parameters.AddWithValue("@admissiondate", admismdate_txt.Text);
        //cmd.Parameters.AddWithValue("@bloodgroup", blood_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@student_name", name_txt.Text);
        //cmd.Parameters.AddWithValue("@father_name", father_txt.Text);
        //cmd.Parameters.AddWithValue("@mother_name", mother_txt.Text);
        //cmd.Parameters.AddWithValue("@batch", batch_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", stream_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", class_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", section_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@roll_no", rollno_txt.Text);
        //cmd.Parameters.AddWithValue("@dob", dob_txt.Text);
        //cmd.Parameters.AddWithValue("@gender", gender_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@country", gender_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@state", gender_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@city", gender_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@address1", addres1_txt.Text);
        //cmd.Parameters.AddWithValue("@phone", mob_txt.Text);
        //cmd.Parameters.AddWithValue("@email", email_txt.Text);
        //cmd.Parameters.AddWithValue("@password", lbl_pass.Text);
        //cmd.Parameters.AddWithValue("@s_id", lbl_sid.Text);
        //cmd.Parameters.AddWithValue("@image", imgg);
        //cmd.Parameters.AddWithValue("@document_name", docname_txt.Text);
        //cmd.Parameters.AddWithValue("@doc_image", imgg1);
        //cmd.Parameters.AddWithValue("@type", "student");
        //cmd.ExecuteNonQuery();
        finance.Financeserv obj = new finance.Financeserv();
        int a = obj.studentupdate(Convert.ToInt32(Label_id.Text),admisn_no_txt.Text, admismdate_txt.Text, blood_ddl.SelectedItem.ToString(), name_txt.Text, father_txt.Text, mother_txt.Text, batch_ddl.SelectedItem.ToString(),
          stream_ddl.SelectedItem.ToString(), class_ddl.SelectedItem.ToString(), section_ddl.SelectedItem.ToString(), rollno_txt.Text, dob_txt.Text, gender_ddl.SelectedItem.ToString(),
          ddl_country.SelectedItem.ToString(), ddl_state.SelectedItem.ToString(), ddl_city.SelectedItem.ToString(), addres1_txt.Text, mob_txt.Text, email_txt.Text, lbl_pass.Text, lbl_sid.Text, imgg, docname_txt.Text, imgg1, "student");
        if (a > 0)
        gridshow();
        blank();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
        
        submit_btn.Visible = true;
        upd_btn.Visible = false;
        Image2.Visible = false;
        con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("studentinfo_procevent", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@student_id", l1.Text);
        //cmd.ExecuteNonQuery();
        finance.Financeserv obj = new finance.Financeserv();
        int a = obj.studentdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!');", true);
        }
        
        con.Close();
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

    public void classddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from class_info where batch='"+ batch_ddl.SelectedItem.ToString() +"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
        class_ddl.DataValueField = "class_id";
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }

    protected void batch_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        classddl();
    }

    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        sectionddl();
    }
    public void sectionddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct section_name  from section where class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
        //section_ddl.DataValueField = "section_id";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    protected void export_excel_Click(object sender, EventArgs e)
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
                    GridView1.Columns[11].Visible = false;
                    GridView1.Columns[12].Visible = false;
                    //GridView1.Columns[18].Visible = false;
                    //GridView1.Columns[19].Visible = false;
                }
            }

            GridView1.RenderControl(hw);

          
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
        SqlDataAdapter da = new SqlDataAdapter("Select * from country", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_country.DataSource = dt;
        ddl_country.DataTextField = "country_name";
        ddl_country.DataValueField = "pk_id";
        ddl_country.DataBind();
        ddl_country.Items.Insert(0, "Select Country");
    }
    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }
    protected void ddl_country_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }
    public void state()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from state where country_name='" + ddl_country.SelectedItem.ToString() + "'", con);
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
        SqlDataAdapter da = new SqlDataAdapter("Select * from city where country='" + ddl_country.SelectedItem.ToString() + "'and state='"+ddl_state.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_city.DataSource = dt;
        ddl_city.DataTextField = "city_name";
        ddl_city.DataValueField = "pk_id";
        ddl_city.DataBind();
        ddl_city.Items.Insert(0, "Select City");
    }
    protected void rollno_txt_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from studentinfo where batch='" + batch_ddl.SelectedItem.ToString() + "'and stream='" + stream_ddl.SelectedItem.ToString() + "'and class='" + class_ddl.SelectedItem.ToString() + "'and section='" + section_ddl.SelectedItem.ToString() + "' and roll_no='"+rollno_txt.Text+"'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('roll no already exist!!');", true);
            rollno_txt.Text = "";
            dr.Close();
        }
        else
        {
            dr.Close();

        }
        cmd.ExecuteNonQuery();
        con.Close();
    }
}