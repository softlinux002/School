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
public partial class Admin_parent_info : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    string pass;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            stuname();
            gridshow();
            blank();
        }
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
        SqlCommand com = new SqlCommand("select * from parentinfo where student_name='" + sname_ddl.SelectedItem.ToString() + "' and firstname='" + Parent_ddl.SelectedItem.ToString() + "' and email='" + email_txt.Text + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Exist Already!!!!');", true);
           
            dr.Close();
            blank();
        }
        else
        {
            dr.Close();
            //SqlCommand cmd = new SqlCommand("parentinfo_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@parent_id", "");
            //cmd.Parameters.AddWithValue("@firstname", Parent_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@student_name", sname_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@relation", relation_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@dob", dob_txt.Text);
            //cmd.Parameters.AddWithValue("@qualification", quali_ddl.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@occupation", occupation_txt.Text);
            //cmd.Parameters.AddWithValue("@income", income_txt.Text);
            //cmd.Parameters.AddWithValue("@email", email_txt.Text);
            //cmd.Parameters.AddWithValue("@mobilephone", mob_txt.Text);
            //cmd.Parameters.AddWithValue("@type", "parent");

            //Random ran = new Random();
            //int i = ran.Next(1, 9);
            //int j = i * 689;
            //pass = "Te" + j + "ER";
            //cmd.Parameters.AddWithValue("@password", pass);
            finance.Financeserv obj = new finance.Financeserv();
            int a = obj.parentinsert(Parent_ddl.SelectedItem.ToString(), sname_ddl.SelectedItem.ToString(), relation_ddl.SelectedItem.ToString(), dob_txt.Text, quali_ddl.SelectedItem.ToString(),
                occupation_txt.Text, income_txt.Text, email_txt.Text, mob_txt.Text, "parent", pass);
            if (a > 0)
            {

                var smtp = new System.Net.Mail.SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
                }
                smtp.Send("mysswtechnology@gmail.com".ToString(), email_txt.Text, "Message".ToString(), "Your Loginid:-  " + email_txt.Text + "\r\n" + "Your Password:-  " + pass);
                //System.Net.Mail.MailMessage mail = new MailMessage();
                //mail.From = new MailAddress("info@sswtechnology.com");
                //mail.To.Add(email_txt.Text);
                //mail.Subject = "Login Id Details";
                //mail.Body = "<html><head><title>Login Id Details:</title></head><body><div><br/><br/><p>Your Loginid:" + email_txt.Text + "<br/>Your Password:-" + pass + "<br/> </div></body></Html>";
                //mail.IsBodyHtml = true;
                //SmtpClient smtp = new SmtpClient();
                //smtp.Host = "relay-hosting.secureserver.net";
                //smtp.Port = 25;
                //smtp.EnableSsl = false;
                //smtp.Send(mail);
                //cmd.ExecuteNonQuery();

                string sURL;
                string message1 = "Thanks For Registration" + "\n\n" + "Email:" + email_txt.Text + "\n\n" + "Password:" + pass + "\n";
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

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Thanks For Registration!!!!');", true);

                gridshow();
                blank();
            }
        }
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {
        sname_ddl.SelectedValue = null;
        relation_ddl.SelectedValue = null;
        Parent_ddl.SelectedValue = null;
        dob_txt.Text = "";
        quali_ddl.SelectedValue = null;
        occupation_txt.Text = "";
        income_txt.Text = "";
        email_txt.Text = "";
        mob_txt.Text = "";
    }

    public void gridshow()
    {
        finance.Financeserv obj = new finance.Financeserv();

        //SqlDataAdapter da = new SqlDataAdapter("parentinfo_procevent", con);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.AddWithValue("@action","show");
        //da.SelectCommand.Parameters.AddWithValue("@parent_id", "");
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        GridView1.DataSource = obj.parentshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("parentinfo_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select_id");
        cmd.Parameters.AddWithValue("@parent_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        if (dr.Read())
        {
            Label_id.Text = dr["parent_id"].ToString();
            d = dr["firstname"].ToString();
            c = dr["student_name"].ToString();
            b = dr["relation"].ToString();
            
           
            dob_txt.Text = dr["dob"].ToString();
            a = dr["qualification"].ToString();
            

            occupation_txt.Text = dr["occupation"].ToString();
            income_txt.Text = dr["income"].ToString();
            email_txt.Text = dr["email"].ToString();
            mob_txt.Text = dr["mobilephone"].ToString();
            lbl_pass.Text = dr["password"].ToString();
            dr.Close();
            stuname();
            sname_ddl.Items.Insert(0, c);
            relation_ddl.Items.Insert(0, b);
            quali_ddl.Items.Insert(0, a);
            Parent_ddl.Items.Insert(0, d);
        }
        Export_excel.Visible = false;
        clr_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();


        //SqlCommand cmd = new SqlCommand("parentinfo_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@parent_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@firstname", Parent_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@student_name", sname_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@relation", relation_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@dob", dob_txt.Text);
        //cmd.Parameters.AddWithValue("@qualification", quali_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@occupation", occupation_txt.Text);
        //cmd.Parameters.AddWithValue("@income", income_txt.Text);
        //cmd.Parameters.AddWithValue("@email", email_txt.Text);
        //cmd.Parameters.AddWithValue("@mobilephone", mob_txt.Text);
        //cmd.Parameters.AddWithValue("@password", lbl_pass.Text);
        //cmd.Parameters.AddWithValue("@type", "parent");
        //cmd.ExecuteNonQuery();
         finance.Financeserv obj = new finance.Financeserv();
            int a = obj.parentupdate(Convert.ToInt32(Label_id.Text),Parent_ddl.SelectedItem.ToString(), sname_ddl.SelectedItem.ToString(), relation_ddl.SelectedItem.ToString(), dob_txt.Text, quali_ddl.SelectedItem.ToString(),
                occupation_txt.Text, income_txt.Text, email_txt.Text, mob_txt.Text,lbl_pass.Text,"parent");
            if (a > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);

                gridshow();
                blank();
                clr_btn.Visible = true;
                upd_btn.Visible = false;
                submit_btn.Visible = true;
            }
        con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("parentinfo_procevent", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@parent_id", l1.Text);
        //cmd.ExecuteNonQuery();
        finance.Financeserv obj = new finance.Financeserv();
        int a = obj.parentdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        }
        con.Close();
    }
   
    public void stuname()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        sname_ddl.DataSource = dt;
        sname_ddl.DataTextField = "student_name";
        sname_ddl.DataValueField = "student_id";
        sname_ddl.DataBind();
        sname_ddl.Items.Insert(0, "Select Student");
    }
    protected void sname_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        FatherName();
    }
    public void FatherName()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo where student_name='" + sname_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Parent_ddl.DataSource = dt;
        Parent_ddl.DataValueField = "student_id";
        Parent_ddl.DataTextField = "father_name";
        Parent_ddl.DataBind();
        Parent_ddl.Items.Insert(0, ("Select Parent"));
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
                    GridView1.Columns[11].Visible = false;
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
}