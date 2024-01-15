using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == false)
            {
                Server.Transfer("Account/Login.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //cauta
        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
        }
        //toti
 
        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;

        }
        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                // Handle update failure
                LabelMesaj.Text = "Error: Unable to update data. " + e.ToString();
                e.ExceptionHandled = true; // Mark the exception as handled
            }
            else
            {
                // Update successful
                LabelMesaj.Text = "Data updated successfully.";
            }
        }
    }
}