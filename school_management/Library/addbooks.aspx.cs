
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
using System.Net;
using System.Net.Mail;

public partial class Library_addbooks : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            book_category();
            cupboard();
            gridshow();
            blank();
            Text_asnno.Text = GetID("select max(ASN_no) from add_books").ToString();

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

        con.Open();
        SqlCommand cmd = new SqlCommand("add_book_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "insert");
        cmd.Parameters.AddWithValue("@book_id", "");
        cmd.Parameters.AddWithValue("@book_name", Text_bname.Text);
        cmd.Parameters.AddWithValue("@book_category", Bookcategory_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@subtitle", Text_subtitle.Text);
        Random ran = new Random();
        int i = ran.Next(1, 9);
        int j = i * 445432;
        string ISBN = "45" + j + "12";
        cmd.Parameters.AddWithValue("@isbn_no", ISBN);
        cmd.Parameters.AddWithValue("@author", Text_author.Text);
        cmd.Parameters.AddWithValue("@cupboard", Cupboard_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@cupboard_self", Cupboard_self.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@edition", Text_edition.Text);
        cmd.Parameters.AddWithValue("@publisher", Text_publisher.Text);
        cmd.Parameters.AddWithValue("@book_cost", Text_bookcost.Text);
        cmd.Parameters.AddWithValue("@book_vendor", Bookvendor_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@copy", Text_copy.Text);
        cmd.Parameters.AddWithValue("@Remarks", Text_remarks.Text);
        cmd.Parameters.AddWithValue("@ASN_no", Text_asnno.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        blank();
        Response.Write("<script>alert('Data Submit')</script>");
        con.Close();

    }
    public void blank()
    {
        Text_bname.Text = "";
        Bookcategory_ddl.SelectedValue = null;
        Text_subtitle.Text = "";
        Text_author.Text = "";
        Cupboard_ddl.SelectedValue = null;
        Cupboard_self.SelectedValue = null;
        Text_edition.Text = "";
        Text_publisher.Text = "";
        Text_bookcost.Text = "";
        Bookvendor_ddl.SelectedValue = null;
        Text_copy.Text = "";
        Text_remarks.Text = "";

    }
    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("add_books_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@book_id", "");

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
        SqlCommand cmd = new SqlCommand("add_books_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@book_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        if (dr.Read())
        {
            Label_id.Text = dr["book_id"].ToString();
            Text_bname.Text = dr["book_name"].ToString();
            a = dr["book_category"].ToString();
            Text_subtitle.Text = dr["subtitle"].ToString();
            //Text_isbn.Text = dr["isbn_no"].ToString();
            Text_author.Text = dr["author"].ToString();
            b = dr["cupboard"].ToString();
            c = dr["cupboard_self"].ToString();
            Text_edition.Text = dr["edition"].ToString();
            Text_publisher.Text = dr["publisher"].ToString();
            Text_bookcost.Text = dr["book_cost"].ToString();
            d = dr["book_vendor"].ToString();
            Text_copy.Text = dr["copy"].ToString();
            Text_remarks.Text = dr["Remarks"].ToString();
            dr.Close();
            book_category();
            Bookcategory_ddl.Items.Insert(0, a);
            cupboard();
            Cupboard_ddl.Items.Insert(0, b);
            cupboardself();
            Cupboard_self.Items.Insert(0, c);
            vendorname();
            Bookvendor_ddl.Items.Insert(0, d);

           
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
        SqlCommand cmd = new SqlCommand("add_book_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "update");
        cmd.Parameters.AddWithValue("@book_id", Label_id.Text);
        cmd.Parameters.AddWithValue("@book_name", Text_bname.Text);
        cmd.Parameters.AddWithValue("@book_category", Bookcategory_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@subtitle", Text_subtitle.Text);
        cmd.Parameters.AddWithValue("@isbn_no", "");
        cmd.Parameters.AddWithValue("@author", Text_author.Text);
        cmd.Parameters.AddWithValue("@cupboard", Cupboard_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@cupboard_self", Cupboard_self.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@edition", Text_edition.Text);
        cmd.Parameters.AddWithValue("@publisher", Text_publisher.Text);
        cmd.Parameters.AddWithValue("@book_cost", Text_bookcost.Text);
        cmd.Parameters.AddWithValue("@book_vendor", Bookvendor_ddl.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@copy", Text_copy.Text);
        cmd.Parameters.AddWithValue("@Remarks", Text_remarks.Text);
        cmd.ExecuteNonQuery();
        gridshow();
        blank();
        Response.Write("<script>alert('Data Updated')</script>");
        submit_btn.Visible = true;
        upd_btn.Visible = false;
        con.Close();
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("add_books_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "delete");
        cmd.Parameters.AddWithValue("@book_id", l1.Text);
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
    public void book_category()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from book_category", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Bookcategory_ddl.DataSource = dt;
        Bookcategory_ddl.DataTextField = "name";
        Bookcategory_ddl.DataValueField = "pk_id";
        Bookcategory_ddl.DataBind();
        Bookcategory_ddl.Items.Insert(0, "Select Category");

    }
    public void cupboard()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from create_cupboard", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Cupboard_ddl.DataSource = dt;
        Cupboard_ddl.DataTextField = "name";
        Cupboard_ddl.DataValueField = "pk_id";
        Cupboard_ddl.DataBind();
        Cupboard_ddl.Items.Insert(0,"Select Cupboard");
    }
    public void cupboardself()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from cupboardself where cupboard='"+Cupboard_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Cupboard_self.DataSource = dt;
        Cupboard_self.DataTextField = "name";
        Cupboard_self.DataValueField = "pk_id";
        Cupboard_self.DataBind();
        Cupboard_self.Items.Insert(0, "Select Cupboardself");
    }

    protected void Cupboard_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        cupboardself();
        vendorname();
    }
    public void vendorname()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from vendor",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Bookvendor_ddl.DataSource = dt;
        Bookvendor_ddl.DataValueField = "pk_id";
        Bookvendor_ddl.DataTextField = "name";
        Bookvendor_ddl.DataBind();
        Bookvendor_ddl.Items.Insert(0, "Select Vendor");

    
    }

    protected void image_click(object sender, EventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        GridViewRow row = (GridViewRow)btn.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");

        Response.Redirect("Viewbookdeatil.aspx?id="+Server.UrlEncode(l1.Text));
    
    }


    protected void export_excel_Click(object sender, EventArgs e)
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
                    GridView1.Columns[9].Visible = false;
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