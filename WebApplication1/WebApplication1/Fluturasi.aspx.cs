using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Data;
using Oracle.ManagedDataAccess.Client;
using CrystalDecisions.Shared;
namespace WebApplication1
{
    public partial class WebForm6 : System.Web.UI.Page
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
                strSQL = "SELECT * FROM salar";
                da = new OracleDataAdapter(strSQL, cn);
                ds = new DataSet();
                da.Fill(ds, "salar");
                //GridView1.DataSource = ds.Tables["salar"].DefaultView;
                //GridView1.DataBind();
                ReportDocument raport = new ReportDocument();
                string cale = Server.MapPath("CrystalReport2.rpt");
                raport.Load(cale);
                raport.SetDataSource(ds.Tables["salar"]);
                CrystalReportViewer1.ReportSource = raport;

                DiskFileDestinationOptions fisier = new DiskFileDestinationOptions();
                raport.ExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
                raport.ExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
                fisier.DiskFileName = Server.MapPath("fluturasi.pdf");
                raport.ExportOptions.DestinationOptions = fisier;
                raport.Export();

            }
            catch (Exception ex)
            {
                //Label1.Text = "error" + ex.ToString();
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            fillAll();
            if (User.Identity.IsAuthenticated == false)
            {
                Server.Transfer("Account/Login.aspx");
            }
        }

        //dupa nume
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cn = new OracleConnection("DATA SOURCE=localhost;PASSWORD=STUDENT;PERSIST SECURITY INFO = True; USER ID = STUDENT");
                strSQL = "SELECT * FROM salar WHERE nume='" + TextBox1.Text + "'";
                da = new OracleDataAdapter(strSQL, cn);
                ds = new DataSet();
                da.Fill(ds, "salar");
                //GridView1.DataSource = ds.Tables["salar"].DefaultView;
                //GridView1.DataBind();
                ReportDocument raport = new ReportDocument();
                string cale = Server.MapPath("CrystalReport2.rpt");
                raport.Load(cale);
                raport.SetDataSource(ds.Tables["salar"]);
                CrystalReportViewer1.ReportSource = raport;

                DiskFileDestinationOptions fisier = new DiskFileDestinationOptions();
                raport.ExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
                raport.ExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
                fisier.DiskFileName = Server.MapPath("fluturasi.pdf");
                raport.ExportOptions.DestinationOptions = fisier;
                raport.Export();

            }
            catch (Exception ex)
            {
                //Label1.Text = "error" + ex.ToString();
            }
        }

        //toti
        protected void Button2_Click(object sender, EventArgs e)
        {
            fillAll();
        }
    }
}