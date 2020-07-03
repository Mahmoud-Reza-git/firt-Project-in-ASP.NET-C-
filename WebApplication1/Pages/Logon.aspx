<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="WebApplication1.Pages.Logon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table style="width: 100%">
        <tr>
            <td style="width: 20%"></td>
            <td style="width: 60%; background-color: #CCFFCC">
                <asp:Label ID="lblLogon" runat="server" Text="LOGON" BorderStyle="Inset" Font-Bold="True" Font-Size="Larger" ForeColor="#0099FF" Font-Overline="False"></asp:Label><br />
                <br />
                <fieldset class="form-group">
                    <asp:Label class="control-label" ID="Label1" runat="server" Text="Email:"></asp:Label>
                    <input id="txtUserName" maxlength="100" type="text" required="required" class="form-control" runat="server">
                    <asp:RequiredFieldValidator ControlToValidate="txtUserName"
                        Display="Static" ErrorMessage="Bitte eingeben Sie Ihre Email-Adresse " runat="server"
                        ID="vUserName" />
                </fieldset>

                <fieldset class="form-group">
                    <asp:Label ID="Label2" class="control-label" runat="server" Text="Password:"></asp:Label>
                    <input id="txtUserPass" maxlength="100" required="required" class="form-control" type="password" runat="server">
                    <asp:RequiredFieldValidator ControlToValidate="txtUserPass"
                        Display="Static" ErrorMessage="Bitte eingeben Sie Ihr Passwort" runat="server"
                        ID="vUserPass" />
                </fieldset>
                <fieldset class="form-group">
                    <asp:Label ID="Label3" runat="server" class="control-label" Text="Cooki"></asp:Label><br />
                    <asp:CheckBox ID="chkPersistCookie" runat="server" AutoPostBack="false" />
                </fieldset>

                <input type="submit" value="Logon" class="btn btn-success btn-lg pull-left" runat="server" id="cmdLogin">
                <asp:Button ID="Button1" class="btn btn-success btn-lg pull-right" runat="server" Text="Neu Register" OnClick="Button1_Click" />

            </td>
            <td style="width: 20%"></td>

        </tr>
        <tr style="height: 60px">
            <td style="width: 20%"></td>
            <td style="width: 60%; text-align: center; background-color: #CCFFCC;">
                <asp:Label ID="lblMsg" ForeColor="Red" Font-Name="Verdana" Font-Size="10pt" runat="server" Font-Names="Verdana" Visible="False" BorderStyle="Inset">Falsche Eingabe oder Sie Sollen neu registrieren!!</asp:Label>
                <asp:Label ID="lblMsg1" runat="server" Text="Jetz Können Sie Einlogon" ForeColor="Green" Font-Name="Verdana" Font-Size="10pt" runat="server" Font-Names="Verdana" Visible="False" BorderStyle="Inset"></asp:Label>
                
            </td>
            <td style="width: 20%"></td>


        </tr>
    </table>

</asp:Content>
