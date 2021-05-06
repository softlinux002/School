using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Globalization;
public partial class contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        Random ram = new Random();
        int j = 25 * 30;
        string pass="S"+j+"GT";
        SqlCommand cmd=new SqlCommand("insert into demoadmin values('"+text_name.Text+"','"+Text_contact.Text+"','"+Text_email.Text+"','"+Text_subject.Text+"','"+Text_desc.Text+"','Admin','"+pass+"','Demo')",con);
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
        }
        smtp.Send("mysswtechnology@gmail.com".ToString(), Text_email.Text, "Message".ToString(), "Your User Name:- Admin  Password:-  " + pass + "\r\n" );
        Response.Write("<script>alert('Demo username and Password Sent In You Email ')</script>");
        cmd.ExecuteNonQuery();
        con.Close();
        blank();
    }
    public void blank()
    {
        text_name.Text = "";
        Text_contact.Text = "";
        Text_email.Text = "";
        Text_subject.Text = "";
        Text_desc.Text = "";
    }
}