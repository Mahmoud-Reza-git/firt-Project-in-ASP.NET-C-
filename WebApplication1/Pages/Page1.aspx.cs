using System;
using System.Web.UI;

namespace WebApplication1.Pages
{

    public partial class Page1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Weiter_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {

                Response.Redirect("Page2.aspx");
            }
            else
            {
                //Alarm
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sie sollen erst die HausOrdnung und Datenschutzerklärung bestätigen')", true);
            }


        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("HausOrdnung.aspx");

        }
    }

}