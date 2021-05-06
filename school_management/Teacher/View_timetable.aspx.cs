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
public partial class Teacher_View_timetable : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            day();
            ////day1();
            //studentattendance();
            Repeater2.DataSource = CategoryData();
            Repeater2.DataBind();
        }
    }

    private DataTable CategoryData()
    {
        con.Open();
        string sql = "SELECT * FROM timetable where teacher_name='" + Session["teacher_name"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt;
    }

    private DataTable ProductData(string name)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter("SELECT distinct day FROM timetable where teacher_name='" + name + "'", con);
        DataTable dt2 = new DataTable();
        da1.Fill(dt2);
        foreach (RepeaterItem itm1 in Repeater1.Items)
        {
            Label time = (Label)itm1.FindControl("lbl_time");
        foreach (DataRow row in dt2.Rows)
        {
            //Label day_name = (Label)itm.FindControl("lbl_name");
            string day_name = row["day"].ToString();
            con.Open();
            //name = Session["teacher_name"].ToString();
            //SqlCommand cmmd = new SqlCommand("select * from timetableview where teacher_name='" + name + "' and b='" + time.Text + "' and day='" + day_name + "'", con);
            //SqlDataReader dr = cmmd.ExecuteReader();
            //if (dr.Read())
            //{
            //    dr.Close();
                string sql = "SELECT * FROM timetableview where teacher_name='" + name + "' and b='" + time.Text + "' and day='" + day_name + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            //}
            //else
            //{
            //    dr.Close();
            
            //}
            con.Close();
        }
        }
        return dt;
    }

    protected void Repeater2_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DataRowView drv = (DataRowView)e.Item.DataItem;
            string name = drv["teacher_name"].ToString();
            Repeater Repeater3 = (Repeater)e.Item.FindControl("Repeater3");
            Repeater3.DataSource = ProductData(name);
            Repeater3.DataBind();
        }
    }

    public void day()
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select b from timetableview where teacher_name='" + Session["teacher_name"].ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        con.Close();
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