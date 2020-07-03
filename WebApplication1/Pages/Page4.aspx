<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Page4.aspx.cs" Inherits="WebApplication1.Pages.Page4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style6 {
            display: table-cell;
            text-align: center;
            position: relative;
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    <!------ Include the above in your HEAD tag ---------->

    <div class="container-md">
        <div class="progress">
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                100%
            </div>
        </div>
        <div class="stepwizard">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-default btn-circle" disabled="disabled">1</a>
                    <p><a href="Page1.aspx">Anfangen</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                    <p><a href="Page2.aspx">Schritt 1</a></p>
                </div>
                <div class="auto-style6">
                    <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                    <p><a href="Page3.aspx">Schritt 2</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-3" type="button" class="btn btn-primary btn-circle">4</a>
                    <p>Schritt 3</p>
                </div>
            </div>
        </div>
    </div>


    <div class="row setup-content" id="step-3" style="background-color: #CCFFCC">
        <div class="col-xs-12">
            <div class="col-md-12">
                <div class="container">

                    <!--Anmelde Formular-->
            <div class="col-xs-12">
                <div class="col-md-12">
                    <!--Vorname-->
                    <fieldset class="form-group">
                        <label class="control-label" style="text-align: center">Vorname</label> <br />
                        <asp:Label ID="taxtvorname" runat="server" BackColor="#99FF99" BorderColor="Gray" BorderStyle="Solid" Font-Size="Medium" Width="850px" align="center" flot="right"></asp:Label>

                    </fieldset>
                    <!--Nachname-->
                    <fieldset class="form-group">
                        <label class="control-label">Nachname</label><br />
                         <asp:Label ID="txtnachname" runat="server" BackColor="#99FF99" BorderColor="Gray" BorderStyle="Solid" Font-Size="Medium" Width="850px" align="center" flot="right"></asp:Label>

                    </fieldset>
                    <!--Telefonnummer-->
                    <fieldset class="form-group">
                        <label class="control-label">Telefonnummer</label><br />
                         <asp:Label ID="txttel" runat="server" BackColor="#99FF99" BorderColor="Gray" BorderStyle="Solid" Font-Size="Medium" Width="850px" align="center" flot="right"></asp:Label>
                    </fieldset>
                    <!--Faxnummer-->
                    <fieldset class="form-group">
                        <label class="control-label">Fax Nummer</label><br />
                        <asp:Label ID="txtfax" runat="server" BackColor="#99FF99" BorderColor="Gray" BorderStyle="Solid" Font-Size="Medium" Width="850px" align="center" flot="right"></asp:Label>
                    </fieldset>
                    <!--Email-->
                    <fieldset class="form-group">
                        <label class="control-label">Email Adresse</label><br />
                         <asp:Label ID="txtemail" runat="server" BackColor="#99FF99" BorderColor="Gray" BorderStyle="Solid" Font-Size="Medium" Width="850px" align="center" flot="right"></asp:Label>
                    </fieldset>
                    <!--startdatum-->
                    <fieldset class="form-group">
                        <label class="control-label">Startdatum</label><br />
                         <asp:Label ID="txtstart" runat="server" BackColor="#99FF99" BorderColor="Gray" BorderStyle="Solid" Font-Size="Medium" Width="850px" align="center" flot="right"></asp:Label>
                    </fieldset>
                    <!--enddatum-->
                    <fieldset class="form-group">
                        <label class="control-label">Enddatum</label><br />
                         <asp:Label ID="txtend" runat="server" BackColor="#99FF99" BorderColor="Gray" BorderStyle="Solid" Font-Size="Medium" Width="850px" align="center" flot="right"></asp:Label>
                    </fieldset>
                    <!--Raum-->
                    <fieldset class="form-group">
                        <label class="control-label">Raum</label><br />
                         <asp:Label ID="txtraum" runat="server" BackColor="#99FF99" BorderColor="Gray" BorderStyle="Solid" Font-Size="Medium" Width="850px" align="center" flot="right"></asp:Label>
                    </fieldset>
                    <!--Kurs-->
                      <fieldset class="form-group">
                        <label class="control-label">Kurs Zeichen</label><br />
                         <asp:Label ID="txtkurs" runat="server" BackColor="#99FF99" BorderColor="Gray" BorderStyle="Solid" Font-Size="Medium" Width="850px" align="center" flot="right"></asp:Label>
                    </fieldset>


                    <!--Button-->
                    <table style="width: 90%; text-align: center;">
                        <tr>
                            <td> <asp:Button ID="Button1" runat="server" Text="Stornieren" class="btn btn-success btn-lg" href="Page3.aspx" type="senden" OnClick="Stornieren_Click" /></td>
                            <td style="width: 30%"> 
                                <asp:Button ID="printButton" runat="server" class="btn btn-success btn-lg" Text="Print" OnClientClick="javascript:window.print();" />
                            </td>
                            <td dir="rtl"> <asp:Button ID="Button3" runat="server" Text="Bestätigen" class="btn btn-success btn-lg" href="Page3.aspx" type="senden" OnClick="Bestätigen_Click" /></td>
                        </tr>
                    </table>
                    
                 
                </div>

            </div>

             </div>
                  
               
            </div>

        </div>
    </div>



</asp:Content>
