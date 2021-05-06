using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Globalization;
public partial class Student_View_timetable : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["std_email"] == null || Session["std_pass"] == null || Session["std_type"] == null)
        {
            Response.Redirect("../Default.aspx");

        }
        else
        {
             if (!IsPostBack)
            {
                student_class();
                Repeater2.DataSource = CategoryData();
                Repeater2.DataBind();
                day();
                ////day1();
                //studentattendance();
                ProductData();
            }
        }
    }

    private DataTable CategoryData()
    {
        con.Open();
        string sql = "SELECT distinct day FROM studenttimetable1_view where email='" + Session["std_email"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt;
    }

    public void ProductData()
    {
        DataTable dt = new DataTable();
        foreach (RepeaterItem itm in Repeater1.Items)
        {
            Label time = (Label)itm.FindControl("lbl_time");
            foreach (RepeaterItem itm2 in Repeater2.Items)
            {
                Label day = (Label)itm2.FindControl("lbl_name");
                SqlDataAdapter da = new SqlDataAdapter("select * from studenttimetable1_view where email='" + Session["std_email"].ToString() + "' and b='" + time.Text + "' and day='" + day.Text + "' and class='"+lbl_classs.Text+"' and section='"+lbl_section.Text+"' and stream='"+lbl_stream.Text+"'", con);
                
                da.Fill(dt);
                //if (dt.Rows.Count > 0)
                //{
                //    string a = dt.Rows[0]["subject"].ToString(); 
                //    ViewState["data"] = a;
                //    ViewState["data"] += a;
                //    var data = ViewState["data"].ToString();
                //}
            }
        }
        Repeater3.DataSource = dt;
        Repeater3.DataBind();
    }

    //protected void Repeater2_ItemDataBound(object sender, RepeaterItemEventArgs e)
    //{
    //    //if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
    //    //{
    //        DataRowView drv = (DataRowView)e.Item.DataItem;
    //        //string name = drv["student_name"].ToString();
    //        Repeater Repeater3 = (Repeater)e.Item.FindControl("Repeater3");
    //        Repeater3.DataSource = ProductData();
    //        Repeater3.DataBind();
    //    //}
    //}

    public void student_class()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from studentinfo where email='" + Session["std_email"].ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lbl_classs.Text = dr["class"].ToString();
            lbl_section.Text = dr["section"].ToString();
            lbl_stream.Text = dr["stream"].ToString();
        }
        dr.Close();
        con.Close();
    }

    public void day()
    {
        foreach (RepeaterItem itm in Repeater2.Items)
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select distinct b,subject from studenttimetable1_view where email='" + Session["std_email"].ToString() + "' order by b asc", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
    }

    //public void day1()
    //{
    //    con.Open();
    //    SqlDataAdapter da = new SqlDataAdapter("select distinct b from timetableview", con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    Repeater2.DataSource = dt;
    //    Repeater2.DataBind();
    //    con.Close();
    //}

    public void gridshow()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from studentinfo", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    //    public void studentattendance()
    //{

    //    SqlDataAdapter cmd = new SqlDataAdapter("SELECT distinct teacher_name,startingtime,endingtime,subject FROM timetable where teacher_name='" + Session["teacher_name"].ToString() + "';SELECT distinct teacher_name,startingtime,endingtime,subject FROM timetable where teacher_name='" + Session["teacher_name"].ToString() + "'", con);
    //    DataSet ds = new DataSet();
    //    cmd.Fill(ds);
    //    ds.Relations.Add(new DataRelation("nestThem", ds.Tables[0].Columns["teacher_name"], ds.Tables[1].Columns["teacher_name"]));

    //    Repeater2.DataSource = ds;
    //    Repeater2.DataBind();
    //}

    //protected void Repeater2_ItemDataBound(object sender, RepeaterItemEventArgs e)
    //{
    //    DataRowView dv = e.Item.DataItem as DataRowView;
    //    if (dv != null)
    //    {
    //        Repeater repSubMenu = e.Item.FindControl("Repeater3") as Repeater;
    //        if (repSubMenu != null)
    //        {
    //            repSubMenu.DataSource = dv.CreateChildView("nestThem");
    //            repSubMenu.DataBind();
    //        }
    //    }
    //}
}