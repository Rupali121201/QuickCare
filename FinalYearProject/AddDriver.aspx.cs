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
    public partial class AddDriver : System.Web.UI.Page
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
        }

        protected void btn_click(object sender, EventArgs e)
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