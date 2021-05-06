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

public partial class Admin_hostelrefundfee : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridshow();
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCountries(string prefixText)
    {

        {
            //SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["directory"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);

            con.Open();
            string QueryString = prefixText;
            string[] parts = QueryString.Split(' ');
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("select distinct student_id from student_hostelinfo WHERE (");
            for (int i = 0; i < parts.Length; i++)
            {
                sb.AppendFormat("(student_id like '%{0}%')", parts[i]);

                if (i != parts.Length - 1)
                {
                    sb.Append(" AND ");
                }

            }
            sb.Append(")");
            string output = sb.ToString();
            SqlCommand cm = new SqlCommand(output, con);
            SqlDataAdapter da = new SqlDataAdapter(output, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            List<string> CountryNames = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                CountryNames.Add(dt.Rows[i]["student_id"].ToString());
            }
            return CountryNames;
            con.Close();
        }

    }

    protected void student_ddl_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from hostel_fee where s_id='" + student_ddl.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_sname.Text = dr["student_name"].ToString();
            Text_date.Text = dr["date_of_pay"].ToString();
            Text_amount.Text = dr["amount_pay"].ToString();
            Text_totalamount.Text = dr["hostel_fee"].ToString();
            Text_hostel.Text = dr["Hostel_name"].ToString();
            Text_type.Text = dr["hostel_type"].ToString();
            Text_hostel.Text = dr["Hostel_name"].ToString();
            Text_type.Text = dr["hostel_type"].ToString();
            dr.Close();
        }
        else
        {
            Response.Write("<script>alert('Please Enter Valid Id')</script>");
        }

        con.Close();
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {

        con.Open();
        //SqlCommand cmd = new SqlCommand("hostel_fee_refund_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@pk_id", "");
        //cmd.Parameters.AddWithValue("@student_id", student_ddl.Text);
        //cmd.Parameters.AddWithValue("@student_name", Text_sname.Text);
        //cmd.Parameters.AddWithValue("@date", Text_date.Text);
        //cmd.Parameters.AddWithValue("@no_of_months", Text_month.Text);
        //cmd.Parameters.AddWithValue("@total_amount", Text_totalamount.Text);
        //cmd.Parameters.AddWithValue("@amount_pay", Text_amount.Text);
        //cmd.Parameters.AddWithValue("@Hostel_name", Text_hostel.Text);
        //cmd.Parameters.AddWithValue("@hostel_type", Text_type.Text);
        //cmd.Parameters.AddWithValue("@month_stay_in_hostel", Text_stay.Text);

        //cmd.Parameters.AddWithValue("@refund_amt", Text_refund.Text);
        //cmd.Parameters.AddWithValue("@status", "Leave");
        //cmd.ExecuteNonQuery();
        hostel.hostelservice obj = new hostel.hostelservice();
        int a = obj.feerefundinsert(student_ddl.Text,Text_sname.Text,Text_date.Text,Text_month.Text,Text_totalamount.Text,Text_amount.Text,Text_hostel.Text,Text_type.Text,Text_stay.Text,Text_refund.Text,"Leave");
        if (a > 0)
        {
            SqlCommand cmd1 = new SqlCommand("delete from student_hostelinfo where student_id='" + student_ddl.Text + "'", con);
            cmd1.ExecuteNonQuery();
            Response.Write("<script>alert('Thanks For Registration')</script>");
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
        student_ddl.Text = "";
        Text_sname.Text = "";
        Text_date.Text = "";
        Text_month.Text = "";
        Text_totalamount.Text = "";
        Text_amount.Text = "";
        Text_stay.Text = "";

        Text_refund.Text = "";
    }
    public void gridshow()
    {
        hostel.hostelservice obj = new hostel.hostelservice();
        GridView1.DataSource = obj.feerefundshow();
        GridView1.DataBind();
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("hostel_fee_refund_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            student_ddl.Text = dr["student_id"].ToString();
            Text_sname.Text = dr["student_name"].ToString();
            Text_date.Text = dr["date"].ToString();
            Text_month.Text = dr["no_of_months"].ToString();
            Text_totalamount.Text = dr["total_amount"].ToString();
            Text_amount.Text = dr["amount_pay"].ToString();
            Text_stay.Text = dr["month_stay_in_hostel"].ToString();

            Text_refund.Text = dr["refund_amt"].ToString();
        }
        Export_excel.Visible = false;
        clr_btn.Visible = true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }
    protected void upd_btn_Click(object sender, EventArgs e)
    {
        //con.Open();
        //SqlCommand cmd = new SqlCommand("hostel_fee_refund_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@student_id", student_ddl.Text);
        //cmd.Parameters.AddWithValue("@student_name", Text_sname.Text);
        //cmd.Parameters.AddWithValue("@date", Text_date.Text);
        //cmd.Parameters.AddWithValue("@no_of_months", Text_month.Text);
        //cmd.Parameters.AddWithValue("@total_amount", Text_totalamount.Text);
        //cmd.Parameters.AddWithValue("@amount_pay", Text_amount.Text);
        //cmd.Parameters.AddWithValue("@month_stay_in_hostel", Text_stay.Text);

        //cmd.Parameters.AddWithValue("@refund_amt", Text_refund.Text);
        //cmd.ExecuteNonQuery();
        hostel.hostelservice obj = new hostel.hostelservice();
        int a = obj.feerefundupdate(Convert.ToInt32(Label_id.Text),student_ddl.Text, Text_sname.Text, Text_date.Text, Text_month.Text, Text_totalamount.Text, Text_amount.Text, Text_hostel.Text, Text_type.Text, Text_stay.Text, Text_refund.Text, "Leave");
        if (a > 0)
        {
            Response.Write("<script>alert('Data Updated')</script>");
            gridshow();
            blank();
        }
        
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        //con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("hostel_fee_refund_event_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        hostel.hostelservice obj = new hostel.hostelservice();
        int a = obj.feerefunddelete(Convert.ToInt32(l1.Text));
        {

            gridshow();
            Response.Write("<script>alert('Data Deleted')</script>");
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
    protected void Text_stay_TextChanged(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(Text_month.Text);
        int b = Convert.ToInt32(Text_totalamount.Text);
        int c = Convert.ToInt32(Text_amount.Text);
        int d = Convert.ToInt32(Text_stay.Text);
        Text_refund.Text = ((c) - ((b / a) * d)).ToString();
    }
}