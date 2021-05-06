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

public partial class Admin_Add_driver : System.Web.UI.Page
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
        
        SqlCommand cmd1 = new SqlCommand("driver_info_proc", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@action", "driverexist");
        cmd1.Parameters.AddWithValue("@driver_id", "");
        cmd1.Parameters.AddWithValue("@driver_name",Text_drivername.Text );
        cmd1.Parameters.AddWithValue("@License_no", Text_licenseno.Text);
        cmd1.Parameters.AddWithValue("@dob", "");
        cmd1.Parameters.AddWithValue("@license_expiry_date","");
        cmd1.Parameters.AddWithValue("@contact_no","" );
        cmd1.Parameters.AddWithValue("@experience", "");
        cmd1.Parameters.AddWithValue("@refrence_name", "");
        cmd1.Parameters.AddWithValue("@refrence_contactno","" );
        cmd1.Parameters.AddWithValue("@address", "");
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<script>alert('Record Exist Already')</script>");
            dr.Close();
        }
        else
        {
            dr.Close();
            SqlCommand cmd = new SqlCommand("driver_info_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@driver_id", "");
            cmd.Parameters.AddWithValue("@driver_name", Text_drivername.Text);
            cmd.Parameters.AddWithValue("@License_no", Text_licenseno.Text);
            cmd.Parameters.AddWithValue("@dob", Text_dob.Text);
            cmd.Parameters.AddWithValue("@license_expiry_date", Text_license_expiry.Text);
            cmd.Parameters.AddWithValue("@contact_no", Text_contactno.Text);
            cmd.Parameters.AddWithValue("@experience", Text_expireience.Text);
            cmd.Parameters.AddWithValue("@refrence_name", Text_refrencename.Text);
            cmd.Parameters.AddWithValue("@refrence_contactno", Text_refrence_contact.Text);
            cmd.Parameters.AddWithValue("@address", Text_address.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Submitted')</script>");
            gridshow();
            blank();
        }
        con.Close();
    }
    public void blank()
    {
        Text_drivername.Text = "";
        Text_licenseno.Text = "";
        Text_dob.Text = "";
        Text_license_expiry.Text = "";
        Text_contactno.Text = "";
        Text_expireience.Text = "";
        Text_refrencename.Text = "";
        Text_refrence_contact.Text = "";
        Text_address.Text = "";
    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("driver_info_event_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@driver_id", "");
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
        SqlCommand cmd = new SqlCommand("driver_info_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@driver_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
      
        if (dr.Read())
        {
            Label_id.Text = dr["driver_id"].ToString();
            Text_drivername.Text = dr["driver_name"].ToString();
            Text_licenseno.Text = dr["License_no"].ToString();
            Text_dob.Text = dr["dob"].ToString();
            Text_license_expiry.Text = dr["license_expiry_date"].ToString();
            Text_contactno.Text = dr["contact_no"].ToString();
            Text_expireience.Text = dr["experience"].ToString();
            Text_refrencename.Text = dr["refrence_name"].ToString();
            Text_refrence_contact.Text = dr["refrence_contactno"].ToString();
            Text_address.Text = dr["address"].ToString();
            
        }
        Export_excel.Visible = false;
        clr_btn.Visible = true;
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

        SqlCommand cmd = new SqlCommand("driver_info_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@driver_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@driver_name", Text_drivername.Text);
        cmd.Parameters.AddWithValue("@License_no", Text_licenseno.Text);
        cmd.Parameters.AddWithValue("@dob", Text_dob.Text);
        cmd.Parameters.AddWithValue("@license_expiry_date", Text_license_expiry.Text);
        cmd.Parameters.AddWithValue("@contact_no", Text_contactno.Text);
        cmd.Parameters.AddWithValue("@experience", Text_expireience.Text);
        cmd.Parameters.AddWithValue("@refrence_name", Text_refrencename.Text);
        cmd.Parameters.AddWithValue("@refrence_contactno", Text_refrence_contact.Text);
        cmd.Parameters.AddWithValue("@address", Text_address.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Data Updated')</script>");
        gridshow();
        blank();
        con.Close();
        upd_btn.Visible = false;
        submit_btn.Visible = true;
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("driver_info_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@driver_id", l1.Text);
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
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=busdetail.xls");
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
                    //GridView1.Columns[4].Visible = false;
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