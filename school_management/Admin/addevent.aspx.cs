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


public partial class Admin_addevent : System.Web.UI.Page
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

        string imgg = "";
        if (event_img.HasFile)
        {
            imgg = ("~/img/" + event_img.FileName);
            event_img.SaveAs(Server.MapPath("~/img/") + event_img.FileName);
        }


        //SqlCommand cmd = new SqlCommand("event_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@event_id", "");
        //cmd.Parameters.AddWithValue("@event_name", eventname_txt.Text);
        //cmd.Parameters.AddWithValue("@description", description_txt.Text);
        //cmd.Parameters.AddWithValue("@photo", imgg);
        //cmd.Parameters.AddWithValue("@date", eventdate_txt.Text);

        //cmd.ExecuteNonQuery();
        notice.noticeserv obj = new notice.noticeserv();
        int a = obj.eventinsert(eventname_txt.Text, description_txt.Text, imgg, eventdate_txt.Text);
            if(a>0)
            {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);
      
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
        eventname_txt.Text = "";
        description_txt.Text = "";
        eventdate_txt.Text = "";
    }

    public void gridshow()
    {
        notice.noticeserv obj = new notice.noticeserv();
        GridView1.DataSource = obj.eventshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        string imgg = "";
        if (event_img.HasFile)
        {
            imgg = ("~/img/" + event_img.FileName);
            event_img.SaveAs(Server.MapPath("~/img/") + event_img.FileName);
        }

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("event_dlt_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@event_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label_id.Text = dr["event_id"].ToString();
            eventname_txt.Text = dr["event_name"].ToString();
            description_txt.Text = dr["description"].ToString();
            imgg = dr["photo"].ToString();
            eventdate_txt.Text = dr["date"].ToString();
        }
        export_excel.Visible = false;
        clr_btn.Visible= true;
        upd_btn.Visible = true;
        submit_btn.Visible = false;
        con.Close();
    }

    protected void upd_btn_Click(object sender, EventArgs e)
    {
        con.Open();

        string imgg = "";
        if (event_img.HasFile)
        {
            imgg = ("~/img/" + event_img.FileName);
            event_img.SaveAs(Server.MapPath("~/img/") + event_img.FileName);
        }


        //SqlCommand cmd = new SqlCommand("event_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@event_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@event_name", eventname_txt.Text);
        //cmd.Parameters.AddWithValue("@description", description_txt.Text);
        //cmd.Parameters.AddWithValue("@photo", imgg);
        //cmd.Parameters.AddWithValue("@date", eventdate_txt.Text);

        //cmd.ExecuteNonQuery();
        notice.noticeserv obj = new notice.noticeserv();
        int a = obj.eventupdate(Convert.ToInt32(Label_id.Text),eventname_txt.Text,description_txt.Text,imgg,eventdate_txt.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);

            gridshow();
            blank();
            upd_btn.Visible = false;
            submit_btn.Visible = true;
        }
            con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("event_dlt_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@event_id", l1.Text);
        //cmd.ExecuteNonQuery();
        notice.noticeserv obj = new notice.noticeserv();
        int a = obj.eventdelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            gridshow();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
        }
            con.Close();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridshow();
    }
    protected void export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=event.xls");
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
}