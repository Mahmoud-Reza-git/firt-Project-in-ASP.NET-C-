<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="WebApplication1.Pages.Page2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!------ Include the above in your HEAD tag ---------->
    <div class="container">

        <div class="progress">
            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
                50%
            </div>
        </div>
        <div class="stepwizard">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step">
                    <a href="Page1.aspx" type="button" class="btn btn-default btn-circle" aria-disabled="false" >1</a>
                    <p><a href="Page1.aspx">Anfangen</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-primary btn-circle" aria-disabled="true" >2</a>
                    <p>Schritt 1</p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2"" type="button" class="btn btn-default btn-circle" aria-disabled="false">3</a>
                    <p><a href="#step-2">Schritt 2</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-3" type="button" class="btn btn-default btn-circle" aria-disabled="false" >4</a>
                    <p><a href="#step-3">Schritt 3</a></p>
                </div>
            </div>
        </div>
    </div>
    <!------Ende HEAD tag ---------->

    <!-- Start Abfrage Formular-->
    <div class="row setup-content" id="step-1" style="background-color: #CCFFCC">
        <div class="col-xs-12">
            <div class="col-md-12">
                
                <!--Vorname-->
                <fieldset class="form-group">
                    <label class="control-label">Vorname</label>
                    <asp:TextBox ID="txtvorname" runat="server" MaxLength="100" type="text" required="required" pattern="[A-za-zÄäÖöÜüß]+" class="form-control" placeholder="Vorname eingeben" name="vorname" AutoCompleteType="FirstName"></asp:TextBox>
                
                </fieldset>
                <!--Nachname-->
                <fieldset class="form-group">
                    <label class="control-label">Nachname</label>
                    <asp:TextBox ID="txtnachname" runat="server" MaxLength="100" type="text" required="required" pattern="[A-za-zÄäÖöÜüß]+" class="form-control" placeholder="Nachname eingeben" name="nachname" AutoCompleteType="LastName"></asp:TextBox>

                </fieldset>
                <!--Telefonnummer-->
                <fieldset class="form-group">
                    <label class="control-label">Telefonnummer</label>                
                    <asp:TextBox ID="txttel" runat="server" MaxLength="20" type="tel" required="required" pattern="^[0-9-+\s()]*$" class="form-control" placeholder="Telefonnummer" name="telnummr" AutoCompleteType="BusinessPhone"></asp:TextBox>  
                    <asp:Label ID="lbltelerror" runat="server" Text="Falche eingebe" ForeColor="Red" Visible="false"></asp:Label>
                    </fieldset>
                <!--Faxnummer-->
                <fieldset class="form-group">
                    <label class="control-label">Fax Nummer</label>  
                    <asp:TextBox ID="txtfax" runat="server" MaxLength="100" type="tel" required="required" pattern="^[0-9-+\s()]*$"  class="form-control" placeholder="Faxnummer" name="faxnummr" AutoCompleteType="BusinessFax"></asp:TextBox>
                   <asp:Label ID="lblfaxerror" runat="server" Text="Falche eingebe" ForeColor="Red" Visible="false"></asp:Label>
                    </fieldset>
                <!--Email-->
                <fieldset class="form-group">
                    <label class="control-label">Email Adresse</label>
                    <asp:TextBox ID="txtemail" runat="server" MaxLength="100" type="email" required="required" class="form-control" placeholder="Email eingeben" name="email" TextMode="Email" AutoCompleteType="Email"></asp:TextBox>
                </fieldset>
                <!--Adresse-->
                <fieldset class="form-group">
                    <label class="control-label">Straße und Hausnummer</label>
                    <asp:TextBox ID="txtadresse" runat="server" MaxLength="100" type="text" required="required" pattern="[A-za-zÄäÖöÜüß0-9-\s()]+" class="form-control" placeholder="Die Starße und Hausnummer eingeben" name="adresse" AutoCompleteType="HomeStreetAddress"></asp:TextBox>
                </fieldset>
                <!--WohnOrt-->
                <fieldset class="form-group">
                    <label class="control-label">Wohnort</label>
                    <asp:TextBox ID="txtwohnort" runat="server" MaxLength="100" type="text" required="required" pattern="[A-za-zÄäÖöÜüß]+" class="form-control" placeholder="Wohnort" name="wohnort" AutoCompleteType="BusinessCity"></asp:TextBox>
                </fieldset>
                <!--PLZ-->
                <fieldset class="form-group">
                    <label class="control-label">PLZ</label>
                    <asp:TextBox ID="txtplz" runat="server" type="text" pattern="[0-9]{5,5}"  required="required" class="form-control" placeholder="PLZ" name="plz" ></asp:TextBox>
              
                    </fieldset>

                <!--Start Button-->
                <table style="width: 100%; text-align: right;">
                    <tr>
                        <td dir="rtl">
                            <asp:Button ID="Button" runat="server" Text="Weiter" class="btn btn-success btn-lg" type="senden" OnClick="Button_Click" />
                        </td>
                    </tr>
                </table>
                <!--End Button-->

            </div>

        </div>

    </div>
    <!--End Abfrage Formular-->

</asp:Content>
