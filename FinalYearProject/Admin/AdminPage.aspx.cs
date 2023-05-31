using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace FinalYearProject
{
    public partial class AdminPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();

            string sqlCommandText = $"select bookingId as ID,name,email,mobile,location,destination,SUBSTRING(cast(pickupdate as varchar),1,10) as pickupdate, pickuptime from BookingDriver ";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            string sqlCommandText2 = $"	select cd.id as UserId,cd.fullname as UserName,bm.* from BookingMechanic bm JOIN CustomerDetails cd on bm.UserName = cd.emailaddress";
            SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection);
            SqlDataAdapter adapter2 = new SqlDataAdapter(sqlCommand2);
            DataSet ds2 = new DataSet();
            adapter2.Fill(ds2);
            GridView2.DataSource = ds2;
            GridView2.DataBind();

            Label2.Text = "Welcome  " + (string)Session["UserName"];

            //String sqlCommandText1 = $"select * from DriverDetails";
            //SqlCommand sqlCommand1 = new SqlCommand(sqlCommandText1, sqlConnection);
            //driverdropdown.DataSource = sqlCommand1.ExecuteReader();
            //driverdropdown.DataTextField = "name";
            //driverdropdown.DataValueField = "driverid";
            //driverdropdown.DataBind();
            //sqlConnection.Close();


            //SqlConnection sqlConnection2 = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            //sqlConnection2.Open();
            //String sqlCommandText2 = $"select * from DriverDetails";
            //SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection2);
            //driveriddropdown.DataSource = sqlCommand2.ExecuteReader();
            //driveriddropdown.DataTextField = "driverid";
            //driveriddropdown.DataValueField = "name";
            //driveriddropdown.DataBind();



        }

        protected void OnSelectBooked(object sender, EventArgs e)
        {
            id.Text= GridView1.SelectedRow.Cells[1].Text;
            fnameTb.Text = GridView1.SelectedRow.Cells[2].Text;
            EmailTb.Text = GridView1.SelectedRow.Cells[3].Text;
            MobTb.Text = GridView1.SelectedRow.Cells[4].Text;
            location.Text= GridView1.SelectedRow.Cells[5].Text;
            destination.Text = GridView1.SelectedRow.Cells[6].Text;
            date.Text = GridView1.SelectedRow.Cells[7].Text;
            time.Text = GridView1.SelectedRow.Cells[8].Text;

        }

        protected void RejectClick(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText = $"delete from BookingDriver where bookingId='{id.Text}'";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            sqlCommand.ExecuteNonQuery();
           // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Booking is Rejected');", true);
             Label1.Text = "Deleted Successfully!!";
            Page_Load(sender,e);
        }

        protected void ApprovedClick(object sender, EventArgs e)
        {

            Label1.Text = "Driver has been approved";
           SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText = $"insert into ApprovedRequest values('{id.Text}','{fnameTb.Text}','{EmailTb.Text}','{MobTb.Text}','{location.Text}','{destination.Text}','{date.Text}','{time.Text}','{driverdropdown.Text}','{driveriddropdown.Text}','{status.Text}')";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            sqlCommand.ExecuteNonQuery();
           
        }
    }
}