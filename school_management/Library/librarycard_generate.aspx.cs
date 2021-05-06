
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
public partial class Library_librarycard_generate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
            blank();
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

        con.Open();
       
        
          
            SqlCommand cmd = new SqlCommand("librarycard_generate_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            Random ran = new Random();
            int i = ran.Next(1, 9);
            int j = i * 45678;
            string Card = "14" + j;
            cmd.Parameters.AddWithValue("@card_no", Card);
            cmd.Parameters.AddWithValue("@type", DropDown_holder.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@id", Text_id.Text);
            cmd.Parameters.AddWithValue("@name", Text_name.Text);
            cmd.Parameters.AddWithValue("@father_name", Text_father.Text);
            cmd.Parameters.AddWithValue("@mobile", Text_mobile.Text);
            cmd.Parameters.AddWithValue("@address1", Text_address.Text);
           
            cmd.ExecuteNonQuery();
            gridshow();
            blank();
            Response.Write("<script>alert('Data Submit')</script>");
       
            
    }

    public void blank()
    {
        Text_cardno.Text = "";
        DropDown_holder.SelectedValue = null;
        Text_id.Text = "";
        Text_name.Text = "";
        Text_father.Text = "";
        Text_mobile.Text = "";
        Text_address.Text = "";
        

    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("librarycard_generate_dlt_proc", con);
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

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("librarycard_generate_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_id.Text = dr["id"].ToString();
            Text_name.Text = dr["name"].ToString();
            Text_father.Text = dr["father_name"].ToString();
            Text_mobile.Text = dr["mobile"].ToString();
            Text_address.Text = dr["address1"].ToString();
            
        }
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        clear_btn.Visible = true;
        con.Close();
    }

    protected void clr_btn_Click(object sender, EventArgs e)
    {
        blank();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("librarycard_generate_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@card_no", Text_cardno.Text);
        cmd.Parameters.AddWithValue("@type", DropDown_holder.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@id", Text_id.Text);
        cmd.Parameters.AddWithValue("@name", Text_name.Text);
        cmd.Parameters.AddWithValue("@father_name", Text_father.Text);
        cmd.Parameters.AddWithValue("@mobile", Text_mobile.Text);
        cmd.Parameters.AddWithValue("@address1", Text_address.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        blank();
        Response.Write("<script>alert('Data Updated')</script>");
        submit_btn.Visible = true;
        upd_btn.Visible = false;
        Export_excel.Visible = false;
        con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("librarycard_generate_dlt_proc", con);
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
    protected void Text_id_TextChanged(object sender, EventArgs e)
    {
        if(DropDown_holder.SelectedItem.ToString()=="Student")
        {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from librarycard_generate where id='" + Text_id.Text + "'", con);
        cmd1.ExecuteNonQuery();
        SqlDataReader dr1 = cmd1.ExecuteReader();
                 if (dr1.Read())
                {
                 Response.Write("<Script>alert('Record Already Exist')</script>");
                 dr1.Close();
                  }
                     else
                         {
                              dr1.Close();
                              SqlCommand cmd = new SqlCommand("select * from studentinfo where s_id='" + Text_id.Text + "'", con);
                              cmd.ExecuteNonQuery();
                             SqlDataReader dr = cmd.ExecuteReader();
                             if (dr.Read())
                             {
                                 Text_name.Text = dr["student_name"].ToString();
                                 Text_father.Text = dr["father_name"].ToString();
                                 Text_mobile.Text = dr["phone"].ToString();
                                 Text_address.Text = dr["address1"].ToString();
                                 
                                 dr.Close();
                             }
                             else
                             {
                                 dr.Close();
                                 Response.Write("<Script>alert('Please Enter a Valid Id')</script>");
                             }
                                 
                                }
            
        con.Close();
        }

        else if(DropDown_holder.SelectedItem.ToString()=="Employee")
        {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from librarycard_generate where id='" + Text_id.Text + "'", con);
        cmd1.ExecuteNonQuery();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            Response.Write("<Script>alert('Record Already Exist')</script>");
            dr1.Close();
        }
        else
        {
            dr1.Close();
            SqlCommand cmd = new SqlCommand("select * from teacher_info where teacher_tid='" + Text_id.Text + "'", con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Text_name.Text = dr["teacher_name"].ToString();
                Text_father.Text = dr["father_name"].ToString();
                Text_mobile.Text = dr["mobile"].ToString();
                Text_address.Text = dr["address1"].ToString();
                dr.Close();
          }
            else
            {
                dr.Close();
                Response.Write("<Script>alert('Please Enter Valid Id')</script>");
            }
        }
            con.Close();
        
        }
    }


    protected void Export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=librarycard.xls");
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
                    GridView1.Columns[10].Visible = false;
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