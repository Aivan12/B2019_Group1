using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;

namespace todaSchedulingSystem
{
    public partial class schedule : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("data source=DESKTOP-QNBBEUU\\SQLEXPRESS; initial catalog=dbTodaSchedulingSystem; integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
            Calendar1.SelectedDate = DateTime.Now;
           
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
          
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {



            String x =  Calendar1.SelectedDate.DayOfWeek.ToString();

            switch (x)
            {
                case "Monday":
                    // code block
                 
                    showData("SELECT id,fullname,membergroup,location,tricyclenumber From tbmembers Where membergroup = 1");

                    break;
                case "Tuesday":
                    // code block
                    showData("SELECT id,fullname,membergroup,location,tricyclenumber From tbmembers Where membergroup = 2");

                    break;

                case "Wednesday":
                    // code block
                    showData("SELECT id,fullname,membergroup,location,tricyclenumber From tbmembers Where membergroup = 1");
                    break;

                case "Thursday":
                    // code block
                    showData("SELECT id,fullname,membergroup,location,tricyclenumber From tbmembers Where membergroup = 2");
                    break;
                case "Friday":
                    // code block
                    showData("SELECT id,fullname,membergroup,location,tricyclenumber From tbmembers Where membergroup = 1");
                    break;
                case "Saturday":
                    // code block
                    showData("SELECT id,fullname,membergroup,location,tricyclenumber From tbmembers Where membergroup = 2");
                    break;
                case "Sunday":
                    // code block
                    showData("SELECT id,fullname,membergroup,location,tricyclenumber From tbmembers Where membergroup = 1");
                    break;

                default:
                    // code block
                    break;
            }




        }

      protected  String showData(string com)
        {
            SqlCommand comm = new SqlCommand(com, sqlCon);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            Gvschedule.DataSource = dt;
            Gvschedule.DataBind();
            return com;
        }

        protected void btnDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }

        protected void btnAddmember_Click(object sender, EventArgs e)
        {
            Response.Redirect("addmember.aspx");
        }

        protected void btnExportSched_Click(object sender, EventArgs e)
        {
            string date = DateTime.Today.ToString("MM/dd/yyyy");
            Response.AddHeader("content-disposition", "attachment;filename=Schedule " + date + ".xls");
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);
                Gvschedule.AllowPaging = false;
                Gvschedule.RenderControl(hw);
                string style = @"<style>.textmode{mso-number-format:\@;}</style>";
                Response.Write(style);
                Response.Output.Write(sw);
                Response.Flush();
                Response.Clear();
                Response.End();
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
    }
}