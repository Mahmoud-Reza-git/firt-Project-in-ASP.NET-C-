using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

namespace WebApplication1.Pages
{
    public partial class RaumContorol : System.Web.UI.Page
    {

        //SQLCONNECTIONSTRING

        string sqlconnectionString = "data Source = localhost\\MAHMOUDSQL; Initial Catalog = RaumVerwaltung; Persist Security Info = True; User ID = Allameh; Password = Allameh1905";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.cmdSignOut.ServerClick += new System.EventHandler(this.CmdSignOut_ServerClick);

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
                SqlDataAdapter adapter = new SqlDataAdapter("select * from Raum", cnn);

                adapter.Fill(dataTable);
            }
            if (dataTable.Rows.Count > 0)
            {


                Raum.DataSource = dataTable;
                Raum.DataBind();
            }
            else
            {
                dataTable.Rows.Add(dataTable.NewRow());
                Raum.DataSource = dataTable;
                Raum.DataBind();
                Raum.Rows[0].Cells.Clear();
                Raum.Rows[0].Cells.Add(new TableCell());
                Raum.Rows[0].Cells[0].ColumnSpan = dataTable.Columns.Count;
                Raum.Rows[0].Cells[0].Text = "Not Data Found ..!";
                Raum.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }

        // Raum addieren
        protected void Raum_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection cnn = new SqlConnection(sqlconnectionString))
                    {
                        cnn.Open();
                        string stringQuery = "insert into Raum (Raum_Zeichen, Bildschirm,Flipchart,Whitboard,Laptop,Beamer,Sitzplatz,OrtID)" +
                            " values(@Raum_Zeichen,@Bildschirm,@Flipchart,@Whitboard,@Laptop,@Beamer,@Sitzplatz,@OrtID)";
                        SqlCommand cmd = new SqlCommand(stringQuery, cnn);
                        cmd.Parameters.AddWithValue("@Raum_Zeichen", (Raum.FooterRow.FindControl("txtraumFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@Bildschirm", (Raum.FooterRow.FindControl("txtBildschirmFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@Flipchart", (Raum.FooterRow.FindControl("txtFlipchartFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@Whitboard", (Raum.FooterRow.FindControl("txtWhitboardFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@Laptop", (Raum.FooterRow.FindControl("txtLaptopFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@Beamer", (Raum.FooterRow.FindControl("txtBeamerFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@Sitzplatz", (Raum.FooterRow.FindControl("txtSitzplatzFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@OrtID", Convert.ToInt32((Raum.FooterRow.FindControl("txtOrtIDFooter") as TextBox).Text.Trim()));
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

        protected void Raum_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Raum.EditIndex = e.NewEditIndex;
            PopolateGridView();
        }

        // Edit abschaffen

        protected void Raum_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Raum.EditIndex = -1;
            PopolateGridView();
        }

        // Raum aktualisieren

        protected void Raum_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection cnn = new SqlConnection(sqlconnectionString))
                {
                    cnn.Open();
                    string stringQuery = "Update Raum set Raum_Zeichen= @Raum_Zeichen,Bildschirm= @Bildschirm,Flipchart= @Flipchart,Whitboard= @Whitboard,Laptop= @Laptop,Beamer= @Beamer,Sitzplatz=@Sitzplatz,OrtID= @OrtID where Id_Raum = @id";

                    SqlCommand cmd = new SqlCommand(stringQuery, cnn);
                    cmd.Parameters.AddWithValue("@Raum_Zeichen", (Raum.Rows[e.RowIndex].FindControl("txtRaums") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@Bildschirm", (Raum.Rows[e.RowIndex].FindControl("txtBildschirm") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@Flipchart", (Raum.Rows[e.RowIndex].FindControl("txtFlipchart") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@Whitboard", (Raum.Rows[e.RowIndex].FindControl("txtWhitboard") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@Laptop", (Raum.Rows[e.RowIndex].FindControl("txtLaptop") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@Beamer", (Raum.Rows[e.RowIndex].FindControl("txtBeamer") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@Sitzplatz", (Raum.Rows[e.RowIndex].FindControl("txtSitzplatz") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@OrtID", Convert.ToInt32((Raum.Rows[e.RowIndex].FindControl("txtOrtID") as TextBox).Text.Trim()));
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Raum.DataKeys[e.RowIndex].Value.ToString()));
                    cmd.ExecuteNonQuery();
                    Raum.EditIndex = -1;
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

        protected void Raum_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection cnn = new SqlConnection(sqlconnectionString))
                {
                    cnn.Open();
                    string stringQuery = "DELETE FROM Raum where Id_Raum = @id";

                    SqlCommand cmd = new SqlCommand(stringQuery, cnn);            
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Raum.DataKeys[e.RowIndex].Value.ToString()));
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("DienstStelleControl.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingAnsicht.aspx");
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