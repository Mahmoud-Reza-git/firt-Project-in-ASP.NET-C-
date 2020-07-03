<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html lang="de-de">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, inital-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <title>RaumVerwaltung</title>

    <link href="~/Content/fontawesome.min.css" rel="stylesheet" />
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="~/Content/bootstrap-select.min.css" rel="stylesheet" />
</head>
<body>
    <form id="frmRaumVerwaltung" runat="server">
        <asp:ScriptManager runat="server" ID="smRaumVerwaltung">
            <Scripts>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Path="~/Script/popper.min.js" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Path="~/Scripts/bootstrap-select.min.js" />
            </Scripts>
        </asp:ScriptManager>

        <div class="container">
            
        </div>
    </form>
</body>
</html>
