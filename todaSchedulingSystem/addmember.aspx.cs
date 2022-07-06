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
    public partial class addmember : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("data source=DESKTOP-QNBBEUU\\SQLEXPRESS; initial catalog=dbTodaSchedulingSystem; integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
            lblmemberid.Visible = false;

            
        }
        // insert data
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string fullname = txtbFullname.Text;
            string age = txtbAge.Text;
            string address = txtbAddress.Text;
            string contact = txtbContact.Text;
            string group = ddGroup.SelectedValue;
            string location = ddLocation.SelectedValue;
            string tricyclenumber = txtbTriNum.Text;

            sqlCon.Open();
            SqlCommand comm = new SqlCommand("insert into tbmembers values('" + fullname + "','" + age + "','" + address + "','" + contact + "','" + group + "','" + location + "','" + tricyclenumber + "')", sqlCon);
            comm.ExecuteNonQuery();
            sqlCon.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');",true);
            LoadRecord();

            //clear all field
            txtbFullname.Text = "";
            txtbAge.Text = "";
            txtbAddress.Text = "";
            txtbContact.Text = "";
            ddGroup.SelectedValue = "1";
            ddLocation.SelectedValue = "Palengke";
            txtbTriNum.Text = "";
        }
        //view data
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from tbmembers  ", sqlCon);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt =  new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        //update data
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string fullname = txtbFullname.Text;
            string age = txtbAge.Text;
            string address = txtbAddress.Text;
            string contact = txtbContact.Text;
            string group = ddGroup.SelectedValue;
            string location = ddLocation.SelectedValue;
            string tricyclenumber = txtbTriNum.Text;


            sqlCon.Open();
            SqlCommand comm = new SqlCommand("update tbmembers set fullname = '" + fullname + "',age = '" + age + "',address = '" + address + "',contact = '" + contact + "',membergroup = '" + group + "',location = '" + location + "',tricyclenumber = '" + tricyclenumber + "' where id = '" + lblmemberid.Text + "'", sqlCon);
            comm.ExecuteNonQuery();
            sqlCon.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();

            //clear all field
            txtbFullname.Text = "";
            txtbAge.Text = "";
            txtbAddress.Text = "";
            txtbContact.Text = "";
            ddGroup.SelectedValue = "1";
            ddLocation.SelectedValue = "Palengke";
            txtbTriNum.Text = "";
        }
        //Delete data
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string fullname = txtbFullname.Text;
            sqlCon.Open();
            SqlCommand comm = new SqlCommand("delete from tbmembers  where id = '" + lblmemberid.Text + "'", sqlCon);
            comm.ExecuteNonQuery();
            sqlCon.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deletetd');", true);
            LoadRecord();
          
            //clear all field
            txtbFullname.Text = "";
            txtbAge.Text = "";
            txtbAddress.Text = "";
            txtbContact.Text = "";
            ddGroup.SelectedValue = "1";
            ddLocation.SelectedValue = "Palengke";
            txtbTriNum.Text = "";
        }

        //selecting row
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string Tbid = GridView1.SelectedRow.Cells[1].Text;
            string Tbfullname = GridView1.SelectedRow.Cells[2].Text;
            string Tbage = GridView1.SelectedRow.Cells[3].Text;
            string Tbaddress = GridView1.SelectedRow.Cells[4].Text;
            string Tbcontact = GridView1.SelectedRow.Cells[5].Text;
            string Tbgroup = GridView1.SelectedRow.Cells[6].Text;
            string Tblocation = GridView1.SelectedRow.Cells[7].Text;
            string Tbtricyclenumber = GridView1.SelectedRow.Cells[8].Text;
            lblmemberid.Text = Tbid;
            txtbFullname.Text = Tbfullname;
            txtbAge.Text = Tbage;
            txtbAddress.Text = Tbaddress;
            txtbContact.Text = Tbcontact;
            ddGroup.SelectedValue = Tbgroup;
            ddLocation.SelectedValue = Tblocation;
            txtbTriNum.Text = Tbtricyclenumber;
        }


        protected void btnDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }

        protected void btnSchedule_Click1(object sender, EventArgs e)
        {
            Response.Redirect("schedule.aspx");
        }
    }
}