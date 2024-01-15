using Oracle.ManagedDataAccess.Client;
using System;
using System.Data;
using OracleCommand = Oracle.ManagedDataAccess.Client.OracleCommand;
using OracleConnection = Oracle.ManagedDataAccess.Client.OracleConnection;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        private OracleConnection connection;
        private OracleDataAdapter adapter;
        private DataSet dataSet;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Set your connection string
            string connectionString = "Data Source=localhost;User Id=STUDENT;Password=STUDENT;";

            // Create the connection
            connection = new OracleConnection(connectionString);
            if (User.Identity.IsAuthenticated == false)
            {
                Server.Transfer("Account/Login.aspx");
            }
        }

        protected void ButtonCauta_Click(object sender, EventArgs e)
        {
            // Use parameters to prevent SQL injection
            string query = "SELECT COUNT(*) FROM salar WHERE Nume = :nume AND Prenume = :prenume";

            using (OracleCommand command = new OracleCommand(query, connection))
            {
                command.Parameters.Add("nume", OracleDbType.Varchar2).Value = TextBoxNume.Text;
                command.Parameters.Add("prenume", OracleDbType.Varchar2).Value = TextBoxPrenume.Text;

                try
                {
                    connection.Open();
                    int count = Convert.ToInt32(command.ExecuteScalar());

                    // If a record is found, enable the buttonSterge
                    if (count > 0)
                    {
                        //ButtonSterge.Enabled = true;
                    }
                    else
                    {
                        Label3.Text = "Angajatul nu a fost gasit!";
                        //ButtonSterge.Enabled = false;
                    }
                }
                catch (Exception ex)
                {
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_OnRowDeleted(object sender, EventArgs e)
        {
            Label3.Text = "Angajatul a fost sters cu succes!";
        }

    }
}