using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalYearProject.User
{
    public partial class RequestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         if(!IsPostBack)
            {

          
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();

            string sqlcommandtext = $"select ar.status as status,ar.bookingid as [booking id],ar.name as name,ar.email as email,ar.pickupdate as Date,dd.driverid as [driver id],ar.driver_name as [driver name],dd.mobileno as [mob no] from approvedrequest ar join driverdetails dd on ar.driverid = dd.driverid where ar.email='{(string)Session["UserName"]}'";
            SqlCommand sqlcommand = new SqlCommand(sqlcommandtext, sqlConnection);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlcommand);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
         


            string sqlCommandText2 = $"SELECT bm.BookingId, UserName, MechanicName, Shop, City, MobNo FROM BookingMechanic bm WHERE bm.UserName='{(string)Session["UserName"]}'";
            SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection);
            SqlDataAdapter adapter2 = new SqlDataAdapter(sqlCommand2);
            DataSet ds2 = new DataSet();
            adapter2.Fill(ds2);

            // Add a new column to the DataSet to hold the WhatsApp link
            //ds2.Tables[0].Columns.Add("WhatsAppLink", typeof(string));

            //foreach (DataRow row in ds2.Tables[0].Rows)
            //{
            //    // Retrieve the 'MobNo' value from the row
            //    string mobNo = row["MobNo"].ToString();

            //    // Generate the WhatsApp link
            //    string formattedMobNo = FormatPhoneNumber(mobNo);
            //    string whatsappLink = $"https://wa.me/{formattedMobNo}";

            //    // Set the WhatsApp link in the 'WhatsAppLink' column of the current row
            //    row["WhatsAppLink"] = whatsappLink;
            //}

            GridView2.DataSource = ds2;
            GridView2.DataBind();




        }
        }
        protected string GetWhatsAppLink(object mobNo)
        {
            string phoneNumber = mobNo.ToString();
            string formattedNumber = FormatPhoneNumber(phoneNumber);
            string whatsappLink = $"https://wa.me/{formattedNumber}";
            return whatsappLink;
        }

        protected string FormatPhoneNumber(string phoneNumber)
        {
            return phoneNumber;
        }
    }
}