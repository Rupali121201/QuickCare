using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalYearProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            //SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            //sqlConnection.Open();
            //string sqlCommandText = $"select * from CustomerDetails where emailaddress='{EmailTb.Text}' and pwd='{password.Text}'";
            //SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            //SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            //if (sqlDataReader.Read())
            //{
            //    Session["UserName"] = sqlDataReader["emailaddress"];
            //    Response.Redirect("User/SignUp.aspx");
            //}
            //else
            //{
            //    Label1.Text = "Invalid UserName or Password";
            //}

        }

        protected void AdminClick(object sender, EventArgs e)
        {

            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText = $"select * from AdminDetails where email='{EmailTb.Text}' and pwd='{password.Text}'";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            if (sqlDataReader.Read())
            {
                Session["UserName"] = sqlDataReader["email"];
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                Label1.Text = "Invalid Admin";
            }
        }

        protected void UserClick(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText = $"select * from CustomerDetails where emailaddress='{EmailTb.Text}' and pwd='{password.Text}'";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            if (sqlDataReader.Read())
            {
                Session["UserName"] = sqlDataReader["emailaddress"];
                Response.Redirect("User/BookingDriver.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username or password";
            }
        }
    }
}