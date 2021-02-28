<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="WebApplication1.Pages.Logon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Start Body-->
    <table style="width: 100%; background-color: #CCFFCC" border="0">
        <tr>
            <td style="width: 48%">
                <asp:Label ID="lblNeuUser" runat="server" Text="Neu registieren" ForeColor="#0066FF" Font-Size="Medium" Font-Bold="True"></asp:Label>

            </td>
            <td style="width: 4%"></td>
            <td style="width: 48%">
                <asp:Label ID="lblLogon" runat="server" Text="LOGON" ForeColor="#0066FF" Font-Size="Medium" Font-Bold="True"></asp:Label>
            </td>

        </tr>
        <!--Start Neu user und Einlogen Body-->
        <tr>

            <!--Start Neu User -->
            <td style="width: 48%">             

                <fieldset class="form-group">
                    <input id="txtEmail1" maxlength="100" type="email" placeholder="Bitte geben Sie Ihre Emeil-Adresse ein " class="form-control" runat="server" />                   
                    <asp:Label ID="lblEmailLeer" runat="server" Text="Bitte geben Sie Ihre Emeil-Adresse ein " Visible="False" ForeColor="Red"></asp:Label>
                </fieldset>


                <fieldset class="form-group">
                    <input id="txtPass1" maxlength="100" class="form-control" type="password" placeholder="Bitte geben Sie Ihr Password ein" runat="server" />                    
                    <asp:Label ID="lblPassLeer" runat="server" Text="Bitte egeben Sie Ihr Password ein" Visible="False" ForeColor="Red"></asp:Label>
                </fieldset>

                <fieldset class="form-group">
                    <input id="txtPass2" maxlength="100" class="form-control" type="password" placeholder="Bitte geben Sie Ihr Password ein" runat="server">                   
                    <asp:Label ID="lblPassLeer2" runat="server" Text="Bitte geben Sie Ihr Password ein" Visible="False" ForeColor="Red"></asp:Label>
                </fieldset>

            </td>
            <!--End Neu User -->

            <td style="width: 4%"></td>

            <!--Start Einlogen -->
            <td style="width: 48%">
                
                <br />
                <fieldset class="form-group">
                    <input id="txtUserName" maxlength="100" placeholder="Bitte geben Sie Ihre Emeil-Adresse ein" type="text" class="form-control" runat="server">                    
                    <asp:Label ID="lblEmilAdresseLeer" runat="server" Text="Bitte geben Sie Ihre Emeil-Adresse ein!" Visible="False" ForeColor="Red"></asp:Label>
                </fieldset>

                <fieldset class="form-group">
                    <input id="txtUserPass" maxlength="100" placeholder="Bitte geben Sie Ihr Password ein" class="form-control" type="password" runat="server">                    
                    <asp:Label ID="lblPasswortLeer" runat="server" Text="Bitte geben Sie Ihr Password ein!" Visible="False" ForeColor="Red"></asp:Label>
                </fieldset>
                <fieldset class="form-group">
                    <asp:Label ID="Label3" runat="server" class="control-label" Text=" Angemeldet bleiben  "></asp:Label>
                    <asp:CheckBox ID="chkPersistCookie" runat="server" AutoPostBack="false" />
                    <br />

                </fieldset>
                <br />
                <br />
                <asp:Label ID="lblMsg" ForeColor="Red" Font-Name="Verdana" Font-Size="Small" runat="server" Text="E-mail oder Passwort wurde falsch eingeben!!" Font-Names="Verdana" Visible="False" BorderStyle="Inset"></asp:Label>

                <!--End Einlogen -->
        </tr>
        <!--End Neu user und Einlogen Button-->

        <!--Start Neu User und Einlogon button -->
        <tr>
            <!--Start Neu User button -->
            <td style="width: 48%">
                    <asp:Label ID="lblErrorPass" runat="server" Text="Beide Passwörter müssen identisch sein" Visible="False" ForeColor="Red" Font-Size="Small"></asp:Label>
                <asp:Label ID="lblEmailError0" runat="server" CssClass="pull-right" Text="Die E-mail wurde bereits registriert!" BorderStyle="Inset" Font-Size="Small" ForeColor="red" Visible="False"></asp:Label>
                <asp:Button ID="neuRegister" class="btn btn-success btn-lg pull-left" runat="server" Text="Bestätigen" OnClick="neuRegister_Click1" />
                <asp:Label ID="lblMsg1" CssClass="pull-right" runat="server" Text="Jetzt können Sie sich logon" ForeColor="Green" Font-Name="Verdana" Font-Size="10pt" Font-Names="Verdana" Visible="False" BorderStyle="Inset"></asp:Label>
            </td>
            <!--End Neu User button -->

            <td style="width: 4%"></td>

            <!--Start Einlogen button -->
            <td style="width: 48%">
                <input type="submit" value="Logon" class="btn btn-success btn-lg pull-right" runat="server" id="cmdLogin">
            </td>
            <!--Start Einlogen button -->
        </tr>
        <!--End Neu User und Einlogon button -->

    </table>
    <!-- End Body-->
    <br />
    <!--Start Passwort Vergessen  -->

    <!--Start Passwort vergessen INFO  -->
    <table style="width: 100%; background-color: #CCFF99;">
        <tr>
            <td style="width: 100%">
                <p style="text-align: center; word-spacing: normal; font-style: normal; font-size: small; font-weight: normal; color: #FF0000">
                    Wenn Sie Ihr Passwort vergessen haben, geben Sie bitte Ihre E-Mail-Adresse ein. Sie erhalten von uns sofort eine E-Mail mit einer temporären E-Mail-Adresse und einem temporären Passwort, damit Sie sich auf Ihrer Seite zur Passwortänderung in Logon anmelden können.
                </p>
            </td>
        </tr>
    </table>
    <!--End Passwort vergessen INFO  -->

    <!--Start Email-Eingaben  -->
    <table style="width: 100%; background-color: #CCFF99; text-align: center;">

        <tr>
            <td style="width: 30%"></td>
            <td style="width: 40%">
                <input id="txtemailtoPass" maxlength="100" placeholder="Wenn Sie Ihr Passwort vergessen, geben Ihre Emeil-Adresse ein" class="form-control" type="email" runat="server" style="background-color: #99FFCC"><br />
                <asp:Button ID="btnEmailsenden" class="btn btn-success btn-lg pull-left" runat="server" Text="Senden" OnClick="BtnEmailsenden_Click" />
                <asp:Label ID="lblEmailError" runat="server" CssClass="pull-right" Text="Die E-mail wurde bereits nict registriert!" BorderStyle="Inset" Font-Size="Small" ForeColor="red" Visible="False"></asp:Label>
                <asp:Label ID="lblEmailtopassLeer" runat="server" Text="Bitte geben Sie Ihre Email_Adresse ein!" Visible="False" ForeColor="Red" Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 30%"></td>
        </tr>
    </table>
    <!--End Email-Eingaben  -->

    <!--End Passwort Vergessen -->
</asp:Content>
