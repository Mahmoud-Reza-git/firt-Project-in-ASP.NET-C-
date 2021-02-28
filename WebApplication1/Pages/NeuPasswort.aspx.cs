using System;
using System.Data.SqlClient;
using System.Web.Security;

namespace WebApplication1.Pages
{
    public partial class NeuPasswort : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.cmdSignOut.ServerClick += new System.EventHandler(this.cmdSignOut_ServerClick);
        }

        //Bestätigen_Click
        protected void Bestätigen_Click(object sender, EventArgs e)
        {
            if (ValidateNeuPass(txtPass1.Value, txtPass2.Value))
            {
                string ConnectionString = "data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905";
                SqlConnection cnn = new SqlConnection(ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cnn.Open();
                cmd.CommandText = "UPDATE Users SET Pwd = @Pass WHERE uname=@email ";
                cmd.Connection = cnn;
                cmd.Parameters.AddWithValue("@pass", txtPass1.Value);
                cmd.Parameters.AddWithValue("@email", Convert.ToString(Session["EmailToPass"]));
                cmd.ExecuteNonQuery();
                cnn.Close();
                cnn.Dispose();
                lblPass.Visible = true;

            }

        }

        //cmdSignOut_ServerClick
        private void cmdSignOut_ServerClick(object sender, System.EventArgs e)
        {
            Random pass = new Random();
            int neuPass = pass.Next();
            string ConnectionString = "data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cnn.Open();
            cmd.CommandText = "UPDATE Users SET Pwd = @Pass WHERE uname=@email ";
            cmd.Connection = cnn;
            cmd.Parameters.AddWithValue("@pass", value: neuPass);
            cmd.Parameters.AddWithValue("@email", value: "Passwort@gmail.com");
            cmd.ExecuteNonQuery();
            cnn.Close();
            cnn.Dispose();

            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
            Response.Redirect("Page1.aspx");
        }

        //ValidateNeuPass
        private bool ValidateNeuPass(string passWord, string passWord2)
        {

            // Check for invalid passWord.

            if ((null == passWord) || (0 == passWord.Length))
            {
                lblPassLeer.Visible = true;
                return false;
            }
            // Check for invalid passWord.
            else if ((null == passWord2) || (0 == passWord2.Length))
            {
                lblPassLeer2.Visible = true;
                return false;
            }
            // Check for invalid passWord.

            else if (passWord != passWord2)
            {
                lblErrorPass.Visible = true;
                return false;
            }
            return true;

        }
    }
}