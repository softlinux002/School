using DayPilot.Json;
using DayPilot.Utils;
using DayPilot.Web.Ui;
using DayPilot.Web.Ui.Data;
using DayPilot.Web.Ui.Enums;
using DayPilot.Web.Ui.Events;
using DayPilot.Web.Ui.Events.Scheduler;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Default2 : System.Web.UI.Page
{
    private DataTable blocks;
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
                LoadResources();
                DayPilotScheduler1.StartDate = new DateTime(DateTime.Today.Year, 1, 1);
                DayPilotScheduler1.Days = DateTime.Today.Year;
                DayPilotScheduler1.DataSource = DbGetEvents(DayPilotScheduler1.StartDate, DayPilotScheduler1.Days);
                DayPilotScheduler1.DataBind();

                DayPilotScheduler1.SetScrollX(DateTime.Today);
            }
        }
    }

    private void LoadResources()
    {
        DayPilotScheduler1.Resources.Clear();

        SqlDataAdapter da = new SqlDataAdapter("SELECT [id], [name] FROM [resource]", ConfigurationManager.ConnectionStrings["DayPilot"].ConnectionString);
        DataTable dt = new DataTable();
        da.Fill(dt);

        foreach (DataRow r in dt.Rows)
        {
            string name = (string)r["name"];
            string id = Convert.ToString(r["id"]);

            DayPilotScheduler1.Resources.Add(name, id);
        }
    }
}
