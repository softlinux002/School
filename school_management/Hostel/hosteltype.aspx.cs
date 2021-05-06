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

public partial class Hostel_hosteltype : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            hostelname();
            gridshow();
           
        }
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from hostel_room where hostel_name='" + ddl_hostelname.SelectedItem.ToString() + "'and no_of_rooms='" + Text_roomsno.Text + "' and room_type='" + DropDownList3.SelectedItem.ToString() + "'and seat='" + Text_seat.Text + "' and room_charge='" + Text_charge.Text + "'", con);
        cmd1.ExecuteNonQuery();
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<script>alert('Record Already Exist')</script>");
            dr.Close();
        }
        else
        {
            dr.Close();
            SqlCommand cmd = new SqlCommand("hostel_room_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@hostel_name", ddl_hostelname.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@no_of_rooms", Text_roomsno.Text);
            cmd.Parameters.AddWithValue("@room_type", DropDownList3.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@seat", Text_seat.Text);
            cmd.Parameters.AddWithValue("@available", Text_available.Text);
            cmd.Parameters.AddWithValue("@room_charge", Text_charge.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Submitted')</script>");
            gridshow();
            blank();
        }
        con.Close();
    }

    public void blank()
    {
        ddl_hostelname.SelectedValue = null;
        Text_roomsno.Text = "";
        DropDownList3.SelectedValue = null;
        Text_charge.Text = "";
    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("hostel_room_dlt_proc", con);
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
        SqlCommand cmd = new SqlCommand("hostel_room_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            a = dr["hostel_name"].ToString();
            Text_roomsno.Text = dr["no_of_rooms"].ToString();
            b = dr["room_type"].ToString();
           
            Text_charge.Text = dr["room_charge"].ToString();
            Text_seat.Text = dr["seat"].ToString();
            Text_available.Text = dr["available"].ToString();
            dr.Close();
            hostelname();
            ddl_hostelname.Items.Insert(0, a);
            DropDownList3.Items.Insert(0,b);

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

        SqlCommand cmd = new SqlCommand("hostel_room_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@hostel_name", ddl_hostelname.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@no_of_rooms", Text_roomsno.Text);
        cmd.Parameters.AddWithValue("@room_type", DropDownList3.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@seat", Text_seat.Text);
        cmd.Parameters.AddWithValue("@available", Text_available.Text);
        cmd.Parameters.AddWithValue("@room_charge", Text_charge.Text);
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
        SqlCommand cmd = new SqlCommand("hostel_room_dlt_proc", con);
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
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=examterm.xls");
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
                    GridView1.Columns[6].Visible = false;
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
    public void hostelname()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from add_hostel", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_hostelname.DataSource = dt;
        ddl_hostelname.DataTextField = "hostel_name";
        ddl_hostelname.DataValueField = "hostel_id";
        ddl_hostelname.DataBind();
        ddl_hostelname.Items.Insert(0,"Select Hostel");
    }
}