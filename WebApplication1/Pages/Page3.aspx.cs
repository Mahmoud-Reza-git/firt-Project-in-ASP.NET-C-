using System;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1.Pages
{



    public partial class Page3 : System.Web.UI.Page
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




        protected void Button1_Click(object sender, EventArgs e)
        {


            DateTime starttime = DateTime.Parse(datetimepicker1.Value);
            DateTime endtime = DateTime.Parse(datetimepicker2.Value);
           
            if (starttime >= endtime)
            {
                Enddate.Visible = false;
                DateError.Visible = true;
                
            }
            else
            {


                Session.Add("start", starttime.ToString("s"));
                Session.Add("end", endtime.ToString("s"));
                Session.Add("kursname", txtKursName.Text);
                Session.Add("raum", DropDownList1.SelectedItem);
                Session.Add("raumid", DropDownList1.SelectedValue);


                Response.Redirect("Page4.aspx");
            }
        }

    }
}
