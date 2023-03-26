using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalYearProject.User
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FeedbackSubmit(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText = $"insert into Feedback values('{fnameTb.Text}','{EmailTb.Text}','{MobTb.Text}','{service.Text}','{name.Text}','{rating.Text}','{feedback.Text}')";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            sqlCommand.ExecuteNonQuery();
            Label2.Text = "Feedback Submitted!!";
        }
    }
}