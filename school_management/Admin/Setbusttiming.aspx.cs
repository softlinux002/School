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
public partial class Admin_Setbusttiming : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bus();
            rouute();
            gridshow();
            blank();

        }
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
       
        route.addroute obj = new route.addroute();
        int a = obj.bustiminginsert(ddl_stationname.SelectedItem.ToString(), ddl_station.SelectedItem.ToString(), ddl_selectbusno.SelectedItem.ToString(), Text_pickuptime.Text, Text_drop.Text);
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);
            gridshow();
            blank();
        }
        
       
    }
    public void blank()
    {
        ddl_stationname.SelectedValue = null; 
        ddl_station.SelectedValue = null;
        ddl_selectbusno.SelectedValue = null;
        Text_pickuptime.Text = "";
        Text_drop.Text = "";

    }

    public void gridshow()
    {
        route.addroute obj = new route.addroute();
        GridView1.DataSource = obj.bustimingshow();
        GridView1.DataBind();
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("bus_timing_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "Select_id");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            a = dr["route_name"].ToString();
            b = dr["station_name"].ToString();
            c = dr["bus_no"].ToString();
            Text_pickuptime.Text = dr["Pickup_time"].ToString();
            Text_drop.Text = dr["drop_time"].ToString();
            dr.Close();
            rouute();
            ddl_stationname.Items.Insert(0, a);
            station();
            ddl_station.Items.Insert(0, b);
            bus();
            ddl_selectbusno.Items.Insert(0, c);
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

       
        route.addroute obj = new route.addroute();
        int a = obj.bustimingupdate(Convert.ToInt32(Label_id.Text), ddl_stationname.SelectedItem.ToString(), ddl_station.SelectedItem.ToString(), ddl_selectbusno.SelectedItem.ToString(), Text_pickuptime.Text, Text_drop.Text);
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
       
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
       
        route.addroute obj = new route.addroute();
        int a = obj.bustimingdelete(Convert.ToInt32(l1.Text));
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
    public void rouute()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from add_route", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_stationname.DataSource = dt;
        ddl_stationname.DataTextField = "route_name";
        ddl_stationname.DataValueField = "pk_id";
        ddl_stationname.DataBind();
        ddl_stationname.Items.Insert(0, "Select Route");
    }
    public void station()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from add_station where route_name='" + ddl_stationname.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_station.DataSource = dt;
        ddl_station.DataTextField = "station_point";
        ddl_station.DataValueField = "pk_id";
        ddl_station.DataBind();
        ddl_station.Items.Insert(0, "Select Station");

    }

    protected void ddl_stationname_SelectedIndexChanged(object sender, EventArgs e)
    {
        station();
    }
    public void bus()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from add_busdetail", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_selectbusno.DataSource = dt;
        ddl_selectbusno.DataTextField = "school_bus_no";
        ddl_selectbusno.DataValueField = "pk_id";
        ddl_selectbusno.DataBind();
        ddl_selectbusno.Items.Insert(0, "Select Bus no");
    }
}