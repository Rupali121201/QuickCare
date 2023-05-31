using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace FinalYearProject.User
{
    public partial class BookingDriver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DriverRequest(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText = $"insert into BookingDriver(name,email,mobile,location,destination,PickUpdate,PickUptime) values('{fnameTb.Text}','{EmailTb.Text}','{MobTb.Text}','{location.Text}','{destination.Text}','{date.Text}','{time.Text}')";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            sqlCommand.ExecuteNonQuery();
            Label2.Text = "Driver Booked Successfully!!";
            //(string)Session["UserName"];
            // DisplayAlert("Booked Successfully");
        }

        //protected void DisplayAlert(string msg)
        //{
        //    //ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", string.Format("alert(\"{0}\");", msg), true);
        //    MessageBox.Show("Booked");
        //}
    }
}