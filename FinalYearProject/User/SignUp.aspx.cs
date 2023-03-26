using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalYearProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp(object sender, EventArgs e)
        {

            SqlConnection sqlConnection = new SqlConnection(@"server=LAPTOP-2N1OBICQ\SQLEXPRESS;database=QuickCareDB;trusted_connection=yes");
            sqlConnection.Open();
            string sqlCommandText = $"insert into CustomerDetails values('{fnameTb.Text}','{MobTb.Text}','{EmailTb.Text}','{PasswordTb.Text}','{idproof.Text}','{GenderTb.Text}')";
            SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
            sqlCommand.ExecuteNonQuery();
            Label2.Text = "Signed Up Successfully!!";
        }
    }
}