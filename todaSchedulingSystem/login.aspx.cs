using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace todaSchedulingSystem
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("data source=DESKTOP-QNBBEUU\\SQLEXPRESS; initial catalog=dbTodaSchedulingSystem; integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Response.Redirect("dashboard.aspx");
            }
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

           
            try
            {
                lblnotif.Text = "";
                SqlDataAdapter sqlAdapter = new SqlDataAdapter("SELECT * FROM tblogin WHERE username='" + username + "' AND password = '" + password + "'", sqlCon);
                DataTable DT = new DataTable();
                sqlAdapter.Fill(DT);


                if (DT.Rows.Count > 0)
                {
                    Session["id"] = username;
                    lblnotif.Visible = true;
                    lblnotif.Text = "Youve Successfully Login ";
                    lblnotif.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("dashboard.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    lblnotif.Visible = true;
                    lblnotif.Text = "Invalid Username or Password!";
                    lblnotif.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch(Exception ex)
            {

            }
        }
    }
}