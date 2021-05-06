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
public partial class Admin_search_fee : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["school"].ConnectionString);
    TextBox payment;
    TextBox balance;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            batchddl();
            //gridshow();
            //blank();
        }
    }

    public void batchddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from batch_tbl", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        batch_ddl.DataSource = dt;
        batch_ddl.DataTextField = "batch";
        batch_ddl.DataValueField = "batch_id";
        batch_ddl.DataBind();
        batch_ddl.Items.Insert(0, new ListItem("Select Batch", "0"));
    }

    protected void batch_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        classddl();
    }

    public void classddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from class_info where batch='"+batch_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        class_ddl.DataSource = dt;
        class_ddl.DataTextField = "class_name";
        class_ddl.DataValueField = "class_id";
        class_ddl.DataBind();
        class_ddl.Items.Insert(0, new ListItem("Select Class", "0"));
    }

    public void streamddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select distinct stream from studentinfo where batch='" + batch_ddl.SelectedItem.ToString() + "' and class='"+class_ddl.SelectedItem.ToString()+"' and section='"+section_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        stream_ddl.DataSource = dt;
        stream_ddl.DataTextField = "stream";
        stream_ddl.DataBind();
        stream_ddl.Items.Insert(0, new ListItem("Select Stream", "0"));
    }

    protected void class_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from section where batch='"+batch_ddl.SelectedItem.ToString()+"' and class='" + class_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        section_ddl.DataSource = dt;
        section_ddl.DataTextField = "section_name";
        section_ddl.DataValueField = "section_id";
        section_ddl.DataBind();
        section_ddl.Items.Insert(0, new ListItem("Select Section", "0"));
    }

    protected void section_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        streamddl();
    }
    public void studentinfo()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from studentinfo where batch='" + batch_ddl.SelectedItem.ToString() + "'and class='" + class_ddl.SelectedItem.ToString() + "'and section='" + section_ddl.SelectedItem.ToString() + "' and  stream='" + stream_ddl.SelectedItem.ToString() + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView4.DataSource = dt;
        GridView4.DataBind();
    }
    public void addfeeinfo()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from add_fee where batch='" + batch_ddl.SelectedItem.ToString() + "'and class='" + class_ddl.SelectedItem.ToString() + "'and section='" + section_ddl.SelectedItem.ToString() + "' and  stream='" + stream_ddl.SelectedItem.ToString() + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView5.DataSource = dt;
        GridView5.DataBind();
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        if (class_ddl.SelectedItem.ToString() != "Nothing Selected" && section_ddl.SelectedItem.ToString() != "Nothing Selected")
        {
            SqlCommand cmd = new SqlCommand("select * from altter_fee_show where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and batch='"+batch_ddl.SelectedItem.ToString()+"' and stream='"+stream_ddl.SelectedItem.ToString()+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                Panel2.Visible = true;
                Panel1.Visible = false;
                
                SqlDataAdapter da1 = new SqlDataAdapter("select distinct student_name,roll_no,father_name,mother_name,class,section,date,fee,feetype,payment,balance,status,batch,pk_id from altter_fee_show where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and batch='" + batch_ddl.SelectedItem.ToString() + "' and stream='" + stream_ddl.SelectedItem.ToString() + "'", con);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                GridView2.DataSource = dt1;
                GridView2.DataBind();
            }
            else
            {
                dr.Close();
                Panel1.Visible = false;
                Panel2.Visible = true;
                studentinfo();
                addfeeinfo();
                foreach (GridViewRow row in GridView4.Rows)
                {
                    Label name = (Label)row.FindControl("lbl_sname");
                    Label roll = (Label)row.FindControl("lbl_roll");
                    Label father = (Label)row.FindControl("lbl_faname");
                    Label mother = (Label)row.FindControl("lbl_moname");
                    foreach (GridViewRow grd in GridView5.Rows)
                    {
                        Label batch = (Label)grd.FindControl("lbl_batch");
                        Label clas = (Label)grd.FindControl("lbl_class");
                        Label section = (Label)grd.FindControl("lbl_section");
                        Label stream = (Label)grd.FindControl("lbl_stream");
                        Label date = (Label)grd.FindControl("lbl_date");
                        Label fee = (Label)grd.FindControl("lbl_fee");
                        Label feetype = (Label)grd.FindControl("lbl_feetype");
                       

                        SqlCommand cmd1 = new SqlCommand("insert into altter_fee_show values('"+batch.Text+"','"+stream.Text+"','"+name.Text+"','"+roll.Text+"','"+father.Text+"','"+mother.Text+"','"+clas.Text+"','"+section.Text+"','"+date.Text+"','"+fee.Text+"','"+feetype.Text+"','0','0','')",con);
                        cmd1.ExecuteNonQuery();
                    }
                }

                SqlDataAdapter da = new SqlDataAdapter("select distinct pk_id,student_name,roll_no,father_name,mother_name,class,section,date,fee,feetype,batch,stream,payment,balance,status from altter_fee_show where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and batch='" + batch_ddl.SelectedItem.ToString() + "' and stream='" + stream_ddl.SelectedItem.ToString() + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
                foreach (GridViewRow rrr in GridView2.Rows)
                {
                    Label name = (Label)rrr.FindControl("lbl_sname1");
                    Label roll = (Label)rrr.FindControl("lbl_roll1");
                    Label fname = (Label)rrr.FindControl("lbl_faname1");
                    Label moname = (Label)rrr.FindControl("lbl_moname1");
                    Label clas = (Label)rrr.FindControl("lbl_class1");
                    Label section = (Label)rrr.FindControl("lbl_section1");
                    Label date = (Label)rrr.FindControl("lbl_date1");
                    Label fee = (Label)rrr.FindControl("lbl_fee1");
                    Label feetype = (Label)rrr.FindControl("lbl_feetype1");
                    Label payment = (Label)rrr.FindControl("lbl_payment1");
                    Label balance = (Label)rrr.FindControl("lbl_balance1");
                    SqlCommand com = new SqlCommand("Select * from add_fee where class='" + clas.Text + "' and section='" + section.Text + "'and feetype='" + feetype.Text + "' and date='" + date.Text + "' and fee='" + fee.Text + "'", con);
                    com.ExecuteNonQuery();
                    SqlDataReader dr3 = com.ExecuteReader();
                    if (dr3.Read())
                    {
                        Label_feeid.Text = dr3["pk_id"].ToString();
                        dr3.Close();
                    }
                    DateTime date1 = DateTime.Now;
                    string a = date1.Day.ToString();
                    if (Convert.ToInt32(a) > 10)
                    {
                        fee.Text = (Convert.ToInt32(fee.Text) + 50).ToString();
                        dr3.Close();
                        SqlCommand com1 = new SqlCommand("update add_fee set fee='" + fee.Text + "' where pk_id='" + Label_feeid.Text + "' ", con);
                        com1.ExecuteNonQuery();
                    }
                }


            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "test", "alert('Please Select Class and Section!!!!');", true);
        }
        con.Close();
    }

    protected void btn_edit_Click(object sender, EventArgs e)
    {
        //main_div.Style.Add("background-color", "black");
        GridView2.Visible = true;
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label name = (Label)row.FindControl("lbl_sname");
        Label roll = (Label)row.FindControl("lbl_roll");
        Label fname = (Label)row.FindControl("lbl_faname");
        Label moname = (Label)row.FindControl("lbl_moname");
        Label clas = (Label)row.FindControl("lbl_class");
        Label section = (Label)row.FindControl("lbl_section");
        Label date = (Label)row.FindControl("lbl_date");
        Label fee = (Label)row.FindControl("lbl_fee");
        Label feetype = (Label)row.FindControl("lbl_feetype");
        payment = (TextBox)row.FindControl("payment_txt");
        balance = (TextBox)row.FindControl("balance_txt");
        Button paid = (Button)row.FindControl("Button1");
        if (fee.Text == payment.Text)
        {
            paid.Text = "paid";
            paid.Style.Add("color","green");
            paid.Style.Add("width","60px");
        }
        else
        {
            paid.Text = "pending";
            paid.Style.Add("color", "red");
            paid.Style.Add("width", "60px");
        }
        con.Open();
        SqlCommand cmd3 = new SqlCommand("select * from altter_fee_show where roll_no='" + roll.Text + "' and class='" + clas.Text + "' and section='" + section.Text + "' and feetype='" + feetype.Text + "'", con);
        SqlDataReader dsr = cmd3.ExecuteReader();
        if (dsr.Read())
        {
            payment.Text = dsr["payment"].ToString();
            balance.Text = dsr["balance"].ToString();
        }
        dsr.Close();

        foreach (GridViewRow rows in GridView1.Rows)
        {
            LinkButton lnk1 = (LinkButton)sender;
            GridViewRow row1 = (GridViewRow)lnk.NamingContainer;
            Label name1 = (Label)rows.FindControl("lbl_sname");
            Label roll1= (Label)rows.FindControl("lbl_roll");
            Label fname1 = (Label)rows.FindControl("lbl_faname");
            Label moname1 = (Label)rows.FindControl("lbl_moname");
            Label clas1 = (Label)rows.FindControl("lbl_class");
            Label section1 = (Label)rows.FindControl("lbl_section");
            Label date1 = (Label)rows.FindControl("lbl_date");
            Label fee1 = (Label)rows.FindControl("lbl_fee");
            Label batch = (Label)rows.FindControl("lbl_batch");
            Label stream = (Label)rows.FindControl("lbl_stream");
            Label feetype1 = (Label)rows.FindControl("lbl_feetype");
            TextBox Pay = (TextBox)rows.FindControl("payment_txt");
            TextBox bal = (TextBox)rows.FindControl("balance_txt");
            Button paid1 = (Button)rows.FindControl("Button1");
            if (fee1.Text == Pay.Text)
            {
                paid1.Text = "paid";
                paid1.Style.Add("color", "green");
                paid1.Style.Add("width", "60px");
            }
            else
            {
                paid1.Text = "pending";
                paid1.Style.Add("color", "red");
                paid1.Style.Add("width", "60px");
            }
            SqlCommand cmd1 = new SqlCommand("select * from altter_fee_show where roll_no='" + roll1.Text + "' and batch='"+batch.Text+"' and class='" + clas1.Text + "' and section='" + section1.Text + "' and stream='"+stream.Text+"' and feetype='" + feetype1.Text + "'", con);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                dr1.Close();
                SqlCommand cmd2 = new SqlCommand("update altter_fee_show set student_name='" + name1.Text + "',roll_no='" + roll1.Text + "',father_name='" + fname1.Text + "',mother_name='" + moname1.Text + "',class='" + clas1.Text + "',section='" + section1.Text + "',date='" + date1.Text + "',fee='" + fee1.Text + "',feetype='" + feetype1.Text + "',payment='" + Pay.Text + "',balance='" + bal.Text + "',status='" + paid1.Text + "' where roll_no='" + roll1.Text + "' and class='" + clas1.Text + "' and section='" + section1.Text + "' and feetype='" + feetype1.Text + "'", con);
                cmd2.ExecuteNonQuery();

            }
            else
            {
                dr1.Close();
                SqlCommand cmd = new SqlCommand("insert into altter_fee_show values('" + batch.Text + "','" + stream.Text + "','" + name1.Text + "','" + roll1.Text + "','" + fname1.Text + "','" + moname1.Text + "','" + clas1.Text + "','" + section1.Text + "','" + date1.Text + "','" + fee1.Text + "','" + feetype1.Text + "','" + Pay.Text + "','" + bal.Text + "','" + paid.Text + "')", con);
                cmd.ExecuteNonQuery();
            }
        }

        SqlDataAdapter da2 = new SqlDataAdapter("select distinct student_name,roll_no,father_name,mother_name,class,section,date,fee,feetype,payment,balance,status,batch,pk_id from altter_fee_show where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and batch='" + batch_ddl.SelectedItem.ToString() + "' and stream='" + stream_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt2 = new DataTable();
        da2.Fill(dt2);
        GridView2.DataSource = dt2;
        GridView2.DataBind();
        Panel2.Visible = true;
        Panel1.Visible = false;
        Panel3.Visible = false;
        con.Close();
    }

    protected void btn_edit1_Click(object sender, EventArgs e)
    {
        //main_div.Style.Add("background-color", "black");
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label name1 = (Label)row.FindControl("lbl_sname1");
        Label roll1 = (Label)row.FindControl("lbl_roll1");
        Label fname1 = (Label)row.FindControl("lbl_faname1");
        Label moname1 = (Label)row.FindControl("lbl_moname1");
        Label clas1 = (Label)row.FindControl("lbl_class1");
        Label section1 = (Label)row.FindControl("lbl_section1");
        Label date1 = (Label)row.FindControl("lbl_date1");
        Label fee1 = (Label)row.FindControl("lbl_fee1");
        Label feetype1 = (Label)row.FindControl("lbl_feetype1");
        Label payment1 = (Label)row.FindControl("lbl_payment1");
        Label balance1 = (Label)row.FindControl("lbl_balance1");
        Button paid1 = (Button)row.FindControl("Button11");


        SqlCommand com = new SqlCommand("select * from add_fee where class='"+ class_ddl.SelectedItem.ToString() +"' and section='"+ section_ddl.SelectedItem.ToString() +"' and batch='"+batch_ddl.SelectedItem.ToString()+"' and stream='"+stream_ddl.SelectedItem.ToString()+"'", con);
        SqlDataReader ddr = com.ExecuteReader();
        if (ddr.Read())
        {
            lbl_fee.Text = ddr["fee"].ToString();
            lbl_feedate.Text = ddr["date"].ToString();
        }
        ddr.Close();
           
            SqlCommand cmd = new SqlCommand("update altter_fee_show set fee='" + fee1.Text + "' where roll_no='" + roll1.Text + "' and class='" + clas1.Text + "' and section='" + section1.Text + "' and feetype='" + feetype1.Text + "'", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter("select * from altter_fee_show where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            date_id.Visible = false;
            con.Close();
            
    }
    protected void btn_edit2_Click(object sender, EventArgs e)
    {
        //main_div.Style.Add("background-color", "black");
        con.Open();
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.NamingContainer;
        Label name2 = (Label)row.FindControl("lbl_sname2");
        Label roll2 = (Label)row.FindControl("lbl_roll2");
        Label fname2 = (Label)row.FindControl("lbl_faname2");
        Label moname2 = (Label)row.FindControl("lbl_moname2");
        Label clas2 = (Label)row.FindControl("lbl_class2");
        Label section2 = (Label)row.FindControl("lbl_section2");
        Label date2 = (Label)row.FindControl("lbl_date2");
        TextBox fee2 = (TextBox)row.FindControl("lbl_fee2");
        Label feetype2 = (Label)row.FindControl("lbl_feetype2");
        TextBox payment2 = (TextBox)row.FindControl("payment2_txt");
        TextBox balance2 = (TextBox)row.FindControl("balance2_txt");
        Button paid2 = (Button)row.FindControl("Button12");

        
        

        SqlCommand cmd = new SqlCommand("update altter_fee_show set student_name='" + name2.Text + "',roll_no='" + roll2.Text + "',father_name='" + fname2.Text + "',mother_name='" + moname2.Text + "',class='" + clas2.Text + "',section='" + section2.Text + "',date='" + date2.Text + "',fee='" + fee2.Text + "',feetype='" + feetype2.Text + "',payment='" + payment2.Text + "',balance='" + balance2.Text + "',status='" + paid2.Text + "' where roll_no='" + roll2.Text + "' and class='" + clas2.Text + "' and section='" + section2.Text + "' and feetype='" + feetype2.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter("select * from altter_fee_show where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and batch='" + batch_ddl.SelectedItem.ToString() + "' and stream='" + stream_ddl.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        con.Close();

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        con.Open();
        Button btnsubmit = (Button)sender;
        GridViewRow grd = (GridViewRow)btnsubmit.NamingContainer;
        Label id = (Label)grd.FindControl("Lbl_id2");
        TextBox fees = (TextBox)grd.FindControl("fee_text");
        TextBox pay = (TextBox)grd.FindControl("pay_txt");
        TextBox pay1 = (TextBox)grd.FindControl("pay1_txt");
        TextBox bal = (TextBox)grd.FindControl("bal_txt");
        Label status = (Label)grd.FindControl("lbl_status3");
        Label stuname = (Label)grd.FindControl("sname_lbl");
        Label rollno = (Label)grd.FindControl("roll_lbl");
        Label father = (Label)grd.FindControl("faname_lbl");
        Label mother = (Label)grd.FindControl("moname_lbl");
        Label clas = (Label)grd.FindControl("class_lbl");
        Label batch = (Label)grd.FindControl("batch_lbl");
        Label section = (Label)grd.FindControl("section_lbl");
        TextBox date = (TextBox)grd.FindControl("date_txt");
        Label feetype = (Label)grd.FindControl("feetype_lbl");
        //Label stuname = (Label)grd.FindControl("sname_lbl");
        pay.Text = (Convert.ToInt32(pay.Text) + Convert.ToInt32(pay1.Text)).ToString();
        if (bal.Text == "0")
        {
            status.Text = "Paid";
        }
        else
        {
            status.Text = "Pending";
        }
        
        SqlCommand cmd = new SqlCommand("update altter_fee_show set fee='"+fees.Text+"', payment='"+pay.Text+"', balance='"+bal.Text+"', status='"+status.Text+"' where pk_id='"+id.Text+"'", con);
        cmd.ExecuteNonQuery();
        DateTime currentdate = DateTime.Now;
        date.Text = currentdate.ToString("dd/MM/yyyy");
        pay.Text = (Convert.ToInt32(pay.Text) - Convert.ToInt32(pay1.Text)).ToString();
        SqlCommand cmmd = new SqlCommand("insert into fees_history values('"+stuname.Text+"','"+father.Text+"','"+mother.Text+"','"+rollno.Text+"','"+batch.Text+"','"+clas.Text+"','"+section.Text+"','"+DateTime.ParseExact(date.Text,"dd/MM/yyyy",CultureInfo.InvariantCulture)+"','"+fees.Text+"','"+feetype.Text+"','"+pay.Text+"','"+bal.Text+"','"+status.Text+"')", con);
        cmmd.ExecuteNonQuery();

        con.Close();
        SqlDataAdapter da = new SqlDataAdapter("select * from altter_fee_show where class='" + class_ddl.SelectedItem.ToString() + "' and section='" + section_ddl.SelectedItem.ToString() + "' and batch='"+batch_ddl.SelectedItem.ToString()+"' and stream='"+stream_ddl.SelectedItem.ToString()+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        date_id.Visible = false;
    }

    protected void pay_selectedChanged(object sender, EventArgs e)
    {
        TextBox btnsubmit = (TextBox)sender;
        GridViewRow grd = (GridViewRow)btnsubmit.NamingContainer;
        Label id = (Label)grd.FindControl("Lbl_id2");
        TextBox fees = (TextBox)grd.FindControl("fee_text");
        TextBox pay = (TextBox)grd.FindControl("pay_txt");
        TextBox pay1 = (TextBox)grd.FindControl("pay1_txt");
        TextBox bal = (TextBox)grd.FindControl("bal_txt");
        if (Convert.ToInt32(fees.Text) > Convert.ToInt32(pay.Text))
        {
            int totalpay = Convert.ToInt32(pay.Text) + Convert.ToInt32(pay1.Text);
            bal.Text = (Convert.ToInt32(fees.Text) - totalpay).ToString();
        }
        else
        {
            bal.Text = "0";
        }

        Label status = (Label)grd.FindControl("lbl_status3");
        if (bal.Text == "0")
        {
            status.Text = "Paid";
        }
        else
        {
            status.Text = "Pending";
        }
    }

    protected void payment_selectedChanged(object sender, EventArgs e)
    {
        TextBox text = (TextBox)sender;
        GridViewRow row = (GridViewRow)text.NamingContainer;
        Label l1 = (Label)row.FindControl("lbl_fee");
        TextBox txt1 = (TextBox)row.FindControl("payment_txt");
        TextBox txt2 = (TextBox)row.FindControl("balance_txt");
        Button paid = (Button)row.FindControl("Button1");
        Button pending = (Button)row.FindControl("Button2");
        int t1 = Convert.ToInt32(l1.Text);
        int t2 = Convert.ToInt32(txt1.Text);
        txt2.Text = (t1 - t2).ToString();
        if (txt2.Text == "0")
        {
            paid.Visible = true;
            pending.Visible = false;
        }
        else
        {
            paid.Visible = false;
            pending.Visible = true;
        }
    }

    protected void payment2_selectedChanged(object sender, EventArgs e)
    {
        TextBox text = (TextBox)sender;
        GridViewRow row = (GridViewRow)text.NamingContainer;
        TextBox l1 = (TextBox)row.FindControl("lbl_fee2");
        TextBox txt1 = (TextBox)row.FindControl("payment2_txt");
        TextBox txt2 = (TextBox)row.FindControl("balance2_txt");
        Button paid = (Button)row.FindControl("Button12");
        //Button pending = (Button)row.FindControl("Button2");
        int t1 = Convert.ToInt32(l1.Text);
        int t2 = Convert.ToInt32(txt1.Text);
        txt2.Text = (t1 - t2).ToString();
        if (txt2.Text == "0")
        {
            paid.Text = "Paid";
        }
        else
        {
            paid.Text = "Pending";
        }
    }
}