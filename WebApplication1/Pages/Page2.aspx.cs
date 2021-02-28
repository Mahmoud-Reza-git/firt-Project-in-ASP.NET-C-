using System;




namespace WebApplication1.Pages
{

    public partial class Page2 : System.Web.UI.Page
    {      

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {   
            if(ValidateTelFax(txttel.Text.ToString() , txtfax.Text.ToString()))
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
        private bool ValidateTelFax(string tel , string fax)
        {
            // Check for invalid userName.
            // userName must not be null and must be between 1 and 15 characters.
            if ((null == tel) || (0 == tel.Length) || (7>tel.Length) || (17<tel.Length))
            {
                lbltelerror.Visible = true;
                return false;
            }
            if ((null == fax) || (0 == fax.Length) || (7 > fax.Length) || (17 < fax.Length))
            {
                lblfaxerror.Visible = true;
                return false;
            }

            return true;

        }
    }
}