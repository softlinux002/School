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


public partial class Admin_allocatestationstudent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            batch();
            gridshow();
            blank();
            busroute();
        }
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("allocatestationstudent_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@pk_id", "");
        //cmd.Parameters.AddWithValue("@batch", ddl_selectbatch.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", ddl_class.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", ddl_section.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", ddl_stream.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@roll_no", ddl_roll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@student_name", Text_name.Text);
        //cmd.Parameters.AddWithValue("@route", ddl_route.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@station", ddl_station.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@bus_no", ddl_busno.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@way_side", ddl_side.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@fee", amount_txt.Text);
        //cmd.Parameters.Add("@pay_fee", "0");
        //cmd.Parameters.AddWithValue("@remaining", amount_txt.Text);
        //cmd.ExecuteNonQuery();
        route.addroute obj=new route.addroute();
        int n = obj.allocatebusinsert(ddl_selectbatch.SelectedItem.ToString(),ddl_class.SelectedItem.ToString(),ddl_section.SelectedItem.ToString(),ddl_stream.SelectedItem.ToString(),ddl_roll.SelectedItem.ToString(),Text_name.Text,ddl_route.SelectedItem.ToString(),ddl_station.SelectedItem.ToString(),ddl_busno.SelectedItem.ToString(),ddl_side.SelectedItem.ToString(),amount_txt.Text,"0",amount_txt.Text);
        if (n > 0)
        {
            int a = Convert.ToInt32(Text_availableseat.Text);
            int b = (a - 1);
            SqlCommand cmd1 = new SqlCommand("update add_busdetail set seat_capacity='" + b + "' where select_route='" + ddl_route.SelectedItem.ToString() + "'", con);
            cmd1.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);
            gridshow();
            blank();
            con.Close();
        }
       
       
    }

    public void blank()
    {
        Text_availableseat.Text = "";
        amount_txt.Text = "";
        ddl_selectbatch.SelectedValue = null;
        ddl_class.SelectedValue = null;
        ddl_section.SelectedValue = null;
        ddl_stream.SelectedValue = null;
        ddl_roll.SelectedValue = null;
        Text_name.Text = "";
        ddl_route.SelectedValue = null;
        ddl_station.SelectedValue = null;
        ddl_busno.SelectedValue = null;
        ddl_side.SelectedValue = null;

    }

    public void gridshow()
    {
        route.addroute obj = new route.addroute();
        GridView1.DataSource = obj.allocatebusshow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();

        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("allocatestationstudent_event_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        string a;
        string b;
        string c;
        string d;
        string f;
        string g;
        string h;
        string j;
        string k;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            a = dr["batch"].ToString();
            b = dr["class"].ToString();
            c = dr["section"].ToString();
            d = dr["stream"].ToString();
            f = dr["roll_no"].ToString();
            Text_name.Text = dr["student_name"].ToString();
            g = dr["route"].ToString();
            h = dr["station"].ToString();
            j = dr["bus_no"].ToString();
            k = dr["way_side"].ToString();
            amount_txt.Text = dr["fee"].ToString();
            dr.Close();
            batch();
            ddl_selectbatch.Items.Insert(0, a);
            classname();
            ddl_class.Items.Insert(0, b);
            section();
            ddl_section.Items.Insert(0, c);
            stream();
            ddl_stream.Items.Insert(0, d);
            roll();
            ddl_roll.Items.Insert(0, f);
            busroute();
            ddl_route.Items.Insert(0, g);
            stationpoint();
            ddl_station.Items.Insert(0, h);
            busdetail();
            ddl_busno.Items.Insert(0, j);
            if (k == "Both_way_fare")
            {
                ddl_side.SelectedValue = "2";
            }
            else if (k == "one_way_fare")
            {
                ddl_side.SelectedValue = "1";
            }
            else
            {
                ddl_side.SelectedValue = "0";
            }
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

        //SqlCommand cmd = new SqlCommand("allocatestationstudent_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
        //cmd.Parameters.AddWithValue("@batch", ddl_selectbatch.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@class", ddl_class.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@section", ddl_section.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@stream", ddl_stream.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@roll_no", ddl_roll.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@student_name", Text_name.Text);
        //cmd.Parameters.AddWithValue("@route", ddl_route.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@station", ddl_station.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@bus_no", ddl_busno.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@way_side", ddl_side.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@fee", amount_txt.Text);
        //cmd.Parameters.Add("@pay_fee", "");
        //cmd.Parameters.AddWithValue("@remaining", "");

        //cmd.ExecuteNonQuery();

        route.addroute obj = new route.addroute();
        int n = obj.allocatebusupdate(Convert.ToInt32(Label_id.Text),ddl_selectbatch.SelectedItem.ToString(), ddl_class.SelectedItem.ToString(), ddl_section.SelectedItem.ToString(), ddl_stream.SelectedItem.ToString(), ddl_roll.SelectedItem.ToString(), Text_name.Text, ddl_route.SelectedItem.ToString(), ddl_station.SelectedItem.ToString(), ddl_busno.SelectedItem.ToString(), ddl_side.SelectedItem.ToString(), amount_txt.Text, "", amount_txt.Text);
        if (n > 0)
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
        int a = obj.allocatebusdelete(Convert.ToInt32(l1.Text));
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
    public void batch()
    {

        SqlDataAdapter da = new SqlDataAdapter("batch_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "batchs");
        da.SelectCommand.Parameters.AddWithValue("@batch_id", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_selectbatch.DataSource = dt;
        ddl_selectbatch.DataTextField = "batch";
        ddl_selectbatch.DataValueField = "batch_id";
        ddl_selectbatch.DataBind();
        ddl_selectbatch.Items.Insert(0, "Select Batch");
       
    }
    public void classname()
    {
        //SqlDataAdapter da = new SqlDataAdapter("Select Distinct class from studentinfo where batch='" + ddl_selectbatch.SelectedItem.ToString() + "'", con);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //ddl_class.DataSource = dt;
        //ddl_class.DataTextField = "class";
        ////ddl_class.DataValueField = "student_id";
        //ddl_class.DataBind();
        //ddl_class.Items.Insert(0, "Select Class");

        SqlDataAdapter da = new SqlDataAdapter("studentinfo_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "classes");
        da.SelectCommand.Parameters.AddWithValue("@student_id", "");
        da.SelectCommand.Parameters.AddWithValue("@admission_no", "");
        da.SelectCommand.Parameters.AddWithValue("@admissiondate", "");
        da.SelectCommand.Parameters.AddWithValue("@bloodgroup", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@father_name", "");
        da.SelectCommand.Parameters.AddWithValue("@mother_name", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", ddl_selectbatch.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@class", "");
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@dob", "");
        da.SelectCommand.Parameters.AddWithValue("@gender", "");
        da.SelectCommand.Parameters.AddWithValue("@country", "");
        da.SelectCommand.Parameters.AddWithValue("@state", "");
        da.SelectCommand.Parameters.AddWithValue("@city", "");
        da.SelectCommand.Parameters.AddWithValue("@address1", "");
        da.SelectCommand.Parameters.AddWithValue("@phone", "");
        da.SelectCommand.Parameters.AddWithValue("@email", "");
        da.SelectCommand.Parameters.AddWithValue("@password", "");
        da.SelectCommand.Parameters.AddWithValue("@s_id", "");
        da.SelectCommand.Parameters.AddWithValue("@image", "");
        da.SelectCommand.Parameters.AddWithValue("@document_name", "");
        da.SelectCommand.Parameters.AddWithValue("@doc_image", "");
        da.SelectCommand.Parameters.AddWithValue("@type", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_class.DataSource = dt;
        ddl_class.DataTextField = "class";
        //ddl_class.DataValueField = "student_id";
        ddl_class.DataBind();
        ddl_class.Items.Insert(0, "Select Class");

    }
    protected void ddl_selectbatch_SelectedIndexChanged(object sender, EventArgs e)
    {
        classname();
    }
    public void section()
    {

        SqlDataAdapter da = new SqlDataAdapter("studentinfo_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "Section");
        da.SelectCommand.Parameters.AddWithValue("@student_id", "");
        da.SelectCommand.Parameters.AddWithValue("@admission_no", "");
        da.SelectCommand.Parameters.AddWithValue("@admissiondate", "");
        da.SelectCommand.Parameters.AddWithValue("@bloodgroup", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@father_name", "");
        da.SelectCommand.Parameters.AddWithValue("@mother_name", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", ddl_selectbatch.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@class", ddl_class.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@section", "");
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@dob", "");
        da.SelectCommand.Parameters.AddWithValue("@gender", "");
        da.SelectCommand.Parameters.AddWithValue("@country", "");
        da.SelectCommand.Parameters.AddWithValue("@state", "");
        da.SelectCommand.Parameters.AddWithValue("@city", "");
        da.SelectCommand.Parameters.AddWithValue("@address1", "");
        da.SelectCommand.Parameters.AddWithValue("@phone", "");
        da.SelectCommand.Parameters.AddWithValue("@email", "");
        da.SelectCommand.Parameters.AddWithValue("@password", "");
        da.SelectCommand.Parameters.AddWithValue("@s_id", "");
        da.SelectCommand.Parameters.AddWithValue("@image", "");
        da.SelectCommand.Parameters.AddWithValue("@document_name", "");
        da.SelectCommand.Parameters.AddWithValue("@doc_image", "");
        da.SelectCommand.Parameters.AddWithValue("@type", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_section.DataSource = dt;
        ddl_section.DataTextField = "section";
        //ddl_section.DataValueField = "student_id";
        ddl_section.DataBind();
        ddl_section.Items.Insert(0, "Select Section");

    }
    protected void ddl_class_SelectedIndexChanged(object sender, EventArgs e)
    {
        section();
    }
    public void stream()
    {
        SqlDataAdapter da = new SqlDataAdapter("studentinfo_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "stream");
        da.SelectCommand.Parameters.AddWithValue("@student_id", "");
        da.SelectCommand.Parameters.AddWithValue("@admission_no", "");
        da.SelectCommand.Parameters.AddWithValue("@admissiondate", "");
        da.SelectCommand.Parameters.AddWithValue("@bloodgroup", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@father_name", "");
        da.SelectCommand.Parameters.AddWithValue("@mother_name", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", ddl_selectbatch.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@stream", "");
        da.SelectCommand.Parameters.AddWithValue("@class", ddl_class.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@section", ddl_section.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@dob", "");
        da.SelectCommand.Parameters.AddWithValue("@gender", "");
        da.SelectCommand.Parameters.AddWithValue("@country", "");
        da.SelectCommand.Parameters.AddWithValue("@state", "");
        da.SelectCommand.Parameters.AddWithValue("@city", "");
        da.SelectCommand.Parameters.AddWithValue("@address1", "");
        da.SelectCommand.Parameters.AddWithValue("@phone", "");
        da.SelectCommand.Parameters.AddWithValue("@email", "");
        da.SelectCommand.Parameters.AddWithValue("@password", "");
        da.SelectCommand.Parameters.AddWithValue("@s_id", "");
        da.SelectCommand.Parameters.AddWithValue("@image", "");
        da.SelectCommand.Parameters.AddWithValue("@document_name", "");
        da.SelectCommand.Parameters.AddWithValue("@doc_image", "");
        da.SelectCommand.Parameters.AddWithValue("@type", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_stream.DataSource = dt;
        ddl_stream.DataTextField = "stream";
        //ddl_stream.DataValueField = "student_id";
        ddl_stream.DataBind();
        ddl_stream.Items.Insert(0, "Select Stream");
    }
    protected void ddl_section_SelectedIndexChanged(object sender, EventArgs e)
    {
        stream();
    }
    public void roll()
    {
        SqlDataAdapter da = new SqlDataAdapter("studentinfo_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "roll");
        da.SelectCommand.Parameters.AddWithValue("@student_id", "");
        da.SelectCommand.Parameters.AddWithValue("@admission_no", "");
        da.SelectCommand.Parameters.AddWithValue("@admissiondate", "");
        da.SelectCommand.Parameters.AddWithValue("@bloodgroup", "");
        da.SelectCommand.Parameters.AddWithValue("@student_name", "");
        da.SelectCommand.Parameters.AddWithValue("@father_name", "");
        da.SelectCommand.Parameters.AddWithValue("@mother_name", "");
        da.SelectCommand.Parameters.AddWithValue("@batch", ddl_selectbatch.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@stream", ddl_stream.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@class", ddl_class.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@section", ddl_section.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@roll_no", "");
        da.SelectCommand.Parameters.AddWithValue("@dob", "");
        da.SelectCommand.Parameters.AddWithValue("@gender", "");
        da.SelectCommand.Parameters.AddWithValue("@country", "");
        da.SelectCommand.Parameters.AddWithValue("@state", "");
        da.SelectCommand.Parameters.AddWithValue("@city", "");
        da.SelectCommand.Parameters.AddWithValue("@address1", "");
        da.SelectCommand.Parameters.AddWithValue("@phone", "");
        da.SelectCommand.Parameters.AddWithValue("@email", "");
        da.SelectCommand.Parameters.AddWithValue("@password", "");
        da.SelectCommand.Parameters.AddWithValue("@s_id", "");
        da.SelectCommand.Parameters.AddWithValue("@image", "");
        da.SelectCommand.Parameters.AddWithValue("@document_name", "");
        da.SelectCommand.Parameters.AddWithValue("@doc_image", "");
        da.SelectCommand.Parameters.AddWithValue("@type", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_roll.DataSource = dt;
        ddl_roll.DataTextField = "roll_no";
        //ddl_roll.DataValueField = "student_id";
        ddl_roll.DataBind();
        ddl_roll.Items.Insert(0, "Select Roll No");
    }
    protected void ddl_stream_SelectedIndexChanged(object sender, EventArgs e)
    {
        roll();
    }

    protected void ddl_roll_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("studentinfo_proc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "rollchange");
       cmd.Parameters.AddWithValue("@student_id", "");
       cmd.Parameters.AddWithValue("@admission_no", "");
       cmd.Parameters.AddWithValue("@admissiondate", "");
       cmd.Parameters.AddWithValue("@bloodgroup", "");
       cmd.Parameters.AddWithValue("@student_name", "");
       cmd.Parameters.AddWithValue("@father_name", "");
       cmd.Parameters.AddWithValue("@mother_name", "");
       cmd.Parameters.AddWithValue("@batch", ddl_selectbatch.SelectedItem.ToString());
       cmd.Parameters.AddWithValue("@stream", ddl_stream.SelectedItem.ToString());
       cmd.Parameters.AddWithValue("@class", ddl_class.SelectedItem.ToString());
       cmd.Parameters.AddWithValue("@section", ddl_section.SelectedItem.ToString());
       cmd.Parameters.AddWithValue("@roll_no", ddl_roll.SelectedItem.ToString());
       cmd.Parameters.AddWithValue("@dob", "");
       cmd.Parameters.AddWithValue("@gender", "");
       cmd.Parameters.AddWithValue("@country", "");
       cmd.Parameters.AddWithValue("@state", "");
       cmd.Parameters.AddWithValue("@city", "");
       cmd.Parameters.AddWithValue("@address1", "");
       cmd.Parameters.AddWithValue("@phone", "");
       cmd.Parameters.AddWithValue("@email", "");
       cmd.Parameters.AddWithValue("@password", "");
       cmd.Parameters.AddWithValue("@s_id", "");
       cmd.Parameters.AddWithValue("@image", "");
       cmd.Parameters.AddWithValue("@document_name", "");
       cmd.Parameters.AddWithValue("@doc_image", "");
       cmd.Parameters.AddWithValue("@type", "");
       cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_name.Text = dr["student_name"].ToString();
            dr.Close();
        }
      
        con.Close();

    }
    public void busroute()
    {

        SqlDataAdapter da = new SqlDataAdapter("add_route_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "route");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@route_name", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_route.DataSource = dt;
        ddl_route.DataTextField = "route_name";
        ddl_route.DataValueField = "pk_id";
        ddl_route.DataBind();
        ddl_route.Items.Insert(0, "Select Route");
    }
    protected void ddl_route_SelectedIndexChanged(object sender, EventArgs e)
    {
        busdetail();
        Panel1.Visible = true;
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from add_busdetail where select_route='" + ddl_route.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_availableseat.Text = dr["seat_capacity"].ToString();
            dr.Close();
            if (Text_availableseat.Text == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Sorry Seats Not Available!!!!');", true);
          
                dr.Close();
            }

        }
        else 
        {
            dr.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Sorry No Bus Provide these Route!!!!');", true);
        
        }
        cmd.ExecuteNonQuery();
        con.Close();
        stationpoint();
    }

    public void sidefare()
    {
        con.Open();
        if (ddl_side.SelectedValue == "1")
        {
           
            SqlCommand cmd = new SqlCommand("add_fare_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "oneway");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@route_name", ddl_route.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Both_way_fare", "");
            cmd.Parameters.AddWithValue("@one_way_fare", "");
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                amount_txt.Text = dr["one_way_fare"].ToString();
            }
            dr.Close();
        }
        else if (ddl_side.SelectedValue == "2")
        {
            SqlCommand cmd = new SqlCommand("add_fare_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "oneway");
            cmd.Parameters.AddWithValue("@pk_id", "");
            cmd.Parameters.AddWithValue("@route_name", ddl_route.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Both_way_fare", "");
            cmd.Parameters.AddWithValue("@one_way_fare", "");
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                amount_txt.Text = dr["Both_way_fare"].ToString();
            }
            dr.Close();
        }
        else
        {
            Response.Write("<script>alert('Please Select Side Fare')</script>");
        }
        con.Close();
    }

    protected void ddl_side_SelectedIndexChanged(object sender, EventArgs e)
    {
        sidefare();
    }

    public void stationpoint()
    {
        SqlDataAdapter da = new SqlDataAdapter("add_station_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "station");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@route_name", ddl_route.SelectedItem.ToString());
        da.SelectCommand.Parameters.AddWithValue("@station_point", "");
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_station.DataSource = dt;
        ddl_station.DataTextField = "station_point";
        ddl_station.DataValueField = "pk_id";
        ddl_station.DataBind();
        ddl_station.Items.Insert(0, "Select station");
    }
    public void busdetail()
    {
        //SqlDataAdapter da = new SqlDataAdapter("Select * from add_busdetail where select_route='"+ddl_route.SelectedItem.ToString()+"'", con);
        SqlDataAdapter da = new SqlDataAdapter("add_busdetail_proc", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@action", "selectbus");
        da.SelectCommand.Parameters.AddWithValue("@pk_id", "");
        da.SelectCommand.Parameters.AddWithValue("@school_bus_no", "");
        da.SelectCommand.Parameters.AddWithValue("@bus_regd_no", "");
        da.SelectCommand.Parameters.AddWithValue("@driver_name", "");
        da.SelectCommand.Parameters.AddWithValue("@driver_contact_no", "");
        da.SelectCommand.Parameters.AddWithValue("@seat_capacity", "");
        da.SelectCommand.Parameters.AddWithValue("@model", "");
        da.SelectCommand.Parameters.AddWithValue("@select_route", ddl_route.SelectedItem.ToString());
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_busno.DataSource = dt;
        ddl_busno.DataTextField = "school_bus_no";
        ddl_busno.DataValueField = "pk_id";
        ddl_busno.DataBind();
        ddl_busno.Items.Insert(0, "Select Bus no");
    }
}