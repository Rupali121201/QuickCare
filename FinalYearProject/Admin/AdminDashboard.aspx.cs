using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalYearProject.Admin
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();



            string sqlCommandText = $"select * from Mechanic_info";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            gv.DataSource = ds;
            gv.DataBind();

            Label2.Text = "Welcome  " + Session["UserName"];

            //string sqlCommandText2 = $"select * from Customerdetails";
            //SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection);
            //SqlDataAdapter adapter2 = new SqlDataAdapter(sqlCommand2);
            //DataSet ds2 = new DataSet();
            //adapter2.Fill(ds2);
            //gv2.DataSource = ds2;
            //gv2.DataBind();

        }

        protected void addmechanicClick(object sender, EventArgs e)
        {

            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();

            //if (Page.IsPostBack)
            //{

            string sqlCommandText = $"insert into Mechanic_info values('{rnumber.Text}','{shop.Text}','{city.Text}','{phone.Text}','{email.Text}')";
            // string sqlCommandText = $"insert into MechanicDetails(name,age,mnumber,experience,rating,rate)  select '{rnumber.Text}','{TextBox1.Text}','{TextBox2.Text}','{experience.Text}','{rate.Text}' from AllRooms where '{rnumber.Text}'=AllRooms.RoomNo";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            sqlCommand.ExecuteNonQuery();
            Label1.Text = "Saved Successfully!!";

            string sqlCommandText2 = $"select * from Mechanic_info";
            SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection);
            SqlDataAdapter adapter2 = new SqlDataAdapter(sqlCommand2);
            DataSet ds2 = new DataSet();
            adapter2.Fill(ds2);
            gv.DataSource = ds2;
            gv.DataBind();
        }

        protected void DeleteMechanic(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText4 = $"delete from Mechanic_info where mechanicId='{id.Text}'";
            SqlCommand sqlCommand4 = new SqlCommand(sqlCommandText4, sqlConnection);
            sqlCommand4.ExecuteNonQuery();
            Label1.Text = "Deleted Successfully!!";


            /*string sqlCommandText2 = $"select r.RoomNo,r.RoomType,r.RoomCategory,r.RoomCost,r.RoomStatus from CustomerDetails c JOIN RoomDetails r ON r.Id = c.id";*/
            string sqlCommandText5 = $"select * from Mechanic_info";
            SqlCommand sqlCommand5 = new SqlCommand(sqlCommandText5, sqlConnection);
            SqlDataAdapter adapter3 = new SqlDataAdapter(sqlCommand5);
            DataSet ds3 = new DataSet();
            adapter3.Fill(ds3);
            gv.DataSource = ds3;
            gv.DataBind();
        }

        protected void OnSelectBooked(object sender, EventArgs e)
        {
            id.Text = gv.SelectedRow.Cells[1].Text;
            rnumber.Text = gv.SelectedRow.Cells[2].Text;
            shop.Text = gv.SelectedRow.Cells[3].Text;
            city.Text = gv.SelectedRow.Cells[4].Text;
            phone.Text = gv.SelectedRow.Cells[5].Text;
            email.Text = gv.SelectedRow.Cells[6].Text;
          
        }
    }
}




            