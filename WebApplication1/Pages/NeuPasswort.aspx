<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master"  AutoEventWireup="true" CodeBehind="NeuPasswort.aspx.cs" Inherits="WebApplication1.Pages.NeuPasswort" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table style="width: 100%">
        <tr>
            <td style="width: 30%"></td>
            <td style="width: 40%; background-color: #CCFFCC;" >
                 <asp:Label ID="lblNeuUser" runat="server" Text="Neu Passwort" ForeColor="#0066FF" Font-Size="Medium" Font-Bold="True"></asp:Label><asp:Label ID="lblErrorPass" runat="server" Text="Die beide Passwörter sollen gleich sein" Visible="False" ForeColor="Red"></asp:Label><br />
                 <asp:Label ID="lblPass" runat="server" Text="Das Paswort wurde geändert!" Visible="False" Font-Size="Small" ForeColor="#00CC00"></asp:Label>
                <br />          

                <fieldset class="form-group">
                    <asp:Label ID="Password" class="control-label" runat="server" Text="Password:"></asp:Label>
                    <input id="txtPass1" maxlength="100" class="form-control" type="password" placeholder="Bitte eingeben Sie Ihr Password " runat="server" />
                    <asp:Label ID="lblpass1" runat="server" Text="Beide Passworte sollen gleich sein"></asp:Label>
                    <asp:Label ID="lblPassLeer" runat="server" Text="***" Visible="False" ForeColor="Red"></asp:Label>
                </fieldset>

                <fieldset class="form-group">
                    <asp:Label ID="Label6" class="control-label" runat="server" Text="Password:"></asp:Label>
                    <input id="txtPass2" maxlength="100" class="form-control" type="password" placeholder="Bitte eingeben Sie Ihr Password nocmal" runat="server">
                    <asp:Label ID="lblpass2" runat="server" Text="Beide Passworte sollen gleich sein"></asp:Label>
                    <asp:Label ID="lblPassLeer2" runat="server" Text="***" Visible="False" ForeColor="Red"></asp:Label>
                </fieldset>
            </td>
            <td style="width: 30%"></td>

        </tr>
        <tr>
            <td style="width: 30%"></td>
            <td style="width: 40%;  background-color: #CCFFCC;">
                 <asp:Button ID="Bestätigen" class="btn btn-success btn-lg pull-left" runat="server" Text="Bestetigen" OnClick="Bestätigen_Click" />
               
                 <input type="submit" Value="Einlogen" runat="server" id="cmdSignOut" class="btn btn-success btn-lg pull-right">
            </td>
            <td style="width: 30%"></td>
            
        </tr>
    </table>
</asp:Content>
