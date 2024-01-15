using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Data;
using Oracle.ManagedDataAccess.Client;
using CrystalDecisions.Shared;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        OracleConnection cn;
        OracleDataAdapter da;
        DataSet ds;
        String strSQL;

        private void fillAll()
        {
            try
            {
                cn = new OracleConnection("DATA SOURCE=localhost;PASSWORD=STUDENT;PERSIST SECURITY INFO = True; USER ID = STUDENT");
                strSQL = "SELECT * FROM val_procentuale";
                da = new OracleDataAdapter(strSQL, cn);
                ds = new DataSet();
                da.Fill(ds, "val_procentuale");
                //GridView1.DataSource = ds.Tables["salar"].DefaultView;
                //GridView1.DataBind();
            }
            catch (Exception ex)
            {
                //Label1.Text = "error" + ex.ToString();
            }
            ReportDocument raport = new ReportDocument();
            string cale = Server.MapPath("CrystalReport2.rpt");
            raport.Load(cale);
            raport.SetDataSource(ds.Tables["val_procentuale"]);

            DiskFileDestinationOptions fisier = new DiskFileDestinationOptions();
            raport.ExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
            raport.ExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
            fisier.DiskFileName = Server.MapPath("fluturasi.pdf");
            raport.ExportOptions.DestinationOptions = fisier;
            raport.Export();

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == false)
            {
                Server.Transfer("Account/Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string enteredPassword = TextBox1.Text; // Get the entered password from the TextBox
                string hashedPassword = HashPassword(enteredPassword);
                cn = new OracleConnection("DATA SOURCE=localhost;PASSWORD=STUDENT;PERSIST SECURITY INFO=True;USER ID=STUDENT");
                strSQL = "SELECT COUNT(*) FROM val_procentuale WHERE parola = :hashedPassword";

                OracleCommand cmd = new OracleCommand(strSQL, cn);
                cmd.Parameters.Add(":hashedPassword", OracleDbType.Varchar2).Value = hashedPassword;

                cn.Open();

                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count > 0)
                {
                    // Password is correct, proceed with your report generation logic
                    // ...
                    Label2.Text = "OK ";
                    GridView1.Visible = true;
                }
                else
                {
                    // Password is incorrect, handle accordingly (display a message, redirect, etc.)
                    // ...
                    Label2.Text = "NOK " + hashedPassword;
                    GridView1.Visible = false;
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions as needed
                // Label1.Text = "error" + ex.ToString();
            }
            finally
            {
                cn.Close();
            }

        }

        // Function to hash the password using SHA-256
        private string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                // Compute hash from the password bytes
                byte[] hashedBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));

                // Convert the hashed bytes to a hexadecimal string
                StringBuilder stringBuilder = new StringBuilder();
                for (int i = 0; i < hashedBytes.Length; i++)
                {
                    stringBuilder.Append(hashedBytes[i].ToString("x2"));
                }

                return stringBuilder.ToString();
            }
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                // Handle update failure
                Label2.Text = "Error: Unable to update data. " + e.ToString();
                e.ExceptionHandled = true; // Mark the exception as handled
            }
            else
            {
                // Update successful
                Label2.Text = "Data updated successfully.";
            }
        }


    }
}