using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace todaSchedulingSystem
{
    public partial class dashboard : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("data source=DESKTOP-QNBBEUU\\SQLEXPRESS; initial catalog=dbTodaSchedulingSystem; integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
                countData();
            } 

            if (Session["id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            txtbdate.Text = DateTime.Today.ToString("MM/dd/yyyy");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnSchedule_Click(object sender, EventArgs e)
        {
            Response.Redirect("schedule.aspx");
        }

        protected void btnAddmember_Click(object sender, EventArgs e)
        {
            Response.Redirect("addmember.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

        protected void btnDailyBoundry_Click(object sender, EventArgs e)
        {
            string memberId = txtbMemberid.Text;
            string payment = ddPayment.SelectedValue;
            string date = txtbdate.Text = DateTime.Today.ToString("MM/dd/yyyy");

            sqlCon.Open();
            SqlCommand comm = new SqlCommand("insert into tbdailyboundary(memberId,payment,date) values('" + memberId + "','" + payment + "','" + date + "')", sqlCon);
            comm.ExecuteNonQuery();
            sqlCon.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord();


        }
        //view data
        void LoadRecord()
        {
            string dateCheck = txtbdate.Text = DateTime.Today.ToString("MM/dd/yyyy");
            string x = "'" + dateCheck + "'";
            SqlCommand comm = new SqlCommand("select d.id,d.payment,d.date,m.fullname,m.tricyclenumber FROM tbdailyboundary d LEFT JOIN tbmembers m ON d.memberId = m.id WHERE d.date = "+x+"", sqlCon);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            gwDashboard.DataSource = dt;
            gwDashboard.DataBind();

        }

        //countdatarow
        void countData()
        {
            SqlCommand comm = new SqlCommand("select * from tbmembers ", sqlCon);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataSet ds = new DataSet();
            d.Fill(ds);
            lblTotalMember.Text = ds.Tables[0].Rows.Count.ToString();
        }

        protected void tbnExport_Click(object sender, EventArgs e)
        {
            string date = DateTime.Today.ToString("MM/dd/yyyy");
            string pathn = "dailyboundary " + date + "";

            //check if file exist
            if (!File.Exists(pathn))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('FILE NAME IS ALREADY EXISTS');", true);
            }
            else
            {
                Response.AddHeader("content-disposition", "attachment;filename=" + pathn + ".xls");
                Response.ContentType = "application/vnd.ms-excel";
                using (StringWriter sw = new StringWriter())
                {
                    HtmlTextWriter hw = new HtmlTextWriter(sw);
                    gwDashboard.AllowPaging = false;
                    gwDashboard.RenderControl(hw);
                    string style = @"<style>.textmode{mso-number-format:\@;}</style>";
                    Response.Write(style);
                    Response.Output.Write(sw);
                    Response.Flush();
                    Response.Clear();
                    Response.End();
                }
            }

            
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
    }
}