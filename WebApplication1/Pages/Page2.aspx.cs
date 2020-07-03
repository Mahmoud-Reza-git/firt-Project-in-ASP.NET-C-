using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;




namespace WebApplication1.Pages
{

    public partial class Page2 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button_Click(object sender, EventArgs e)
        {          

            Session.Add("vorname", txtvorname.Text);
            Session.Add("nachname", txtnachname.Text);
            Session.Add("tel", txttel.Text);
            Session.Add("fax", txtfax.Text);
            Session.Add("email", txtemail.Text);
            Session.Add("adresse", txtadresse.Text);
            Session.Add("wohnort", txtwohnort.Text);
            Session.Add("plz", txtplz.Text);
            Response.Redirect("Page3.aspx");
        }


        



    }
}