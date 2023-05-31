using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalYearProject
{
    public partial class UpdateDriver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
         


            string sqlCommandText = $"select * from DriverDetails";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            Label1.Text = "Welcome  " + Session["UserName"];
        }

        protected void OnSelectBooked(object sender, EventArgs e)
        {
            id.Text = GridView1.SelectedRow.Cells[1].Text;
            fnameTb.Text = GridView1.SelectedRow.Cells[2].Text;
            MobTb.Text = GridView1.SelectedRow.Cells[3].Text;
            EmailTb.Text = GridView1.SelectedRow.Cells[4].Text;
            address.Text = GridView1.SelectedRow.Cells[5].Text;
            password.Text = GridView1.SelectedRow.Cells[6].Text;
        }

        protected void UpdateDetails(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText2 = $"update DriverDetails set driverid='{id.Text}',name='{fnameTb.Text}',mobileno='{MobTb.Text}',email='{EmailTb.Text}',address='{address.Text}',password='{password.Text}' where driverid='{id.Text}'";
            SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection);
            sqlCommand2.ExecuteNonQuery();
            // Changesss
            //string sqlCommandText9 = $"delete from Booking where roomnumber='{rnumber.Text}'";
            //SqlCommand sqlCommand9 = new SqlCommand(sqlCommandText9, sqlConnection);
            //sqlCommand9.ExecuteNonQuery();

            string sqlCommandText3 = $"select * from DriverDetails";
            SqlCommand sqlCommand3 = new SqlCommand(sqlCommandText3, sqlConnection);
            SqlDataAdapter adapter2 = new SqlDataAdapter(sqlCommand3);
            DataSet ds2 = new DataSet();
            adapter2.Fill(ds2);
            GridView1.DataSource = ds2;
            GridView1.DataBind();



        }

        protected void DeleteDetails(object sender, EventArgs e)
        {

            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText4 = $"delete from DriverDetails where driverid='{id.Text}'";
            SqlCommand sqlCommand4 = new SqlCommand(sqlCommandText4, sqlConnection);
            sqlCommand4.ExecuteNonQuery();
            Label2.Text = "Deleted Successfully!!";


            /*string sqlCommandText2 = $"select r.RoomNo,r.RoomType,r.RoomCategory,r.RoomCost,r.RoomStatus from CustomerDetails c JOIN RoomDetails r ON r.Id = c.id";*/
            string sqlCommandText5 = $"select * from DriverDetails";
            SqlCommand sqlCommand5 = new SqlCommand(sqlCommandText5, sqlConnection);
            SqlDataAdapter adapter3 = new SqlDataAdapter(sqlCommand5);
            DataSet ds3 = new DataSet();
            adapter3.Fill(ds3);
            GridView1.DataSource = ds3;
            GridView1.DataBind();


        }

        protected void AddDetails(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText = $"insert into DriverDetails values('{id.Text}','{fnameTb.Text}','{MobTb.Text}','{EmailTb.Text}','{address.Text}','{password.Text}')";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            sqlCommand.ExecuteNonQuery();
            Label2.Text = "Driver Added Successfully!!";

            string sqlCommandText2 = $"select * from DriverDetails";
            SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection);
            SqlDataAdapter adapter2 = new SqlDataAdapter(sqlCommand2);
            DataSet ds2 = new DataSet();
            adapter2.Fill(ds2);
            GridView1.DataSource = ds2;
            GridView1.DataBind();

        }
    }
}