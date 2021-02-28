using System;
using System.Data.SqlClient;
using System.Web.Security;

namespace WebApplication1.Pages
{

    public partial class BookingAnsicht : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.cmdSignOut.ServerClick += new System.EventHandler(this.CmdSignOut_ServerClick);

        }

        protected void BtnDienstControl_Click(object sender, EventArgs e)
        {
            Response.Redirect("DienstStelleControl.aspx");
        }

        protected void RaumControl_Click(object sender, EventArgs e)
        {
            Response.Redirect("RaumContorol.aspx");
        }
        private void CmdSignOut_ServerClick(object sender, System.EventArgs e)
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
    }
}