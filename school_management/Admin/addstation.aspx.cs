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
public partial class Admin_addstation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showroute();
            gridshow();
            blank();
        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("add_station_proc", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@action", "exist");
        com.Parameters.AddWithValue("@pk_id", "");
        com.Parameters.AddWithValue("@route_name", ddl_routename.SelectedItem.ToString());
        com.Parameters.AddWithValue("@station_point", Text_stationpoint.Text);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Exist Already!!!!');", true);
            dr.Close();
            blank();
        }
        else
        {
            dr.Close();
            SqlCommand cmd = new SqlCommand("add_station_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@route_name", ddl_routename.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@station_point", Text_stationpoint.Text);
            cmd.ExecuteNonQuery();
            route.addroute obj = new route.addroute();
            int a = obj.stationinsert(ddl_routename.SelectedItem.ToString(), Text_stationpoint.Text);
            if (a > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);

                gridshow();
                blank();
            }
            
        }
        con.Close();
    }

    public void blank()
    {
        ddl_routename.SelectedValue = null;
        Text_stationpoint.Text = "";
    }

    public void gridshow()
    {
        route.addroute obj = new route.addroute();
        GridView1.DataSource = obj.stationshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("add_station_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select_id");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            a = dr["route_name"].ToString();
            Text_stationpoint.Text = dr["station_point"].ToString();
            dr.Close();
            showroute();
            ddl_routename.Items.Insert(0, a);
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
        //con.Open();

        //SqlCommand cmd = new SqlCommand("update add_station set route_name='" + ddl_routename.SelectedItem.ToString() + "',station_point='" + Text_stationpoint.Text+ "' where pk_id='"+Label_id.Text+"'", con);
        //SqlCommand cmd = new SqlCommand("add_station_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "Update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@route_name", ddl_routename.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@station_point", Text_stationpoint.Text);
        //cmd.ExecuteNonQuery();

        //con.Close();
        route.addroute obj = new route.addroute();
        int a = obj.stationupdate(Convert.ToInt32(Label_id.Text), ddl_routename.SelectedItem.ToString(), Text_stationpoint.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Updated!!!!');", true);
            gridshow();
            blank();
        }
        
    
        
        
        upd_btn.Visible = false;
        submit_btn.Visible = true;
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        //con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        //SqlCommand cmd = new SqlCommand("add_station_procevent", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "delete");
        //cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        //cmd.ExecuteNonQuery();
        route.addroute obj = new route.addroute();
        int a = obj.stationdelete(Convert.ToInt32(l1.Text));
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

    protected void Export_excel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=class.xls");
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
                    GridView1.Columns[4].Visible = false;
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
    public void showroute()
    {

        SqlDataAdapter da = new SqlDataAdapter("add_station_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "route");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@route_name", "");
        da.SelectCommand.Parameters.AddWithValue("@station_point", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_routename.DataSource = dt;
        ddl_routename.DataTextField = "route_name";
        ddl_routename.DataValueField = "pk_id";
        ddl_routename.DataBind();
        ddl_routename.Items.Insert(0, "Select Route");
    }
}