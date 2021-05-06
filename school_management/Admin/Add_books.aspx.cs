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
public partial class Admin_Add_books : System.Web.UI.Page
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
          

        }
    }
  
    protected void submit_btn_Click(object sender, EventArgs e)
    {

        con.Open();
        //SqlCommand cmd = new SqlCommand("add_book_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@book_id", "");
        //cmd.Parameters.AddWithValue("@book_name", Text_bname.Text);
        //cmd.Parameters.AddWithValue("@book_category", Bookcategory_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@subtitle", Text_subtitle.Text);
        Random ran = new Random();
        int i = ran.Next(1, 9);
        int j = i * 445432;
        string ISBN = "45" + j + "12";
        //cmd.Parameters.AddWithValue("@isbn_no", ISBN);
        //cmd.Parameters.AddWithValue("@author", Text_author.Text);
        //cmd.Parameters.AddWithValue("@cupboard", Cupboard_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@cupboard_self", Cupboard_self.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@edition", Text_edition.Text);
        //cmd.Parameters.AddWithValue("@publisher", Text_publisher.Text);
        //cmd.Parameters.AddWithValue("@book_cost", Text_bookcost.Text);
        //cmd.Parameters.AddWithValue("@book_vendor", Bookvendor_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@copy", Text_copy.Text);
        //cmd.Parameters.AddWithValue("@Remarks", Text_remarks.Text);
        //cmd.Parameters.AddWithValue("@ASN_no", Text_asnno.Text);
        //cmd.ExecuteNonQuery();
        library.libservice obj = new library.libservice();
        int a = obj.addbookinsert(Text_bname.Text, Bookcategory_ddl.SelectedItem.ToString(), Text_subtitle.Text, ISBN, Text_author.Text, Cupboard_ddl.SelectedItem.ToString(), Cupboard_self.SelectedItem.ToString(),
            Text_edition.Text, Text_publisher.Text, Text_bookcost.Text,Bookvendor_ddl.SelectedItem.ToString(), Text_copy.Text, Text_remarks.Text, Text_asnno.Text);
        if (a > 0)
        {
            gridshow();
            blank();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submit!!!!');", true);
        }
        string barCode = Text_asnno.Text;
        System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
        using (Bitmap bitMap = new Bitmap(barCode.Length * 40, 80))
        {
            using (Graphics graphics = Graphics.FromImage(bitMap))
            {
                Font oFont = new Font("IDAutomationHC39M", 16);
                PointF point = new PointF(2f, 2f);
                SolidBrush blackBrush = new SolidBrush(Color.Black);
                SolidBrush whiteBrush = new SolidBrush(Color.White);
                graphics.FillRectangle(whiteBrush, 0, 0, bitMap.Width, bitMap.Height);
                graphics.DrawString("*" + barCode + "*", oFont, blackBrush, point);
            }
            using (MemoryStream ms = new MemoryStream())
            {
                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                byte[] byteImage = ms.ToArray();

                Convert.ToBase64String(byteImage);
                imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
            }
            plBarCode.Controls.Add(imgBarCode);
        }
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

        library.libservice obj = new library.libservice();
        GridView1.DataSource = obj.addbookshow();
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
            Lbl_isbn.Text = dr["isbn_no"].ToString();
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
            Text_asnno.Text = dr["ASN_no"].ToString();
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
        //SqlCommand cmd = new SqlCommand("add_book_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@book_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@book_name", Text_bname.Text);
        //cmd.Parameters.AddWithValue("@book_category", Bookcategory_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@subtitle", Text_subtitle.Text);
        //cmd.Parameters.AddWithValue("@isbn_no", Lbl_isbn.Text);
        //cmd.Parameters.AddWithValue("@author", Text_author.Text);
        //cmd.Parameters.AddWithValue("@cupboard", Cupboard_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@cupboard_self", Cupboard_self.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@edition", Text_edition.Text);
        //cmd.Parameters.AddWithValue("@publisher", Text_publisher.Text);
        //cmd.Parameters.AddWithValue("@book_cost", Text_bookcost.Text);
        //cmd.Parameters.AddWithValue("@book_vendor", Bookvendor_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@copy", Text_copy.Text);
        //cmd.Parameters.AddWithValue("@Remarks", Text_remarks.Text);
        //cmd.Parameters.AddWithValue("@ASN_no", Text_asnno.Text);
        //cmd.ExecuteNonQuery();
        library.libservice obj = new library.libservice();
        int a = obj.addbookupdate(Convert.ToInt32(Label_id.Text),Text_bname.Text, Bookcategory_ddl.SelectedItem.ToString(), Text_subtitle.Text, Lbl_isbn.Text, Text_author.Text, Cupboard_ddl.SelectedItem.ToString(), Cupboard_self.SelectedItem.ToString(),
            Text_edition.Text, Text_publisher.Text, Text_bookcost.Text, Bookvendor_ddl.SelectedItem.ToString(), Text_copy.Text, Text_remarks.Text, Text_asnno.Text);
        if (a > 0)
        {
            gridshow();
            blank();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
            string barCode = Text_asnno.Text;
            System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
            using (Bitmap bitMap = new Bitmap(barCode.Length * 40, 80))
            {
                using (Graphics graphics = Graphics.FromImage(bitMap))
                {
                    Font oFont = new Font("IDAutomationHC39M", 16);
                    PointF point = new PointF(2f, 2f);
                    SolidBrush blackBrush = new SolidBrush(Color.Black);
                    SolidBrush whiteBrush = new SolidBrush(Color.White);
                    graphics.FillRectangle(whiteBrush, 0, 0, bitMap.Width, bitMap.Height);
                    graphics.DrawString("*" + barCode + "*", oFont, blackBrush, point);
                }
                using (MemoryStream ms = new MemoryStream())
                {
                    bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImage = ms.ToArray();

                    Convert.ToBase64String(byteImage);
                    imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                }
                plBarCode.Controls.Add(imgBarCode);
            }
            clear_btn.Visible = false;
            submit_btn.Visible = true;
            upd_btn.Visible = false;
        }
        con.Close();
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("add_books_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@book_id", l1.Text);
        //cmd.ExecuteNonQuery();
        library.libservice obj = new library.libservice();
        int a = obj.addbookdelete(Convert.ToInt32(l1.Text));
        if(a>0)
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

    public void book_category()
    {
        
        SqlDataAdapter da = new SqlDataAdapter("add_book_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "bookcategory");
        da.SelectCommand.Parameters.AddWithValue("@book_id", "");
        da.SelectCommand.Parameters.AddWithValue("@book_name", "");
        da.SelectCommand.Parameters.AddWithValue("@book_category","");
        da.SelectCommand.Parameters.AddWithValue("@subtitle", "");
        da.SelectCommand.Parameters.AddWithValue("@isbn_no", "");
        da.SelectCommand.Parameters.AddWithValue("@author", "");
        da.SelectCommand.Parameters.AddWithValue("@cupboard", "");
        da.SelectCommand.Parameters.AddWithValue("@cupboard_self", "");
        da.SelectCommand.Parameters.AddWithValue("@edition", "");
        da.SelectCommand.Parameters.AddWithValue("@publisher", "");
        da.SelectCommand.Parameters.AddWithValue("@book_cost", "");
        da.SelectCommand.Parameters.AddWithValue("@book_vendor", "");
        da.SelectCommand.Parameters.AddWithValue("@copy", "");
        da.SelectCommand.Parameters.AddWithValue("@Remarks", "");
        da.SelectCommand.Parameters.AddWithValue("@ASN_no", "");
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

        
        SqlDataAdapter da = new SqlDataAdapter("add_book_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "cupboard");
        da.SelectCommand.Parameters.AddWithValue("@book_id", "");
        da.SelectCommand.Parameters.AddWithValue("@book_name", "");
        da.SelectCommand.Parameters.AddWithValue("@book_category", "");
        da.SelectCommand.Parameters.AddWithValue("@subtitle", "");
        da.SelectCommand.Parameters.AddWithValue("@isbn_no", "");
        da.SelectCommand.Parameters.AddWithValue("@author", "");
        da.SelectCommand.Parameters.AddWithValue("@cupboard", "");
        da.SelectCommand.Parameters.AddWithValue("@cupboard_self", "");
        da.SelectCommand.Parameters.AddWithValue("@edition", "");
        da.SelectCommand.Parameters.AddWithValue("@publisher", "");
        da.SelectCommand.Parameters.AddWithValue("@book_cost", "");
        da.SelectCommand.Parameters.AddWithValue("@book_vendor", "");
        da.SelectCommand.Parameters.AddWithValue("@copy", "");
        da.SelectCommand.Parameters.AddWithValue("@Remarks", "");
        da.SelectCommand.Parameters.AddWithValue("@ASN_no", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        Cupboard_ddl.DataSource = dt;
        Cupboard_ddl.DataTextField = "name";
        Cupboard_ddl.DataValueField = "pk_id";
        Cupboard_ddl.DataBind();
        Cupboard_ddl.Items.Insert(0, "Select Cupboard");
    }
    public void cupboardself()
    {
       
        SqlDataAdapter da = new SqlDataAdapter("add_book_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "cupboardself");
        da.SelectCommand.Parameters.AddWithValue("@book_id", "");
        da.SelectCommand.Parameters.AddWithValue("@book_name", "");
        da.SelectCommand.Parameters.AddWithValue("@book_category", "");
        da.SelectCommand.Parameters.AddWithValue("@subtitle", "");
        da.SelectCommand.Parameters.AddWithValue("@isbn_no", "");
        da.SelectCommand.Parameters.AddWithValue("@author", "");
        da.SelectCommand.Parameters.AddWithValue("@cupboard",Cupboard_ddl.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@cupboard_self", "");
        da.SelectCommand.Parameters.AddWithValue("@edition", "");
        da.SelectCommand.Parameters.AddWithValue("@publisher", "");
        da.SelectCommand.Parameters.AddWithValue("@book_cost", "");
        da.SelectCommand.Parameters.AddWithValue("@book_vendor", "");
        da.SelectCommand.Parameters.AddWithValue("@copy", "");
        da.SelectCommand.Parameters.AddWithValue("@Remarks", "");
        da.SelectCommand.Parameters.AddWithValue("@ASN_no", "");
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
       

        SqlDataAdapter da = new SqlDataAdapter("add_book_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "vendor");
        da.SelectCommand.Parameters.AddWithValue("@book_id", "");
        da.SelectCommand.Parameters.AddWithValue("@book_name", "");
        da.SelectCommand.Parameters.AddWithValue("@book_category", "");
        da.SelectCommand.Parameters.AddWithValue("@subtitle", "");
        da.SelectCommand.Parameters.AddWithValue("@isbn_no", "");
        da.SelectCommand.Parameters.AddWithValue("@author", "");
        da.SelectCommand.Parameters.AddWithValue("@cupboard", "");
        da.SelectCommand.Parameters.AddWithValue("@cupboard_self", "");
        da.SelectCommand.Parameters.AddWithValue("@edition", "");
        da.SelectCommand.Parameters.AddWithValue("@publisher", "");
        da.SelectCommand.Parameters.AddWithValue("@book_cost", "");
        da.SelectCommand.Parameters.AddWithValue("@book_vendor", "");
        da.SelectCommand.Parameters.AddWithValue("@copy", "");
        da.SelectCommand.Parameters.AddWithValue("@Remarks", "");
        da.SelectCommand.Parameters.AddWithValue("@ASN_no", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        Bookvendor_ddl.DataSource = dt;
        Bookvendor_ddl.DataTextField = "name";
        Bookvendor_ddl.DataValueField = "pk_id";
        Bookvendor_ddl.DataBind();
        Bookvendor_ddl.Items.Insert(0, "Select Cupboardself");

    }

    protected void image_click(object sender, EventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        GridViewRow row = (GridViewRow)btn.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");

        Response.Redirect("viewbookdetail.aspx?id=" + Server.UrlEncode(l1.Text));

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