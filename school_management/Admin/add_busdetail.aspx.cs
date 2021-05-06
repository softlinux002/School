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

public partial class Admin_add_busdetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            routename();
            drivername();
            gridshow();
            blank();
            Text_school_busno.Text = GetID("select max(school_bus_no) from add_busdetail").ToString();
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
        //SqlCommand com = new SqlCommand("select * from add_busdetail where bus_regd_no='" + Text_busregnno.Text + "' and model='" + Text_model.Text + "'", con);
        //SqlDataReader dr = com.ExecuteReader();
        SqlCommand cmd1 = new SqlCommand("add_busdetail_proc", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@action", "Busexist");
        cmd1.Parameters.AddWithValue("@pk_id", "");
        cmd1.Parameters.AddWithValue("@school_bus_no","");
        cmd1.Parameters.AddWithValue("@bus_regd_no",Text_busregnno.Text );
        cmd1.Parameters.AddWithValue("@driver_name","");
        cmd1.Parameters.AddWithValue("@driver_contact_no", "");
        cmd1.Parameters.AddWithValue("@seat_capacity", "");
        cmd1.Parameters.AddWithValue("@model", "");
        cmd1.Parameters.AddWithValue("@select_route","");
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Record Exist Already!!!!');", true);
            
            dr.Close();
            blank();
        }
        else
        {
            dr.Close();
            //SqlCommand cmd = new SqlCommand("add_busdetail_proc", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "insert");
            //cmd.Parameters.AddWithValue("@pk_id", "");
            //cmd.Parameters.AddWithValue("@school_bus_no", Text_school_busno.Text);
            //cmd.Parameters.AddWithValue("@bus_regd_no", Text_busregnno.Text);
            //cmd.Parameters.AddWithValue("@driver_name", ddl_drivername.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@driver_contact_no", Text_drivercontactno.Text);
            //cmd.Parameters.AddWithValue("@seat_capacity", Text_seat.Text);
            //cmd.Parameters.AddWithValue("@model", Text_model.Text);
            //cmd.Parameters.AddWithValue("@select_route", ddl_route.SelectedItem.ToString());
            //cmd.ExecuteNonQuery();
            route.addroute obj = new route.addroute();
            int a = obj.businsert(Text_school_busno.Text, Text_busregnno.Text, ddl_drivername.SelectedItem.ToString(), Text_drivercontactno.Text, Text_seat.Text, Text_model.Text, ddl_route.SelectedItem.ToString());
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
        Text_school_busno.Text = "";
        Text_busregnno.Text = "";
        ddl_drivername.SelectedValue = null;
        Text_drivercontactno.Text = "";
        Text_seat.Text = "";
        Text_model.Text = "";
        ddl_route.SelectedValue = null;
    }

    public void gridshow()
    {
        route.addroute obj = new route.addroute();
        GridView1.DataSource = obj.busdetailshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("add_busdetail_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select_id");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_school_busno.Text = dr["school_bus_no"].ToString();
            Text_busregnno.Text = dr["bus_regd_no"].ToString();
            a = dr["driver_name"].ToString();
            Text_drivercontactno.Text = dr["driver_contact_no"].ToString();
            Text_seat.Text = dr["seat_capacity"].ToString();
            Text_model.Text = dr["model"].ToString();
            b = dr["select_route"].ToString();
            dr.Close();
            drivername();
            ddl_drivername.Items.Insert(0, a);
            routename();
            ddl_route.Items.Insert(0, b);
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
        
       route.addroute obj=new route.addroute();
       int a=obj.busdetailupdate(Convert.ToInt32(Label_id.Text),Text_school_busno.Text,Text_busregnno.Text,ddl_drivername.SelectedItem.ToString(),Text_drivercontactno.Text,Text_seat.Text,Text_model.Text,ddl_route.SelectedItem.ToString());
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
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        route.addroute obj = new route.addroute();
        int a = obj.busdetaildelete(Convert.ToInt32(l1.Text));
        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
            gridshow(); 
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
    public void drivername()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from driver_info", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_drivername.DataSource = dt;
        ddl_drivername.DataTextField = "driver_name";
        ddl_drivername.DataValueField = "driver_id";
        ddl_drivername.DataBind();
        ddl_drivername.Items.Insert(0, "Select Driver");
    }

    protected void ddl_drivername_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd1 = new SqlCommand("Select * from add_busdetail where driver_name='" + ddl_drivername.SelectedItem.ToString() + "'", con);
        SqlCommand cmd1 = new SqlCommand("add_busdetail_proc", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@action", "driver");
        cmd1.Parameters.AddWithValue("@pk_id", "");
        cmd1.Parameters.AddWithValue("@school_bus_no", "");
        cmd1.Parameters.AddWithValue("@bus_regd_no","");
        cmd1.Parameters.AddWithValue("@driver_name", ddl_drivername.SelectedItem.ToString());
        cmd1.Parameters.AddWithValue("@driver_contact_no", "");
        cmd1.Parameters.AddWithValue("@seat_capacity", "");
        cmd1.Parameters.AddWithValue("@model", "");
        cmd1.Parameters.AddWithValue("@select_route", "");
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Driver already exist!!!!');", true);
            blank();
            dr1.Close();
        }
        else
        {
            dr1.Close();
            //SqlCommand cmd = new SqlCommand("select * from driver_info where driver_name='" + ddl_drivername.SelectedItem.ToString() + "' ", con);
            SqlCommand cmd = new SqlCommand("add_busdetail_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "driverinfo");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@school_bus_no", "");
            cmd.Parameters.AddWithValue("@bus_regd_no", "");
            cmd.Parameters.AddWithValue("@driver_name", ddl_drivername.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@driver_contact_no", "");
            cmd.Parameters.AddWithValue("@seat_capacity", "");
            cmd.Parameters.AddWithValue("@model", "");
            cmd.Parameters.AddWithValue("@select_route", "");
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Text_drivercontactno.Text = dr["contact_no"].ToString();
                dr.Close();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Please Select Valid Name!!!!');", true);
            }
            cmd.ExecuteNonQuery();
        }
        cmd1.ExecuteNonQuery();
        con.Close();
    }
    public void routename()
    {
         SqlDataAdapter da = new SqlDataAdapter("add_busdetail_proc", con);
         da.SelectCommand.CommandType=CommandType.StoredProcedure;
         da.SelectCommand.Parameters.AddWithValue("@action","Route");
         da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
         da.SelectCommand.Parameters.AddWithValue("@school_bus_no", "");
         da.SelectCommand.Parameters.AddWithValue("@bus_regd_no","");
         da.SelectCommand.Parameters.AddWithValue("@driver_name", "");
         da.SelectCommand.Parameters.AddWithValue("@driver_contact_no", "");
         da.SelectCommand.Parameters.AddWithValue("@seat_capacity", "");
         da.SelectCommand.Parameters.AddWithValue("@model", "");
         da.SelectCommand.Parameters.AddWithValue("@select_route", "");
         DataTable dt = new DataTable();
         da.Fill(dt);
         ddl_route.DataSource = dt;
         ddl_route.DataTextField = "route_name";
         ddl_route.DataValueField = "pk_id";
         ddl_route.DataBind();
         ddl_route.Items.Insert(0, "Select Route");

    }
   
}