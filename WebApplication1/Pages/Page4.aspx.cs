using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace WebApplication1.Pages
{

    public partial class Page4 : System.Web.UI.Page
    {        

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime starttime = DateTime.Parse(Session["start"].ToString());
            DateTime endtime = DateTime.Parse(Session["end"].ToString());
            taxtvorname.Text = " " + Session["vorname"].ToString();
            txtnachname.Text = " "+ Session["nachname"].ToString();
            txttel.Text = " " + Session["tel"].ToString();
            txtfax.Text = " " + Session["fax"].ToString();
            txtemail.Text = " " + Session["email"].ToString();            
            txtstart.Text = " " + starttime.ToString("dd.MM.yyyy 'um' H:mm 'Uhr'");
            txtend.Text = " " + endtime.ToString("dd.MM.yyyy 'um' H:mm 'Uhr'");
            txtkurs.Text = " " + Session["kursname"].ToString();
            txtraum.Text = " " + Session["raum"].ToString();
        }

        private void InsertUser()
        {
            string ConnectionString = "data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905";
            SqlConnection cnn = new SqlConnection(ConnectionString);

            SqlCommand cmd = new SqlCommand("InsertUsers", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cnn.Open();
            cmd.Parameters.AddWithValue("@Vorname", taxtvorname.Text);
            cmd.Parameters.AddWithValue("@Nachname", txtnachname.Text);
            cmd.Parameters.AddWithValue("@TelefonNr", txttel.Text);
            cmd.Parameters.AddWithValue("@FaxNr", txtfax.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Strasse", Convert.ToString(Session["strasse"]));
            cmd.Parameters.AddWithValue("@WohnOrt", Convert.ToString(Session["wohnort"]));
            cmd.Parameters.AddWithValue("@PLZ", Convert.ToString(Session["plz"]));
            cmd.Parameters.Add("@Id_Person", SqlDbType.Int).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            Session.Add("PersonID", cmd.Parameters["@Id_Person"].Value.ToString());
            cnn.Close();
            cnn.Dispose();


        }

        public void InsertBooking()
        {
            string ConnectionString = "data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "insert into Booking(RaumID, PersonID, StartDatum, EndDatum, KursName) Values(@RaumID,@PersonID,@StartDatum ,@EndDatum ,@KursName);";
            cmd.Parameters.AddWithValue("@RaumID", Convert.ToInt32(Session["raumid"]));
            cmd.Parameters.AddWithValue("@PersonID", Convert.ToInt32(Session["PersonID"]));
            cmd.Parameters.AddWithValue("@StartDatum", Convert.ToString(Session["start"]));
            cmd.Parameters.AddWithValue("@EndDatum", Convert.ToString(Session["end"]));
            cmd.Parameters.AddWithValue("@KursName", Convert.ToString(Session["kursname"]));
            cmd.ExecuteNonQuery();
            cnn.Close();
            cnn.Dispose();

        }

        protected void Stornieren_Click(object sender, EventArgs e)
        {
            Session.Remove("PersonID");
            Session.Remove("vorname");
            Session.Remove("nachname");
            Session.Remove("tel");
            Session.Remove("fax");
            Session.Remove("email");
            Session.Remove("start");
            Session.Remove("end");
            Session.Remove("kursname");
            Session.Remove("raum");
            Session.Remove("strasse");
            Session.Remove("wohnort");
            Session.Remove("plz");
            Session.Remove("raumid");
            Response.Redirect("Page1.aspx");


        }

        protected void Bestätigen_Click(object sender, EventArgs e)
        {
            InsertUser();

            InsertBooking();

            //Email schicken==>

            using (MailMessage mm = new MailMessage("testmail33@mein.gmx",Convert.ToString( Session["email"].ToString())))
            {
                mm.Subject = "Anfrage würde bearbeiten";
                string body = "Sehr geeherte Damen und Herren";
                body += "<br /><br />Das ist Ein Test";
                body += "<br />....";
                body += "<br /><br />Mit freundlichen Grüßen";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient("mail.gmx.net", 25);
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("testmail33@mein.gmx", "testmail3311");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Send(mm);
            }

            //Sessions Löchen==>

            Session.Remove("PersonID");
            Session.Remove("vorname");
            Session.Remove("nachname");
            Session.Remove("tel");
            Session.Remove("fax");
            Session.Remove("email");
            Session.Remove("start");
            Session.Remove("end");
            Session.Remove("kursname");
            Session.Remove("raum");
            Session.Remove("strasse");
            Session.Remove("wohnort");
            Session.Remove("plz");
            Session.Remove("raumid");

            Response.Redirect("Page1.aspx");

        }
    }

}