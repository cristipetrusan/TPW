using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine; // Obligatoriu!
using Oracle.ManagedDataAccess.Client;
using CrystalDecisions.Shared;

namespace WebApplication1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        OracleConnection cn;
        OracleDataAdapter da;
        DataSet ds;
        String strSQL;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == false)
            {
                Server.Transfer("Account/Login.aspx");
            }
            try
            {
                cn = new OracleConnection("DATA SOURCE=localhost;PASSWORD=STUDENT;PERSIST SECURITY INFO = True; USER ID = STUDENT");
                strSQL = "SELECT * FROM salar";
                da = new OracleDataAdapter(strSQL, cn);
                ds = new DataSet();
                da.Fill(ds, "salar");
                GridView1.DataSource = ds.Tables["salar"].DefaultView;
                GridView1.DataBind();

                ReportDocument raport = new ReportDocument();
                string cale = Server.MapPath("CrystalReport1.rpt");
                raport.Load(cale);
                raport.SetDataSource(ds.Tables["salar"]);
                CrystalReportViewer1.ReportSource = raport;

                DiskFileDestinationOptions fisier = new DiskFileDestinationOptions();
                raport.ExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
                raport.ExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
                fisier.DiskFileName = Server.MapPath($"{TextBox1.Text.Trim()}_{DateTime.Now.ToString("MMM_yyyy")}.pdf");
                raport.ExportOptions.DestinationOptions = fisier;
                raport.Export();

            }
            catch (Exception ex)
            {
                //Label1.Text = "error" + ex.ToString();
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                string reportName = string.IsNullOrEmpty(TextBox1.Text)
                    ? $"Report_{DateTime.Now.ToString("MMM_yyyy")}.pdf"
                    : $"{TextBox1.Text.Trim()}_{DateTime.Now.ToString("MMM_yyyy")}.pdf";

                // Update the report name in the Crystal Report Viewer
                ReportDocument raport = CrystalReportViewer1.ReportSource as ReportDocument;
                raport.ExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
                raport.ExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;

                DiskFileDestinationOptions fisier = new DiskFileDestinationOptions();
                fisier.DiskFileName = Server.MapPath(reportName);
                raport.ExportOptions.DestinationOptions = reportName;
                raport.Export();

                // Optionally, you can show a success message or perform other actions here.
                // Label1.Text = "Report saved successfully!";
            }
            catch (Exception ex)
            {
                // Handle exceptions, e.g., display an error message.
                // Label1.Text = "Error: " + ex.ToString();
            }
        }
    }
}