<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="WebApplication1.Pages.Page2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="progress">
            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
                50%
            </div>
        </div>
        <div class="stepwizard">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-default btn-circle" disabled="disabled">1</a>
                    <p><a href="Page1.aspx">Anfangen</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-primary btn-circle">2</a>
                    <p>Schritt 1</p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                    <p><a href="Page3.aspx">Schritt 2</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                    <p><a href="Page4.aspx">Schritt 3</a></p>
                </div>
            </div>
        </div>

        <!--Anmelde Formular-->
        <div class="row setup-content" id="step-1" style="background-color: #CCFFCC">
            <div class="col-xs-12">
                <div class="col-md-12">
                    <!--Vorname-->
                    <fieldset class="form-group">
                        <label class="control-label">Vorname</label>
                        <asp:TextBox ID="txtvorname" runat="server" MaxLength="100" type="text" required="required" class="form-control" placeholder="Vorname eingeben" name="vorname"></asp:TextBox>

                    </fieldset>
                    <!--Nachname-->
                    <fieldset class="form-group">
                        <label class="control-label">Nachname</label>
                        <asp:TextBox ID="txtnachname" runat="server" MaxLength="100" type="text" required="required" class="form-control" placeholder="Nachname eingeben" name="nachname"></asp:TextBox>

                    </fieldset>
                    <!--Telefonnummer-->
                    <fieldset class="form-group">
                        <label class="control-label">Telefonnummer</label>
                        <asp:TextBox ID="txttel" runat="server" MaxLength="100" type="text" required="required" class="form-control" placeholder="Telefonnummer" name="telnummr" TextMode="Number"></asp:TextBox>
                    </fieldset>
                    <!--Faxnummer-->
                    <fieldset class="form-group">
                        <label class="control-label">Fax Nummer</label>
                        <asp:TextBox ID="txtfax" runat="server" MaxLength="100" type="text" required="required" class="form-control" placeholder="Faxnummer" name="faxnummr" TextMode="Number"></asp:TextBox>
                    </fieldset>
                    <!--Email-->
                    <fieldset class="form-group">
                        <label class="control-label">Email Adresse</label>
                        <asp:TextBox ID="txtemail" runat="server" MaxLength="100" type="email" required="required" class="form-control" placeholder="Email eingeben" name="email" TextMode="Email"></asp:TextBox>
                    </fieldset>
                    <!--Adresse-->
                    <fieldset class="form-group">
                        <label class="control-label">Straße und Hausnummer</label>
                        <asp:TextBox ID="txtadresse" runat="server" MaxLength="100" type="text" required="required" class="form-control" placeholder="Die Starße und Hausnummer eingeben" name="adresse"></asp:TextBox>
                    </fieldset>
                    <!--WohnOrt-->
                    <fieldset class="form-group">
                        <label class="control-label">Wohnort</label>
                        <asp:TextBox ID="txtwohnort" runat="server" MaxLength="100" type="text" required="required" class="form-control" placeholder="Wohnort" name="wohnort"></asp:TextBox>
                    </fieldset>
                    <!--PLZ-->
                    <fieldset class="form-group">
                        <label class="control-label">PLZ</label>
                        <asp:TextBox ID="txtplz" runat="server" MaxLength="100" type="text" required="required" class="form-control" placeholder="PLZ" name="plz" TextMode="Number"></asp:TextBox>
                    </fieldset>


                    <!--Button-->

                    <table style="width: 100%; text-align: right;">
                        <tr>
                            <td dir="rtl">
                                <asp:Button ID="Button" runat="server" Text="Weiter" class="btn btn-success btn-lg" type="senden" OnClick="Button_Click" />
                            </td>
                        </tr>
                    </table>
                    

                </div>

            </div>

        </div>

    </div>




</asp:Content>
