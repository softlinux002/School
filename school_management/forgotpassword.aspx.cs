using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net;
using System.Net.Mail;
public partial class forgotpassword : System.Web.UI.Page
{
    string pass;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    { 
        if(DropDownList1.SelectedItem.ToString() == "Student")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from studentinfo where email='" + Text_Email.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr["student_id"].ToString();
                Text_Email.Text = dr["email"].ToString();
            }
            dr.Close();
            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 456;
            pass = "Co" + j + "Ed";
            cmd.Parameters.AddWithValue("@password", pass);

            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
            }
            smtp.Send("mysswtechnology@gmail.com".ToString(), Text_Email.Text, "Message".ToString(), "Your Loginid:-  " + Text_Email.Text + "\r\n" + "Your Password:-  " + pass + "\r\n");
            SqlCommand cmd1 = new SqlCommand("update  studentinfo set  password='" + pass + "' where student_id='" + Label2.Text + "'", con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            blank();
            Response.Write("<script>alert('Password sent succesfully')</script>");
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "Teacher")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from teacher_info where email='" + Text_Email.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr["teacher_id"].ToString();
                Text_Email.Text = dr["email"].ToString();

                dr.Close();
            }
            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 456;
            pass = "Te" + j + "Ed";
            cmd.Parameters.AddWithValue("@password", pass);

            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
            }
            smtp.Send("mysswtechnology@gmail.com".ToString(), Text_Email.Text, "Message".ToString(), "Your Loginid:-  " + Text_Email.Text + "\r\n" + "Your Password:-  " + pass + "\r\n");
            SqlCommand cmd1 = new SqlCommand("update teacher_info set password='" + pass + "' where teacher_id='" + Label2.Text + "'", con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            blank();
            Response.Write("<script>alert('Password sent successfully')</script>");
        
        }
        else if (DropDownList1.SelectedItem.ToString() == "Parent")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from parentinfo where email='" + Text_Email.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr["parent_id"].ToString();
                Text_Email.Text = dr["email"].ToString();
                dr.Close();
            }
            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 456;
            pass = "Pa" + j + "Ed";
            cmd.Parameters.AddWithValue("@password", pass);

            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
            }
            smtp.Send("mysswtechnology@gmail.com".ToString(), Text_Email.Text, "Message".ToString(), "Your Loginid:-  " + Text_Email.Text + "\r\n" + "Your Password:-  " + pass + "\r\n");
            SqlCommand cmd1 = new SqlCommand("update parentinfo set  password='" + pass + "' where parent_id='" + Label2.Text + "'", con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            blank();
            Response.Write("<script>alert('Password Sent Successfully')</script>");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Library")
        {
            con.Open();
            SqlCommand cmd=new SqlCommand("Select * from add_libraryemployee where email='"+Text_Email.Text+"'",con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr["pk_id"].ToString();
                Text_Email.Text = dr["email"].ToString();
                dr.Close();
            }
            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 456;
            pass = "Li" + j + "Ed";
            cmd.Parameters.AddWithValue("@password", pass);
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
            }
            smtp.Send("mysswtechnology@gmail.com".ToString(), Text_Email.Text, "Message".ToString(), "Your Loginid:-  " + Text_Email.Text + "\r\n" + "Your Password:-  " + pass + "\r\n");
            SqlCommand cmd1 = new SqlCommand("update add_libraryemployee set  password='" + pass + "' where pk_id='" + Label2.Text + "'", con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            blank();
            Response.Write("<script>alert('Password Sent Successfully')</script>");
            
        }
        else if (DropDownList1.SelectedItem.ToString() == "Hostel")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Hostel_incharge_info where email='" + Text_Email.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr["pk_id"].ToString();
                Text_Email.Text = dr["email"].ToString();
                dr.Close();
            }
            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 784;
            pass="Ho"+j;
            cmd.Parameters.AddWithValue("@password",pass);
             var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
            }
            smtp.Send("mysswtechnology@gmail.com".ToString(), Text_Email.Text, "Message".ToString(), "Your Loginid:-  " + Text_Email.Text + "\r\n" + "Your Password:-  " + pass + "\r\n");
            SqlCommand cmd1 = new SqlCommand("update Hostel_incharge_info set  password='" + pass + "' where pk_id='" + Label2.Text + "'", con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            blank();
            Response.Write("<script>alert('Password Sent Successfully')</script>");

        }
        else if (DropDownList1.SelectedItem.ToString() == "Employee")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from allempdetail where email='" + Text_Email.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr["pk_id"].ToString();
                Text_Email.Text = dr["email"].ToString();
                dr.Close();
            }
            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 784;
            pass = "Emp" + j;
            cmd.Parameters.AddWithValue("@password", pass);
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new NetworkCredential("mysswtechnology@gmail.com".ToString(), "my1234567".ToString());
            }
            smtp.Send("mysswtechnology@gmail.com".ToString(), Text_Email.Text, "Message".ToString(), "Your Loginid:-  " + Text_Email.Text + "\r\n" + "Your Password:-  " + pass + "\r\n");
            SqlCommand cmd1 = new SqlCommand("update allempdetail set  password='" + pass + "' where pk_id='" + Label2.Text + "'", con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            blank();
            Response.Write("<script>alert('Password Sent Successfully')</script>");

        }
        else
        {
            Response.Write("<script>alert('Nothing found')</script>");
        }
    }
    
    public void blank()
    {
        Text_Email.Text = "";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}