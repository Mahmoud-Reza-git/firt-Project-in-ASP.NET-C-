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
    public partial class table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                SqlConnection cnn = new SqlConnection("data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905");
                SqlCommand cmd = new SqlCommand("Select Id_Raum , Raum_Zeichen FROM Raum Order by Id_Raum");
                SqlDataAdapter da = new SqlDataAdapter();
                DataTable data = new DataTable();
                da.SelectCommand = cmd;
                da.SelectCommand.Connection = cnn;
                da.Fill(data);
                DropDownList1.DataSource = data;
                DropDownList1.DataValueField = "Id_Raum";
                DropDownList1.DataTextField = "Raum_Zeichen";
                DropDownList1.DataBind();
            }

        }



        public void InsertBooking()
        {
            DateTime starttime = DateTime.Parse(datetimepicker1.Value);
            DateTime endtime = DateTime.Parse(datetimepicker2.Value);


            string ConnectionString = "data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "insert into Booking(RaumID, PersonID, StartDatum, EndDatum, KursName) Values(@RaumID,@PersonID,@StartDatum ,@EndDatum ,@KursName);";
            cmd.Parameters.AddWithValue("@RaumID", Convert.ToInt32(DropDownList1.SelectedValue));
            cmd.Parameters.AddWithValue("@PersonID", Convert.ToInt32(Session["PersonID"]));
            cmd.Parameters.AddWithValue("@StartDatum", starttime.ToString("s"));
            cmd.Parameters.AddWithValue("@EndDatum", endtime.ToString("s"));
            cmd.Parameters.AddWithValue("@KursName", txtKursName.Text);
            cmd.ExecuteNonQuery();
            cnn.Close();
            cnn.Dispose();

        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            InsertBooking();

            DateTime starttime = DateTime.Parse(datetimepicker1.Value);
            DateTime endtime = DateTime.Parse(datetimepicker2.Value);
            Session.Add("start", starttime.ToString());
            Session.Add("end", endtime.ToString());
            Session.Add("kursname", txtKursName.Text);
            Session.Add("raum", DropDownList1.SelectedItem);


            Response.Redirect("Page4.aspx");

        }
        
        
    }
}