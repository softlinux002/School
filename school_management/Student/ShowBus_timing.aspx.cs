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

public partial class Student_ShowBus_timing : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bus();
            rouute();
            gridshow();
           
        }
    }
    
   

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("bus_timing_procevent", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "show");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        //GridView1.DataSource = dt;
        //GridView1.DataBind();
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
    protected void ddl_stationname_SelectedIndexChanged1(object sender, EventArgs e)
    {
        station();
    }
    protected void ddl_selectbusno_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd=new SqlCommand("Select * from bus_timing where route_name='"+ddl_stationname.SelectedItem.ToString()+"'and station_name='"+ddl_station.SelectedItem.ToString()+"' and bus_no='"+ddl_selectbusno.SelectedItem.ToString()+"'",con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr=cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_pickuptime.Text = dr["Pickup_time"].ToString();
            Text_drop.Text = dr["drop_time"].ToString();
            dr.Close();
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Sorry No Bus Record!!!!');", true);
        }
        
        con.Close();
    }
}