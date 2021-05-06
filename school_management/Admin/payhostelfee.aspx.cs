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
using System.Globalization;
public partial class Admin_payhostelfee : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            gridshow();
        }
    }
    

    
    protected void Text_amount_TextChanged(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(Text_pending.Text);
        int b = Convert.ToInt32(Text_amount.Text);
        Text_remaining.Text = (a - b).ToString();
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        string status="";
        string mother="";
        string father = "";
        con.Open();

        SqlCommand comd = new SqlCommand("select * from hostel_fee where batch='" + Text_batch.Text + "' and class='" + Text_class.Text + "' and stream='" + Text_stream.Text + "' and roll_no='" + Text_roll.Text + "' and student_name='" + Text_sname.Text + "'", con);
        SqlDataReader ddr = comd.ExecuteReader();
        if (ddr.Read())
        {
            ddr.Close();
            if (Convert.ToInt32(Text_remaining.Text) > 0)
            {
                status = "Pending";
            }
            else
            {
                status = "Paid";
            }
            SqlCommand cmmd = new SqlCommand("select * from studentinfo where batch='" + Text_batch.Text + "' and class='" + Text_class.Text + "' and stream='" + Text_stream.Text + "' and roll_no='" + Text_roll.Text + "'", con);
            cmmd.ExecuteNonQuery();
            SqlDataReader dr = cmmd.ExecuteReader();
            if (dr.Read())
            {
                mother = dr["mother_name"].ToString();
                father = dr["father_name"].ToString();
            }
            dr.Close();

            
            DateTime currentdate = DateTime.Now;
            string date = currentdate.ToString("dd/MM/yyyy");
            SqlCommand cmmd1 = new SqlCommand("update hostel_fee set amount_pay='" + Text_amount.Text + "',remaining='" + Text_remaining.Text + "',status='" + status + "' where batch='" + Text_batch.Text + "' and class='" + Text_class.Text + "' and stream='" + Text_stream.Text + "' and roll_no='" + Text_roll.Text + "' and student_name='" + Text_sname.Text + "' ", con);
            cmmd1.ExecuteNonQuery();

            SqlCommand cmd5 = new SqlCommand("select * from hostel_room where hostel_name='" + Text_hostelname.Text + "' and room_type='" + Text_type.Text + "'", con);
            SqlDataReader dr5 = cmd5.ExecuteReader();
            if (dr5.Read())
            {
                fee_lbl.Text = dr5["room_charge"].ToString();
            }
            dr5.Close();

            //Text_fee.Text = (Convert.ToInt32(Text_fee.Text) + Convert.ToInt32(Text_amount.Text)).ToString();
            SqlCommand cmmdd1 = new SqlCommand("insert into fees_history values('" + Text_sname.Text + "','" + father + "','" + mother + "','" + Text_roll.Text + "','" + Text_batch.Text + "','" + Text_class.Text + "','" + Text_stream.Text + "','" + (DateTime.ParseExact(date,"dd/MM/yyyy",CultureInfo.InvariantCulture)).ToShortDateString() + "','" + fee_lbl.Text + "','Hostelfee','" + Text_amount.Text + "','" + Text_remaining.Text + "','" + status + "')", con);
            cmmdd1.ExecuteNonQuery();
            gridshow();
            blank();
        }
        else
        {
            ddr.Close();
            //SqlCommand cmd = new SqlCommand("hostel_fee_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@pk_id", "");
            //cmd.Parameters.AddWithValue("@s_id", Text_sid.Text);
            //cmd.Parameters.AddWithValue("@batch", Text_batch.Text);
            //cmd.Parameters.AddWithValue("@class", Text_class.Text);
            //cmd.Parameters.AddWithValue("@stream", Text_stream.Text);
            //cmd.Parameters.AddWithValue("@roll_no", Text_roll.Text);
            //cmd.Parameters.AddWithValue("@student_name", Text_sname.Text);
            //cmd.Parameters.AddWithValue("@date_of_pay", Text_date.Text);
            //cmd.Parameters.AddWithValue("@Hostel_name", Text_hostelname.Text);
            //cmd.Parameters.AddWithValue("@hostel_type", Text_type.Text);
            //cmd.Parameters.AddWithValue("@hostel_fee", Text_fee.Text);
            //cmd.Parameters.AddWithValue("@amount_type", ddl_type.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@amount_pay", Text_amount.Text);
            //cmd.Parameters.AddWithValue("@remaining", Text_remaining.Text);
            
            //if (Convert.ToInt32(Text_remaining.Text) > 0)
            //{
            //    status = "Pending";
            //}
            //else
            //{
            //    status = "Paid";
            //}
            //cmd.Parameters.AddWithValue("@status", status);
            //cmd.ExecuteNonQuery();
            hostel.hostelservice obj = new hostel.hostelservice();
            int a = obj.payfeeinsert(Text_sid.Text, Text_batch.Text, Text_class.Text, Text_stream.Text, Text_roll.Text, Text_sname.Text, Text_date.Text, Text_hostelname.Text, Text_type.Text, Text_fee.Text, ddl_type.SelectedItem.ToString(), Text_amount.Text, Text_remaining.Text);
            if (a > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Thanks For Registration!!!!');", true);

                gridshow();
            }

            SqlCommand cmmd = new SqlCommand("select * from studentinfo where batch='" + Text_batch.Text + "' and class='" + Text_class.Text + "' and stream='" + Text_stream.Text + "' and roll_no='" + Text_roll.Text + "'", con);
            cmmd.ExecuteNonQuery();
            SqlDataReader dr = cmmd.ExecuteReader();
            if (dr.Read())
            {
                mother = dr["mother_name"].ToString();
                father = dr["father_name"].ToString();
            }
            dr.Close();
            DateTime currentdate = DateTime.Now;
            string date = currentdate.ToString("dd/MM/yyyy");
            SqlCommand cmmd1 = new SqlCommand("insert into fees_history values('" + Text_sname.Text + "','" + father + "','" + mother + "','" + Text_roll.Text + "','" + Text_batch.Text + "','" + Text_class.Text + "','" + Text_stream.Text + "','" + (DateTime.ParseExact(date,"dd/MM/yyyy",CultureInfo.InvariantCulture)).ToShortDateString() + "','" + Text_fee.Text + "','Hostelfee','" + Text_amount.Text + "','" + Text_remaining.Text + "','" + status + "')", con);
            cmmd1.ExecuteNonQuery();
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
        Text_batch.Text = "";
        Text_class.Text = "";
        Text_stream.Text = "";
        Text_roll.Text = "";
        Text_sname.Text = "";
        Text_date.Text = "";
        Text_fee.Text = "";
        ddl_type.SelectedValue = "";
        Text_amount.Text = "";
        Text_remaining.Text = "";

    }

    public void gridshow()
    {
        hostel.hostelservice obj = new hostel.hostelservice();
        GridView1.DataSource = obj.payfeeshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("hostel_fee_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_sid.Text = dr["s_id"].ToString();
            Text_batch.Text = dr["batch"].ToString();
            Text_class.Text = dr["class"].ToString();
            Text_stream.Text = dr["stream"].ToString();
            Text_roll.Text = dr["roll_no"].ToString();
            Text_sname.Text = dr["student_name"].ToString();
            Text_hostelname.Text = dr["Hostel_name"].ToString();
            Text_type.Text = dr["hostel_type"].ToString();
            Text_date.Text = dr["date_of_pay"].ToString();
            Text_fee.Text = dr["hostel_fee"].ToString();
            ddl_type.SelectedValue = dr["amount_type"].ToString();
            Text_amount.Text = dr["amount_pay"].ToString();
            Text_remaining.Text = dr["remaining"].ToString();
            Text_pending.Text = dr["remaining"].ToString();
            dr.Close();
           
            //if (f == "Single")
            //{
            //    type_ddl.SelectedValue = "1";
            //}
            //else if (f == "Double")
            //{
            //    type_ddl.SelectedValue = "2";
            //}
            //else
            //{
            //    type_ddl.SelectedValue = "0";
            //}
        }
        Export_excel.Visible = false;
        clr_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }
    protected void upd_btn_Click(object sender, EventArgs e)
    {
        string status = "";
        string mother = "";
        string father = "";
        con.Open();
        //SqlCommand cmd = new SqlCommand("hostel_fee_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@batch", Text_batch.Text);
        //cmd.Parameters.AddWithValue("@class", Text_class.Text);
        //cmd.Parameters.AddWithValue("@stream", Text_stream.Text);
        //cmd.Parameters.AddWithValue("@roll_no", Text_roll.Text);
        //cmd.Parameters.AddWithValue("@student_name", Text_sname.Text);
        //cmd.Parameters.AddWithValue("@date_of_pay", Text_date.Text);
        //cmd.Parameters.AddWithValue("@Hostel_name", Text_hostelname.Text);
        //cmd.Parameters.AddWithValue("@hostel_type", Text_type.Text);
        //cmd.Parameters.AddWithValue("@hostel_fee", Text_fee.Text);
        //cmd.Parameters.AddWithValue("@amount_type", ddl_type.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@amount_pay", Text_amount.Text);
        //cmd.Parameters.AddWithValue("@remaining", Text_remaining.Text);
        //int a = Convert.ToInt32(Text_remaining);
        //if (a > 0)
        //{
        //    status = "Pending";
        //}
        //else
        //{
        //    status = "Paid";
        //}
        //cmd.Parameters.AddWithValue("@status", status);
        //cmd.ExecuteNonQuery();
        hostel.hostelservice obj = new hostel.hostelservice();
        int a = obj.payfeeupdate(Convert.ToInt32(Label_id.Text), Text_sid.Text, Text_batch.Text, Text_class.Text, Text_stream.Text, Text_roll.Text, Text_sname.Text, Text_date.Text, Text_hostelname.Text, Text_type.Text, Text_fee.Text, ddl_type.SelectedItem.ToString(), Text_amount.Text, Text_remaining.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
            gridshow();

        }
       

        SqlCommand cmmd = new SqlCommand("select * from studentinfo where batch='" + Text_batch.Text + "' and class='" + Text_class.Text + "' and section='" + Text_stream.Text + "' and roll_no='" + Text_roll.Text + "'", con);
        cmmd.ExecuteNonQuery();
        SqlDataReader dr = cmmd.ExecuteReader();
        if (dr.Read())
        {
            mother = dr["mother_name"].ToString();
            father = dr["father_name"].ToString();
        }
        dr.Close();
        DateTime currentdate = DateTime.Now;
        string date = currentdate.ToShortDateString();
        SqlCommand cmmd2 = new SqlCommand("delete from fees_history where roll_no='" + Text_roll.Text + "' and student_name='" + Text_sname.Text + "' and batch='" + Text_batch.Text + "' and class='" + Text_class.Text + "' and section='" + Text_stream.Text + "'", con);
        cmmd2.ExecuteNonQuery();
        SqlCommand cmmd1 = new SqlCommand("insert into fees_history values('" + Text_sname.Text + "','" + father + "','" + mother + "','" + Text_roll.Text + "','" + Text_batch.Text + "','" + Text_class.Text + "','" + Text_stream.Text + "','" + date + "','" + Text_fee.Text + "','Hostelfee','" + Text_amount.Text + "','" + Text_remaining.Text + "','" + status + "')", con);
        cmmd1.ExecuteNonQuery();
        blank();
        con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
       
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("hostel_fee_event_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        hostel.hostelservice obj = new hostel.hostelservice();
        int a = obj.payfeedelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        }
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
    protected void Text_sid_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from student_hostelinfo where student_id='" + Text_sid.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_batch.Text = dr["batch"].ToString();
            Text_class.Text = dr["class"].ToString();
            Text_stream.Text = dr["stream"].ToString();
            Text_roll.Text = dr["roll_no"].ToString();
            Text_sname.Text = dr["student_name"].ToString();
            Text_hostelname.Text = dr["Hostel_name"].ToString();
            Text_type.Text = dr["type"].ToString();
            Text_fee.Text = dr["Charge"].ToString();
            dr.Close();

        }
        SqlCommand cmd1 = new SqlCommand("select * from hostel_fee where s_id='" + Text_sid.Text + "'", con);
        cmd1.ExecuteNonQuery();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {

            Text_pending.Text = dr1["remaining"].ToString();

            dr1.Close();

        }
        else
        {
            dr1.Close();
            Text_pending.Text = Text_fee.Text;

        }
        
        con.Close();
    }
}