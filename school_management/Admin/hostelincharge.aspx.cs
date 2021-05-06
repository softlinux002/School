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
public partial class Admin_hostelincharge : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    string pass;
    string pass1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
            blank();
            inchargeno_txt.Text = GetID("select max(incharge_no) from Hostel_incharge_info").ToString();
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

        string imgg = "";
        if (incharge_img.HasFile)
        {
            imgg = ("~/img/" + incharge_img.FileName);
            incharge_img.SaveAs(Server.MapPath("~/img/") + incharge_img.FileName);
        }


        SqlCommand cmd = new SqlCommand("Hostel_incharge_info_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "insert");
        cmd.Parameters.AddWithValue("@pk_id", "");
        cmd.Parameters.AddWithValue("@incharge_no", inchargeno_txt.Text);
        cmd.Parameters.AddWithValue("@joining_date", joindate_txt.Text);
        cmd.Parameters.AddWithValue("@name", name_txt.Text);
        cmd.Parameters.AddWithValue("@father_name", father_txt.Text);
        cmd.Parameters.AddWithValue("@gender", gender_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@dob", dob_txt.Text);
        cmd.Parameters.AddWithValue("@address1", addres1_txt.Text);
        cmd.Parameters.AddWithValue("@address2", addres2_txt.Text);
        cmd.Parameters.AddWithValue("@mobile", mob_txt.Text);
        cmd.Parameters.AddWithValue("@email", email_txt.Text);
        cmd.Parameters.AddWithValue("@maritial_status", martial_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@blood_group", blood_txt.Text);
        cmd.Parameters.AddWithValue("@total_exp_year", exyear_txt.Text);
        cmd.Parameters.AddWithValue("@total_exp_month", exmonth_txt.Text);
        cmd.Parameters.AddWithValue("@experience_detail", exdetail_txt.Text);

        Random ran = new Random();
        int i = ran.Next(1, 9);
        int j = i * 289;
        pass = "HI" + j + "R";
        cmd.Parameters.AddWithValue("@password", pass);

        Random ran1 = new Random();
        int k = ran1.Next(1, 5);
        int l = k * 256;
        pass1 = "EM" + l + "ID";
        cmd.Parameters.AddWithValue("@incharge_hid", pass1);
        cmd.Parameters.AddWithValue("@image", imgg);
        cmd.Parameters.AddWithValue("@type", "Hostel Incharge");


        //var smtp = new System.Net.Mail.SmtpClient();
        //{
        //    smtp.Host = "smtp.gmail.com";
        //    smtp.Port = 587;
        //    smtp.EnableSsl = true;
        //    smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
        //}
        //smtp.Send("mysswtechnology@gmail.com".ToString(), email_txt.Text, "Message".ToString(), "Your Loginid:-  " + email_txt.Text + "\r\n" + "Your Password:-  " + pass + "\r\n" + "Teacher id:- " + pass1);
        System.Net.Mail.MailMessage mail = new MailMessage();
        mail.From = new MailAddress("info@sswtechnology.com");
        mail.To.Add(email_txt.Text);
        mail.Subject = "Login Id Details";
        mail.Body = "<html><head><title>Login Id Details:</title></head><body><div><br/><br/><p>Your Loginid:" + email_txt.Text + "<br/>Your Password:-" + pass + "<br/>" + "HostelIncharge id:-" + pass1 + "<br/> </div></body></Html>";
        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "relay-hosting.secureserver.net";
        smtp.Port = 25;
        smtp.EnableSsl = false;
        smtp.Send(mail);
         cmd.ExecuteNonQuery();

        string sURL;
        string message1 = "Thanks For Registration" + "\n\n" +"Email:" + email_txt.Text + "\n\n" + "Password:" +pass+ "\n" +"Teacher_ID:" +pass1+ "\n";
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
        con.Close();
        inchargeno_txt.Text = GetID("select max(incharge_no) from Hostel_incharge_info").ToString();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    public void blank()
    {
        inchargeno_txt.Text = "";
        joindate_txt.Text = "";
        name_txt.Text = "";
        father_txt.Text = "";
        gender_ddl.SelectedValue = null;
        dob_txt.Text = "";
        addres1_txt.Text = "";
        addres2_txt.Text="";
        mob_txt.Text="";
        email_txt.Text="";
        martial_ddl.SelectedValue = null;
        blood_txt.Text = "";
        exyear_txt.Text = "";
        exmonth_txt.Text = "";
        exdetail_txt.Text = "";
        
    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("Hostel_incharge_info_event_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        string imgg = "";
        if (incharge_img.HasFile)
        {
            imgg = ("~/img/" + incharge_img.FileName);
            incharge_img.SaveAs(Server.MapPath("~/img/") + incharge_img.FileName);
        }

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("Hostel_incharge_info_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            inchargeno_txt.Text = dr["incharge_no"].ToString();
            joindate_txt.Text = dr["joining_date"].ToString();
            name_txt.Text = dr["teacher_name"].ToString();
            father_txt.Text = dr["father_name"].ToString();

            a = dr["gender"].ToString();
            
            dob_txt.Text = dr["dob"].ToString();
            addres1_txt.Text = dr["address1"].ToString();
            addres2_txt.Text = dr["address2"].ToString();
            mob_txt.Text = dr["mobile"].ToString();
            email_txt.Text = dr["email"].ToString();

            b = dr["maritial_status"].ToString();
           
            blood_txt.Text = dr["blood_group"].ToString();
            exyear_txt.Text = dr["total_exp_year"].ToString();
            exmonth_txt.Text = dr["total_exp_month"].ToString();
            exdetail_txt.Text = dr["experience_detail"].ToString();
            lbl_pass.Text = dr["password"].ToString();
            lbl_tid.Text = dr["teacher_tid"].ToString();
            imgg = dr["image"].ToString();
            gender_ddl.Items.Insert(0, a);
            martial_ddl.Items.Insert(0, b);
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

        string imgg = "";
        if (incharge_img.HasFile)
        {
            imgg = ("~/img/" + incharge_img.FileName);
            incharge_img.SaveAs(Server.MapPath("~/img/") + incharge_img.FileName);
        }


        SqlCommand cmd = new SqlCommand("Hostel_incharge_info_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@incharge_no", inchargeno_txt.Text);
        cmd.Parameters.AddWithValue("@joining_date", joindate_txt.Text);
        cmd.Parameters.AddWithValue("@name", name_txt.Text);
        cmd.Parameters.AddWithValue("@father_name", father_txt.Text);
        cmd.Parameters.AddWithValue("@gender", gender_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@dob", dob_txt.Text);
        cmd.Parameters.AddWithValue("@address1", addres1_txt.Text);
        cmd.Parameters.AddWithValue("@address2", addres2_txt.Text);
        cmd.Parameters.AddWithValue("@mobile", mob_txt.Text);
        cmd.Parameters.AddWithValue("@email", email_txt.Text);
        cmd.Parameters.AddWithValue("@maritial_status", martial_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@blood_group", blood_txt.Text);
        cmd.Parameters.AddWithValue("@total_exp_year", exyear_txt.Text);
        cmd.Parameters.AddWithValue("@total_exp_month", exmonth_txt.Text);
        cmd.Parameters.AddWithValue("@experience_detail", exdetail_txt.Text);
        cmd.Parameters.AddWithValue("@password", lbl_pass.Text);

        cmd.Parameters.AddWithValue("@incharge_hid", lbl_tid.Text);
        cmd.Parameters.AddWithValue("@image", imgg);
        cmd.Parameters.AddWithValue("@type", "teacher");

        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Data Updated')</script>");
        gridshow();
        blank();
        con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("Hostel_incharge_info_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        Response.Write("<script>alert('Data Deleted')</script>");
        con.Close();
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    protected void Export_excel_Click(object sender, EventArgs e)
    {
        //Response.Clear();
        //Response.Buffer = true;
        //Response.AddHeader("content-disposition", "attachment;filename=Website.xls");
        //Response.Charset = "";
        //Response.ContentType = "application/vnd.ms-excel";
        //using (StringWriter sw = new StringWriter())
        //{
        //    HtmlTextWriter hw = new HtmlTextWriter(sw);

        //    //To Export all pages
        //    GridView1.AllowPaging = false;
        //    this.gridshow();

        //    GridView1.HeaderRow.BackColor = Color.White;
        //    foreach (TableCell cell in GridView1.HeaderRow.Cells)
        //    {
        //        cell.BackColor = GridView1.HeaderStyle.BackColor;
        //    }
        //    foreach (GridViewRow row in GridView1.Rows)
        //    {
        //        row.BackColor = Color.White;
        //        foreach (TableCell cell in row.Cells)
        //        {
        //            if (row.RowIndex % 2 == 0)
        //            {
        //                cell.BackColor = GridView1.AlternatingRowStyle.BackColor;
        //            }
        //            else
        //            {
        //                cell.BackColor = GridView1.RowStyle.BackColor;
        //            }
        //            cell.CssClass = "textmode";
        //            GridView1.Columns[19].Visible = false;
        //            GridView1.Columns[20].Visible = false;
        //        }
        //    }

        //    GridView1.RenderControl(hw);

        //    //style to format numbers to string
        //    string style = @"<style> .textmode { mso-number-format:\@; } </style>";
        //    Response.Write(style);
        //    Response.Output.Write(sw.ToString());
        //    Response.Flush();
        //    Response.End();

        //}
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }

}