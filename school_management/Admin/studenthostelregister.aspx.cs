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
using System.Globalization;
public partial class Admin_studenthostelregister : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            stuhostel();
           
            gridshow();
           
        }
    }
   
    public void stuhostel()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from add_hostel", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        hostel_ddl.DataSource = dt;
        hostel_ddl.DataTextField = "hostel_name";
        hostel_ddl.DataValueField = "hostel_id";
        hostel_ddl.DataBind();
        hostel_ddl.Items.Insert(0, "Select hostel");


    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        

        //SqlCommand cmd = new SqlCommand("student_hostelinfo_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "insert");
        //cmd.Parameters.AddWithValue("@pk_id", "");
        //cmd.Parameters.AddWithValue("@student_id", Text_studid.Text);
        //cmd.Parameters.AddWithValue("@student_name", Text_studentname.Text);
        //cmd.Parameters.AddWithValue("@father_name", Text_father.Text);
        //cmd.Parameters.AddWithValue("@mothername", Text_mother.Text);
        //cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@batch", Text_batch.Text);
        //cmd.Parameters.AddWithValue("@stream", Text_stream.Text);
        //cmd.Parameters.AddWithValue("@class", Text_class.Text);
        //cmd.Parameters.AddWithValue("@roll_no", Text_roll.Text);
        //cmd.Parameters.AddWithValue("@date", (DateTime.ParseExact(Text_date.Text,"dd/MM/yyyy",CultureInfo.InvariantCulture)).ToShortDateString());
        //cmd.Parameters.AddWithValue("@hostel_name", hostel_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@type", DropDownList2.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@no_of_room", Text_no_of_room.Text);
        //cmd.Parameters.AddWithValue("@available_room", Text_available.Text);
        //cmd.Parameters.AddWithValue("@room_no", Text_room_no.Text);
        //cmd.Parameters.AddWithValue("@seat", Text_seatno.Text);
        //cmd.Parameters.AddWithValue("@no_of_student", "1");
        //cmd.Parameters.AddWithValue("@Charge", Text_charge.Text);
        //cmd.Parameters.AddWithValue("@mobile", Text_mobile.Text);
        //cmd.ExecuteNonQuery();
        hostel.hostelservice obj = new hostel.hostelservice();
        int a = obj.studenthostelregisterinsert(Text_studid.Text, Text_studentname.Text, Text_father.Text, Text_mother.Text, DropDownList1.SelectedItem.ToString(), Text_batch.Text, Text_stream.Text, Text_class.Text,Text_roll.Text,(DateTime.ParseExact(Text_date.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture)).ToShortDateString(), hostel_ddl.SelectedItem.ToString(), DropDownList2.SelectedItem.ToString(), Text_no_of_room.Text, Text_available.Text, Text_room_no.Text, Text_seatno.Text, "1", Text_charge.Text, Text_mobile.Text);
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Submitted!!!!');", true);
        if (a > 0)
        {
            gridshow();
            blank();
        }
  
    }

    public void blank()
    {
        Text_studentname.Text = "";
        Text_father.Text = "";
        Text_mother.Text = "";
        DropDownList1.SelectedValue = null;
        Text_batch.Text = "";
        Text_stream.Text = "";
        Text_class.Text="";
        Text_roll.Text = "";
        Text_date.Text = "";
        hostel_ddl.SelectedValue = null;
        Text_mobile.Text = "";
        Text_charge.Text = "";
        Text_available.Text = "";
        Text_room_no.Text = "";
        hostel_ddl.SelectedValue = null;
        DropDownList2.SelectedValue = null;
    }

    public void gridshow()
    {
        hostel.hostelservice obj = new hostel.hostelservice();
        GridView1.DataSource = obj.studenthostelregistershow();
        GridView1.DataBind();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label l1 = (Label)row.FindControl("Lbl_id");
        SqlCommand cmd = new SqlCommand("student_hostelinfo_procevent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", "select_id");
        cmd.Parameters.AddWithValue("@pk_id", l1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        
        string d;
        if (dr.Read())
        {
            Label_id.Text = dr["pk_id"].ToString();
            Text_studid.Text = dr["student_id"].ToString();
            Text_studentname.Text = dr["student_name"].ToString();
            Text_father.Text = dr["father_name"].ToString();
            Text_mother.Text = dr["mothername"].ToString();
            DropDownList1.SelectedValue = dr["gender"].ToString();
            Text_batch.Text = dr["batch"].ToString();
            Text_stream.Text = dr["stream"].ToString();
            Text_class.Text = dr["class"].ToString();
            Text_roll.Text = dr["roll_no"].ToString();
            Text_date.Text = dr["date"].ToString();
            d = dr["hostel_name"].ToString();
            Text_mobile.Text = dr["mobile"].ToString();

            dr.Close();

            stuhostel();
            hostel_ddl.Items.Insert(0, d);

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

        //SqlCommand cmd = new SqlCommand("student_hostelinfo_proc", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@action", "update");
        //cmd.Parameters.AddWithValue("@pk_id", Label_id.Text);
      
        //cmd.Parameters.AddWithValue("@student_id", Text_studid.Text);
        //cmd.Parameters.AddWithValue("@student_name", Text_studentname.Text);
        //cmd.Parameters.AddWithValue("@father_name", Text_father.Text);
        //cmd.Parameters.AddWithValue("@mothername", Text_mother.Text);
        //cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@batch", Text_batch.Text);
        //cmd.Parameters.AddWithValue("@stream", Text_stream.Text);
        //cmd.Parameters.AddWithValue("@class", Text_class.Text);
        //cmd.Parameters.AddWithValue("@roll_no", Text_roll.Text);
        //cmd.Parameters.AddWithValue("@date", Text_date.Text);
        //cmd.Parameters.AddWithValue("@hostel_name", hostel_ddl.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@type", DropDownList2.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@no_of_room", Text_no_of_room.Text);
        //cmd.Parameters.AddWithValue("@available_room", Text_available.Text);
        //cmd.Parameters.AddWithValue("@room_no", Text_room_no.Text);
        //cmd.Parameters.AddWithValue("@seat", Text_seatno.Text);
        //cmd.Parameters.AddWithValue("@no_of_student", "1");
        //cmd.Parameters.AddWithValue("@Charge", Text_charge.Text);
        //cmd.Parameters.AddWithValue("@mobile", Text_mobile.Text);
        //cmd.ExecuteNonQuery();
        hostel.hostelservice obj = new hostel.hostelservice();
        int a = obj.studenthostelregisterupdate(Convert.ToInt32(Label_id.Text),Text_studid.Text, Text_studentname.Text, Text_father.Text, Text_mother.Text, DropDownList1.SelectedItem.ToString(), Text_batch.Text, Text_stream.Text, Text_class.Text, Text_roll.Text, Text_date.Text, hostel_ddl.SelectedItem.ToString(), DropDownList2.SelectedItem.ToString(), Text_no_of_room.Text, Text_available.Text, Text_room_no.Text, Text_seatno.Text, "1", Text_charge.Text, Text_mobile.Text);
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
      
        hostel.hostelservice obj = new hostel.hostelservice();
        int a = obj.studenthostelregisterdelete(Convert.ToInt32(l1.Text));
        gridshow();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Data Deleted!!!!');", true);
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
        Response.AddHeader("content-disposition", "attachment;filename=examterm.xls");
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


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (DropDownList2.SelectedItem.ToString() == "Single")
        {
             Panel1.Visible = false;

        }
        else if (DropDownList2.SelectedItem.ToString() == "Double")
        {
            Panel1.Visible = true;

        }
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from hostel_room where hostel_name='" + hostel_ddl.SelectedItem.ToString() + "' and room_type='" + DropDownList2.SelectedItem.ToString() + "'", con);

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
           
            Text_no_of_room.Text = dr["no_of_rooms"].ToString();
            Text_available.Text = dr["available"].ToString();
            Text_charge.Text = dr["room_charge"].ToString();
            Text_seatno.Text = dr["seat"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();


    }



    protected void Text_room_no_TextChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedValue == "1")
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Select * from student_hostelinfo where hostel_name='" + hostel_ddl.SelectedItem.ToString() + "' and type='" + DropDownList2.SelectedItem.ToString() + "' and room_no='" + Text_room_no.Text + "'", con);
            cmd1.ExecuteNonQuery();
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('This Room is Already Book!!!!');", true);
                
                dr1.Close();
            }

            con.Close();

            int a = Convert.ToInt32(Text_available.Text);
            int b = Convert.ToInt32(Text_room_no.Text);
            int c = (a - 1);
            con.Open();
            SqlCommand cmd = new SqlCommand("update hostel_room set available='" + c + "' where hostel_name='" + hostel_ddl.SelectedItem.ToString() + "' and room_type='" + DropDownList2.SelectedItem.ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else if (DropDownList2.SelectedValue == "2")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from student_hostelinfo where hostel_name='" + hostel_ddl.SelectedItem.ToString() + "' and type='" + DropDownList2.SelectedItem.ToString() + "' and room_no='" + Text_room_no.Text + "'", con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                if (Text_seatno.Text == "2")
                {

                    Text_seatno.Text = (Convert.ToInt32(Text_seatno.Text) - 1).ToString();

                    SqlCommand cmd1 = new SqlCommand("update hostel_room set seat='" + Text_seatno.Text + "' where hostel_name='" + hostel_ddl.SelectedItem.ToString() + "' and room_type='" + DropDownList2.SelectedItem.ToString() + "'", con);
                    cmd1.ExecuteNonQuery();
                    int a = Convert.ToInt32(Text_available.Text);
                    int b = Convert.ToInt32(Text_room_no.Text);
                    int c = (a - 1);

                    SqlCommand cmd3 = new SqlCommand("update hostel_room set available='" + c + "' where hostel_name='" + hostel_ddl.SelectedItem.ToString() + "' and room_type='" + DropDownList2.SelectedItem.ToString() + "'", con);
                    cmd3.ExecuteNonQuery();

                }
                else if (Text_seatno.Text == "1")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Sorry No Space!!!!');", true);

                }


            }

            con.Close();
        }

    }

    protected void Text_studid_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from studentinfo where s_id='" + Text_studid.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Text_studentname.Text = dr["student_name"].ToString();
            Text_father.Text = dr["father_name"].ToString();
            Text_mother.Text = dr["mother_name"].ToString();
            Text_batch.Text = dr["batch"].ToString();
            Text_stream.Text = dr["stream"].ToString();
            Text_class.Text = dr["class"].ToString();
            Text_mobile.Text = dr["phone"].ToString();
            Text_roll.Text = dr["roll_no"].ToString();
            dr.Close();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }
}