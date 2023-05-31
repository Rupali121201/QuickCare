using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalYearProject
{
    public partial class MechanicFinder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }
        protected void search_button(object sender, EventArgs e)
        {
            
            string selectedCity = locationDropdown.SelectedValue;
          
            // Call your desired function and pass the selectedCity value
            Matchcity(selectedCity);
            formPanel.Visible = true;
            //string userEmail = HttpContext.Current.User.Identity.Name;
            
         //   Label1.Text=(string)Session["Username"];
            //string userName = HttpContext.Current.User.Identity.GetUserName();
        }

        protected void OnSelectBooked(object sender, EventArgs e)
        {
            //id.Text = GridView1.SelectedRow.Cells[1].Text;
            fname.Text = mechanicsGrid.SelectedRow.Cells[2].Text;
            shop_textbox.Text = mechanicsGrid.SelectedRow.Cells[3].Text;
            city_textbox.Text= mechanicsGrid.SelectedRow.Cells[4].Text;
            mobile_textbox.Text = mechanicsGrid.SelectedRow.Cells[5].Text;
            email_textbox.Text = mechanicsGrid.SelectedRow.Cells[6].Text;
           
        }

        protected void Book_Mechanic(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText = $"insert into BookingMechanic(UserName ,MechanicName ,Shop ,City ,MobNo) values('{(string)Session["UserName"]}','{fname.Text}','{shop_textbox.Text}','{city_textbox.Text}','{mobile_textbox.Text}')";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();

            SqlConnection sqlConnection2 = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection2.Open();

            string sqlCommandText2 = $"select * from MECHANIC_INFO where Name='{fname.Text}' and city='{city_textbox.Text}'";
            SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection2);
            SqlDataReader sqlDataReader = sqlCommand2.ExecuteReader();
           
            if (sqlDataReader.Read())
            {
                Session["Mechanic_Name"] = sqlDataReader["Name"];
                Session["Shop"] = sqlDataReader["shop"];
                Session["emailid"] = sqlDataReader["email"];
                Session["mobile_number"] = sqlDataReader["phone"];
                //Label1.Text=(string)Session["mobile_number"];
            }
            Response.Redirect("User/RequestPage.aspx");
            //Label2.Text = "Driver Booked Successfully!!";
           

        }
        private void Matchcity(string city)
        {

            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText = $"SELECT MechanicId as mechanic_ID,Name,Shop,City,Phone as Phone_Number,email as Email_Address FROM MECHANIC_INFO WHERE city = @city ";
         

                SqlCommand command = new SqlCommand(sqlCommandText,sqlConnection);
                command.Parameters.AddWithValue("@City", city);

                //connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                mechanicsGrid.DataSource = reader;
                mechanicsGrid.DataBind();

                reader.Close();
            }

        }



    }
