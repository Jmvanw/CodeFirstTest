using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;

namespace CodeFirstTest
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter da;

        public string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["BusinessDBContext"].ConnectionString;
        }

        public void ExecuteInsert(string name, string type, string state, string phone)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();

            string query = "INSERT INTO BusDatabaseFinal (BusName, BusType, Contact) VALUES (TxtBusName.Text, TxtBusType.Text, TxtBusState.Text + TxtBusPhone.Text)";
            
            conn.Close();
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=.;Initial Catalog=BusDatabaseFinal;Integrated Security=True");
            conn.Open();
            cmd = new SqlCommand("INSERT INTO Businesses (BusName, BusType, BusState, BusPhone) VALUES(@BusName, @BusType, @BusState, @BusPhone)", conn);
            cmd.Parameters.AddWithValue("@BusName", TxtBusName.Text);
            cmd.Parameters.AddWithValue("@BusType", TxtBusType.Text);
            cmd.Parameters.AddWithValue("@BusState", TxtBusState.Text);
            cmd.Parameters.AddWithValue("@BusPhone", TxtBusPhone.Text);
            cmd.ExecuteNonQuery();


            String name = TxtBusName.Text;
            String type = TxtBusType.Text;
            String state = TxtBusState.Text;
            String phone = TxtBusPhone.Text;

            ExecuteInsert(name,
                           type,
                           state,
                           phone
                           );
            Response.Write("Record was successfully added!");

        }
    }
}