using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

namespace WebApplication1.Pages
{
    public partial class DienstStelleControl : System.Web.UI.Page
    {
        //SQLCONNECTIONSTRING

        string sqlconnectionString = "data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.cmdSignOut.ServerClick += new System.EventHandler(this.cmdSignOut_ServerClick);

            if (!IsPostBack)
            {
                PopolateGridView();
            }

        }


        //PopolateGridView

        void PopolateGridView()
        {
            DataTable dataTable = new DataTable();
            using (SqlConnection cnn = new SqlConnection(sqlconnectionString))
            {
                cnn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("select * from DienstStelle", cnn);

                adapter.Fill(dataTable);
            }
            if (dataTable.Rows.Count > 0)
            {


                DienstStelle.DataSource = dataTable;
                DienstStelle.DataBind();
            }
            else
            {
                dataTable.Rows.Add(dataTable.NewRow());
                DienstStelle.DataSource = dataTable;
                DienstStelle.DataBind();
                DienstStelle.Rows[0].Cells.Clear();
                DienstStelle.Rows[0].Cells.Add(new TableCell());
                DienstStelle.Rows[0].Cells[0].ColumnSpan = dataTable.Columns.Count;
                DienstStelle.Rows[0].Cells[0].Text = "Not Data Found ..!";
                DienstStelle.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }

        // Raum addieren
        protected void DienstStelle_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection cnn = new SqlConnection(sqlconnectionString))
                    {
                        cnn.Open();
                        string stringQuery = "insert into DienstStelle (Strasse,HausNr,PLZ,Wohnort)" +
                            " values(@Strasse,@HausNr,@PLZ,@Wohnort)";
                        SqlCommand cmd = new SqlCommand(stringQuery, cnn);
                        cmd.Parameters.AddWithValue("@Strasse", (DienstStelle.FooterRow.FindControl("txtStrasseFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@HausNr", (DienstStelle.FooterRow.FindControl("txtHausNrFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@PLZ", (DienstStelle.FooterRow.FindControl("txtPLZFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@Wohnort", (DienstStelle.FooterRow.FindControl("txtWohnortFooter") as TextBox).Text.Trim());

                        cmd.ExecuteNonQuery();
                        PopolateGridView();
                        lblSuccessMessage.Text = "New Record Added";
                        lblErrorMessage.Text = "";
                    }

                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;

            }
        }

        //Raum korrigieren

        protected void DienstStelle_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DienstStelle.EditIndex = e.NewEditIndex;
            PopolateGridView();
        }

        // Edit abschaffen

        protected void DienstStelle_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DienstStelle.EditIndex = -1;
            PopolateGridView();
        }

        // Raum aktualisieren

        protected void DienstStelle_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection cnn = new SqlConnection(sqlconnectionString))
                {
                    cnn.Open();
                    string stringQuery = "Update DienstStelle set Strasse =@Strasse,HausNr=@HausNr,PLZ=@PLZ,Wohnort=@Wohnort where Id_DienstName = @id";

                    SqlCommand cmd = new SqlCommand(stringQuery, cnn);
                    cmd.Parameters.AddWithValue("@Strasse", (DienstStelle.Rows[e.RowIndex].FindControl("txtStrasse") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@HausNr", (DienstStelle.Rows[e.RowIndex].FindControl("txtHausNr") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@PLZ", (DienstStelle.Rows[e.RowIndex].FindControl("txtPLZ") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@Wohnort", (DienstStelle.Rows[e.RowIndex].FindControl("txtWohnort") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(DienstStelle.DataKeys[e.RowIndex].Value.ToString()));
                    cmd.ExecuteNonQuery();
                    DienstStelle.EditIndex = -1;
                    PopolateGridView();
                    lblSuccessMessage.Text = "SELECTED RECORD UPDATED";
                    lblErrorMessage.Text = "";
                }


            }
            catch (Exception exx)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = exx.Message;

            }
        }

        //Raum entfernen

        protected void DienstStelle_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection cnn = new SqlConnection(sqlconnectionString))
                {
                    cnn.Open();
                    string stringQuery = "DELETE FROM DienstStelle where Id_DienstName = @id";

                    SqlCommand cmd = new SqlCommand(stringQuery, cnn);
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(DienstStelle.DataKeys[e.RowIndex].Value.ToString()));
                    cmd.ExecuteNonQuery();
                    PopolateGridView();
                    lblSuccessMessage.Text = "SELECTED RECORD DELETED";
                    lblErrorMessage.Text = "";
                }


            }
            catch (Exception exx)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = exx.Message;

            }
        }

        protected void BtnBooking_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingAnsicht.aspx");
        }
        protected void BtnRaumContro_Click(object sender, EventArgs e)
        {
            Response.Redirect("RaumContorol.aspx");
        }
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
    }
}