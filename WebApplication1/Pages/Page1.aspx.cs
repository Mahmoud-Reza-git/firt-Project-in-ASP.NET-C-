using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

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
            string FilePath = Server.MapPath("hausordnung-2018-10-01-hp.pdf");
            WebClient user = new WebClient();
            Byte[] FillBuffer = user.DownloadData(FilePath);
            if (FillBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FillBuffer.Length.ToString());
                Response.BinaryWrite(FillBuffer);
            }
        }
    }
}