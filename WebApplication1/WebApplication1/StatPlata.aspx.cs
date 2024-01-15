using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine; // Obligatoriu!
using Oracle.ManagedDataAccess.Client;

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

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                cn = new OracleConnection("DATA SOURCE=localhost;PASSWORD=STUDENT;PERSIST SECURITY INFO = True; USER ID = STUDENT");
                strSQL = "SELECT * FROM salar";
                da = new OracleDataAdapter(strSQL, cn);
                ds = new DataSet();
                da.Fill(ds, "salar");
                GridView1.DataSource = ds.Tables["salar"].DefaultView;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                //Label1.Text = "error" + ex.ToString();
            }
            ReportDocument raport = new ReportDocument();
            string cale = Server.MapPath("CrystalReport1.rpt");
            raport.Load(cale);
            raport.SetDataSource(ds.Tables["salar"]);
            CrystalReportViewer1.ReportSource = raport;
        }
    }
}