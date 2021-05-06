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

public partial class Hostel_Search_fee : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
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


        SqlCommand cmd = new SqlCommand("select * from hostel_fee where student_id='" + student_ddl.Text + "'", con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Text_sname.Text = dr["student_name"].ToString();
                Text_fee.Text = dr["hostel_fee"].ToString();
                Text_hostel.Text = dr["hostel_name"].ToString();
                Text_type.Text = dr["hostel_type"].ToString();
                Text_amount.Text = dr["amount_pay"].ToString();
                Text_remaining.Text = dr["remaining"].ToString();
                dr.Close();

            }
            else
            {
                Response.Write("<script>alert('Please Enter Valid Id')</script>");
            }

        con.Close();
    }
    protected void Text_amount_TextChanged(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(Text_fee.Text);
        int b = Convert.ToInt32(Text_amount.Text);
        Text_remaining.Text = (a - b).ToString();
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into pending_amountpay values('" + student_ddl.Text + "','" + Text_sname.Text + "','" + Text_date.Text + "','" + Text_hostel.Text + "','" + Text_type.Text + "','" + Text_fee.Text + "','" + ddl_type.SelectedItem.ToString() + "','" + Text_amount.Text + "','" + Text_pending.Text + "','" + Text_remaining.Text + "') ", con);
        cmd.ExecuteNonQuery();
        int a=Convert.ToInt32(Text_amount.Text);
        int b=Convert.ToInt32(Text_pending.Text);
        string c=(a+b).ToString();
        SqlCommand cmd1=new SqlCommand("update hostel_fee set amount_pay='"+c+"' , remaining='"+Text_remaining.Text+"' where student_id='"+student_ddl.Text+"'",con);
        cmd1.ExecuteNonQuery();
        blank();
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
        Text_fee.Text = "";
        Text_hostel.Text = "";
        ddl_type.SelectedValue = "";
        Text_amount.Text = "";
        Text_pending.Text = "";
        Text_remaining.Text = "";

    }

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("hostel_fee_event_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    //protected void btn_edit_Click(object sender, EventArgs e)
    //{
    //    con.Open();
    //    LinkButton lnk = (LinkButton)sender;
    //    GridViewRow row = (GridViewRow)lnk.NamingContainer;
    //    Label l1 = (Label)row.FindControl("Lbl_id");
    //    SqlCommand cmd = new SqlCommand("hostel_fee_event_proc", con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.AddWithValue("@action", "select");
    //    cmd.Parameters.AddWithValue("@pk_id", l1.Text);
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    string a;
    //    if (dr.Read())
    //    {
    //        Label_id.Text = dr["pk_id"].ToString();
    //        student_ddl.Text = dr["student_id"].ToString();
    //        Text_sname.Text = dr["student_name"].ToString();
    //        Text_date.Text = dr["date_of_pay"].ToString();
    //        Text_fee.Text = dr["hostel_fee"].ToString();
    //        ddl_type.SelectedValue = dr["amount_type"].ToString();
    //        Text_amount.Text = dr["amount_pay"].ToString();
    //        Text_remaining.Text = dr["remaining"].ToString();
    //    }
    //    Export_excel.Visible = false;
    //    clr_btn.Visible = true;
    //    upd_btn.Visible = true;
    //    submit_btn.Visible = false;
    //    con.Close();
    //}
    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("hostel_fee_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@student_id", student_ddl.Text);
        cmd.Parameters.AddWithValue("@student_name", Text_sname.Text);
        cmd.Parameters.AddWithValue("@date_of_pay", Text_date.Text);
        cmd.Parameters.AddWithValue("@Hostel_name", Text_fee.Text);
        cmd.Parameters.AddWithValue("@hostel_type", Text_fee.Text);
        cmd.Parameters.AddWithValue("@hostel_fee", Text_fee.Text);
        cmd.Parameters.AddWithValue("@amount_type", ddl_type.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@amount_pay", Text_amount.Text);
        cmd.Parameters.AddWithValue("@remaining", Text_remaining.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Data Updated')</script>");
        gridshow();
        blank();
        con.Close();
    }

    //protected void btn_delete_Click(object sender, EventArgs e)
    //{
    //    con.Open();
    //    LinkButton lnk = (LinkButton)sender;
    //    GridViewRow row = (GridViewRow)lnk.NamingContainer;
    //    Label l1 = (Label)row.FindControl("Lbl_id");
    //    SqlCommand cmd = new SqlCommand("hostel_fee_event_proc", con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.AddWithValue("@action", "delete");
    //    cmd.Parameters.AddWithValue("@pk_id", l1.Text);
    //    cmd.ExecuteNonQuery();
    //    gridshow();
    //    Response.Write("<script>alert('Data Deleted')</script>");
    //    con.Close();
    //}

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
    protected void Text_pending_TextChanged(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(Text_amount.Text);
        int b = Convert.ToInt32(Text_pending.Text);
        int c=Convert.ToInt32(Text_remaining.Text);
        Text_remaining.Text = (c - b).ToString();
            
    }
}