using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Data.SqlClient;

public partial class Admin_attendance_register : System.Web.UI.Page
{
    public static string strCurrntMonthYear = "";
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    int Year = 0;
    int inMonth = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindAttendance();
        }
    }

    protected void bindAttendance()
    {
        //get current Year
        Year = DateTime.Now.Year;

        //get current Month
        inMonth = DateTime.Now.Month;

        //get Day's in current month
        int Days = DateTime.DaysInMonth(DateTime.Now.Year, DateTime.Now.Month);

        //Declare DataTable
        DataTable Dt = new DataTable("dtDays");

        //Declare Data Column
        DataColumn auto = new DataColumn("AutoID", typeof(System.Int32));
        Dt.Columns.Add(auto);

        DataColumn DaysName = new DataColumn("DaysName", typeof(string));
        Dt.Columns.Add(DaysName);

        DataColumn Date = new DataColumn("Date", typeof(string));
        Dt.Columns.Add(Date);

        //Declare Data Row
        DataRow dr = null;
        DateTime days;
        DateTime strDate;

        for (int i = 1; i <= Days; i++)
        {
            //Create row in DataTable
            dr = Dt.NewRow();
            days = new DateTime(Year, inMonth, i);  // find days name
            strDate = new DateTime(Year, inMonth, i); // find date w.r.t days

            dr["AutoID"] = i;
            dr["DaysName"] = days.DayOfWeek;
            dr["Date"] = strDate.Date.ToShortDateString();
            Dt.Rows.Add(dr);    //Add row in DataTable
        }

        //Assign Current Date, Month and Year

        strCurrntMonthYear = DateTime.Now.ToString("dd") + " " + DateTime.Now.ToString("MMMM") + " " + Year;

        //Assing DataTable to GridView
        gvCalander.DataSource = Dt;
        gvCalander.DataBind();

    }
    protected void gvCalander_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        string currDate = DateTime.Now.ToShortDateString();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string rowDate = e.Row.Cells[2].Text; //Date
            string rowDay = e.Row.Cells[1].Text;  //Day

            CheckBox chk = (CheckBox)e.Row.FindControl("chkMark");
            TextBox txtRemark = (TextBox)e.Row.FindControl("txtRemarks");

            string strRemarks = "";
            bool boolAttStatus = false;
            bindPrevAtt(out boolAttStatus, out strRemarks, rowDate);
            txtRemark.Text = strRemarks;
            chk.Checked = boolAttStatus;

            if ((Convert.ToDateTime(rowDate) < Convert.ToDateTime(currDate)) || chk.Checked == true)
            {
                // CheckBox chk = (CheckBox)e.Row.FindControl("chkMark");
                // TextBox txtRemark = (TextBox)e.Row.FindControl("txtRemarks");
                chk.Enabled = false;
                txtRemark.Enabled = false;
            }
            if (rowDay.Equals("Sunday") || rowDay.Equals("Saturday"))        //if there is Sunday make it red colour
            {
                e.Row.Cells[1].ForeColor = System.Drawing.Color.Red;
            }
        }
    }
    protected void btnAddAttendence_Click(object sender, EventArgs e)
    {
        string strRemarks = "";
        string tsCurrHour = DateTime.Now.Hour.ToString();
        string tsCurrMin = DateTime.Now.Minute.ToString();

        foreach (GridViewRow gvr in gvCalander.Rows)
        {
            string strDay = gvr.Cells[1].Text; //Day
            string strDate = gvr.Cells[2].Text; //Date
            TextBox txtRemarks = (TextBox)gvr.FindControl("txtRemarks");
            CheckBox chkMark = (CheckBox)gvr.FindControl("chkMark");
            if (chkMark.Checked == true)
            {
                if (Convert.ToInt32(tsCurrHour) > 10 || Convert.ToInt32(tsCurrMin) > 30)
                {
                    strRemarks = "Sorry you are late";
                }
                else
                {
                    strRemarks = txtRemarks.Text.Trim();
                }
                //strRemarks = txtRemarks.Text.Trim();
                //Save Data
                DateTime dt = Convert.ToDateTime(strDate);
                string strDateTime = dt.Month + "/" + dt.Day + "/" + dt.Year;
                SaveData(1, strRemarks, strDateTime);
            }
        }

        //bind Attendance
        bindAttendance();
    }
    protected void SaveData(int attStatus, string strRemarks, string strDate)
    {
        //here I am assuming logged in employee Id as 1
        string strQry = "INSERT INTO AttendanceMaster (empId, attMonth, attYear, attStatus, remarks, attdate, loggedInDate ) VALUES (1," + DateTime.Now.Month + "," + DateTime.Now.Year + "," + attStatus + ", '" + strRemarks + "', '" + strDate + "',getDate())";
        SqlCommand cmd = new SqlCommand(strQry, dbCon);
        dbCon.Open();
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        dbCon.Close();
    }
    protected void bindPrevAtt(out bool attStatus, out string strRemarks, string strAttDate)
    {
        attStatus = false;
        strRemarks = "Remarks";
        string strQry = "SELECT attStatus, remarks FROM AttendanceMaster WHERE empId = 1 AND Convert(varchar(12),attDate,103) = '" + strAttDate + "'";
        SqlCommand cmd = new SqlCommand(strQry, dbCon);
        dbCon.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            strRemarks = dt.Rows[0]["remarks"].ToString();
            attStatus = Convert.ToBoolean(dt.Rows[0]["attStatus"]);
        }
        dt.Dispose();
        da.Dispose();
        cmd.Dispose();
        dbCon.Close();
    }

}