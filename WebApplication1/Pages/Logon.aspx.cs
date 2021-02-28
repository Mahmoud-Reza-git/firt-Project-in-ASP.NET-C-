using System;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace WebApplication1.Pages
{
    public partial class Logon : System.Web.UI.Page
    {


        //Einlogen
        protected void Page_Load(object sender, EventArgs e)
        {
            this.cmdLogin.ServerClick += new System.EventHandler(this.cmdLogin_ServerClick);
        }
        private bool ValidateUser(string userName, string passWord)
        {
            SqlConnection conn;
            SqlCommand cmd;
            string lookupPassword = null;

            // Check for invalid userName.
            // userName must not be null and must be between 1 and 15 characters.
            if ((null == userName) || (0 == userName.Length))
            {
                lblEmilAdresseLeer.Visible = true;
                lblEmailError.Visible = false;
                lblEmailError0.Visible = false;
                lblEmailLeer.Visible = false;
                lblEmailtopassLeer.Visible = false;               
                lblErrorPass.Visible = false;
                lblMsg1.Visible = false;
                lblMsg.Visible = false;
                lblPassLeer.Visible = false;
                lblPassLeer2.Visible = false;
                lblPasswortLeer.Visible = false;
                return false;
            }

            // Check for invalid passWord.
            // passWord must not be null and must be between 1 and 25 characters.
            if ((null == passWord) || (0 == passWord.Length))
            {
                lblPasswortLeer.Visible = true;
                lblEmailError.Visible = false;
                lblEmailError0.Visible = false;
                lblEmailLeer.Visible = false;
                lblEmailtopassLeer.Visible = false;
                lblEmilAdresseLeer.Visible = false;
                lblErrorPass.Visible = false;
                lblMsg1.Visible = false;
                lblMsg.Visible = false;
                lblPassLeer.Visible = false;
                lblPassLeer2.Visible = false;
                
                return false;
            }

            try
            {
                // Consult with your SQL Server administrator for an appropriate connection
                // string to use to connect to your local SQL Server.
                conn = new SqlConnection("data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905");
                conn.Open();

                // Create SqlCommand to select pwd field from users table given supplied userName.
                cmd = new SqlCommand("Select pwd from Users where uname=@userName", conn);
                cmd.Parameters.Add("@userName", SqlDbType.NVarChar, 50);
                cmd.Parameters["@userName"].Value = userName;

                // Execute command and fetch pwd field into lookupPassword string.
                lookupPassword = (string)cmd.ExecuteScalar();

                // Cleanup command and connection objects.
                cmd.Dispose();
                conn.Dispose();
            }
            catch (Exception ex)
            {
                // Add error handling here for debugging.
                // This error message should not be sent back to the caller.
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
            }

            // If no password found, return false.
            if (null == lookupPassword)
            {
                // You could write failed login attempts here to event log for additional security.
                return false;
            }

            // Compare lookupPassword and input passWord, using a case-sensitive comparison.
            return (0 == string.Compare(lookupPassword, passWord, false));

        }
        private void cmdLogin_ServerClick(object sender, System.EventArgs e)
        {
            if (ValidateUser(txtUserName.Value, txtUserPass.Value))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Value,
                chkPersistCookie.Checked);
            }
            else
            {
                lblMsg.Visible = true;
                lblEmailError.Visible = false;
                lblEmailError0.Visible = false;
                lblEmailLeer.Visible = false;
                lblEmailtopassLeer.Visible = false;
                lblEmilAdresseLeer.Visible = false;
                lblErrorPass.Visible = false;
                lblMsg1.Visible = false;              
                lblPassLeer.Visible = false;
                lblPassLeer2.Visible = false;
                lblPasswortLeer.Visible = false;

            }


        }

        //NeuRegister User
        protected void neuRegister_Click1(object sender, EventArgs e)
        {
            if (ValidateNeuUser(txtEmail1.Value, txtPass1.Value, txtPass2.Value))
            {

                string userRole = string.Empty;

                string ConnectionString = "data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905";
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT userRole FROM Users WHERE uname = @Email"))
                    {
                        cmd.Parameters.AddWithValue("@Email", txtEmail1.Value.ToString());
                        cmd.Connection = con;
                        con.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            if (sdr.Read())
                            {
                                userRole = sdr["userRole"].ToString();

                            }
                            con.Close();
                        }
                    }
                    if (string.IsNullOrEmpty(userRole))
                    {
                        InsertUser();
                        lblMsg1.Visible = true;
                        lblEmailError.Visible = false;
                        lblEmailError0.Visible = false;
                        lblEmailLeer.Visible = false;
                        lblEmailtopassLeer.Visible = false;
                        lblEmilAdresseLeer.Visible = false;
                        lblErrorPass.Visible = false;                       
                        lblMsg.Visible = false;
                        lblPassLeer.Visible = false;
                        lblPassLeer2.Visible = false;
                        lblPasswortLeer.Visible = false;
                    }
                    else
                    {
                        lblEmailError0.Visible = true;
                        lblEmailError.Visible = false;                        
                        lblEmailLeer.Visible = false;
                        lblEmailtopassLeer.Visible = false;
                        lblEmilAdresseLeer.Visible = false;
                        lblErrorPass.Visible = false;
                        lblMsg1.Visible = false;
                        lblMsg.Visible = false;
                        lblPassLeer.Visible = false;
                        lblPassLeer2.Visible = false;
                        lblPasswortLeer.Visible = false;
                    }
                }


            }

        }
        private void InsertUser()
        {

            string user = "User";
            string ConnectionString = "data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cnn.Open();
            cmd.CommandText = "insert into Users (uname,Pwd,userRole) values(@uname , @Pwd , @userRole)";
            cmd.Connection = cnn;

            cmd.Parameters.AddWithValue("@uname", txtEmail1.Value);
            cmd.Parameters.AddWithValue("@Pwd", txtPass1.Value);
            cmd.Parameters.AddWithValue("@userRole", value: user);
            cmd.ExecuteNonQuery();
            cnn.Close();
            cnn.Dispose();

        }
        private bool ValidateNeuUser(string userName, string passWord, string passWord2)
        {
            // Check for invalid userName.
            // userName must not be null and must be between 1 and 15 characters.
            if ((null == userName) || (0 == userName.Length))
            {
                lblEmailLeer.Visible = true;
                lblEmailError.Visible = false;
                lblEmailError0.Visible = false;               
                lblEmailtopassLeer.Visible = false;
                lblEmilAdresseLeer.Visible = false;
                lblErrorPass.Visible = false;
                lblMsg1.Visible = false;
                lblMsg.Visible = false;
                lblPassLeer.Visible = false;
                lblPassLeer2.Visible = false;
                lblPasswortLeer.Visible = false;
                return false;
            }
            // Check for invalid passWord.

            else if ((null == passWord) || (0 == passWord.Length))
            {
                lblPassLeer.Visible = true;
                lblEmailError.Visible = false;
                lblEmailError0.Visible = false;
                lblEmailLeer.Visible = false;
                lblEmailtopassLeer.Visible = false;
                lblEmilAdresseLeer.Visible = false;
                lblErrorPass.Visible = false;
                lblMsg1.Visible = false;
                lblMsg.Visible = false;               
                lblPassLeer2.Visible = false;
                lblPasswortLeer.Visible = false;
                return false;
            }
            // Check for invalid passWord.
            else if ((null == passWord2) || (0 == passWord2.Length))
            {
                lblPassLeer2.Visible = true;
                lblEmailError.Visible = false;
                lblEmailError0.Visible = false;
                lblEmailLeer.Visible = false;
                lblEmailtopassLeer.Visible = false;
                lblEmilAdresseLeer.Visible = false;
                lblErrorPass.Visible = false;
                lblMsg1.Visible = false;
                lblMsg.Visible = false;
                lblPassLeer.Visible = false;               
                lblPasswortLeer.Visible = false;
                return false;
            }
            // Check for invalid passWord.

            else if (passWord != passWord2)
            {
                lblErrorPass.Visible = true;
                lblEmailError.Visible = false;
                lblEmailError0.Visible = false;
                lblEmailLeer.Visible = false;
                lblEmailtopassLeer.Visible = false;
                lblEmilAdresseLeer.Visible = false;               
                lblMsg1.Visible = false;
                lblMsg.Visible = false;
                lblPassLeer.Visible = false;
                lblPassLeer2.Visible = false;
                lblPasswortLeer.Visible = false;
                return false;
            }
            return true;

        }


        //Password vergessen
        protected void BtnEmailsenden_Click(object sender, EventArgs e)
        {
            if (ValidateEmail(txtemailtoPass.Value.ToString()))
            {
            

                Random pass = new Random();
                int neuPass = pass.Next();
                string userRole = string.Empty;
                string password = string.Empty;
                string ConnectionString = "data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905";
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT userRole FROM Users WHERE uname = @Email"))
                    {
                        cmd.Parameters.AddWithValue("@Email", txtemailtoPass.Value.ToString());
                        cmd.Connection = con;
                        con.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            if (sdr.Read())
                            {
                                userRole = sdr["userRole"].ToString();

                            }
                            con.Close();
                        }
                    }
                    if (!string.IsNullOrEmpty(userRole))
                    {


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

                        Session.Add("EmailToPass", txtemailtoPass.Value);
                        using (MailMessage mm = new MailMessage("testmail33@mein.gmx", Convert.ToString(Session["EmailToPass"].ToString())))
                        {
                            mm.Subject = "Neu Passwort erstellen";
                            string body = "Sehr geeherte Damen und Herren";
                            body += "<br /><br />hiermit schicken wir Ihnen eine email und temporäres Passwort ";
                            body += "<br /><br />Email : passwort@gmail.com";
                            body += "<br />Temporäres Passwort : " + neuPass;
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
                   
                        Response.Redirect("NeuPasswort.aspx");
                        

                    }
                    else
                    {
                        lblEmailError.Visible = true;                        
                        lblEmailError0.Visible = false;
                        lblEmailLeer.Visible = false;
                        lblEmailtopassLeer.Visible = false;
                        lblEmilAdresseLeer.Visible = false;
                        lblErrorPass.Visible = false;
                        lblMsg1.Visible = false;
                        lblMsg.Visible = false;
                        lblPassLeer.Visible = false;
                        lblPassLeer2.Visible = false;
                        lblPasswortLeer.Visible = false;
                    }
                }
                
            }
           

        }
        private bool ValidateEmail(string Email)
        {
            // Check for invalid userName.
            // userName must not be null and must be between 1 and 15 characters.
            if ((null == Email) || (0 == Email.Length))
            {
                lblEmailtopassLeer.Visible = true;
                lblEmailError.Visible = false;
                lblEmailError0.Visible = false;
                lblEmailLeer.Visible = false;               
                lblEmilAdresseLeer.Visible = false;
                lblErrorPass.Visible = false;
                lblMsg1.Visible = false;
                lblMsg.Visible = false;
                lblPassLeer.Visible = false;
                lblPassLeer2.Visible = false;
                lblPasswortLeer.Visible = false;
                return false;
            }

            return true;

        }
    }
}