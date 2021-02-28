<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Hausordnung.aspx.cs" Inherits="WebApplication1.Pages.Hausordnung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Start Pdf-->
    <div class="container">
    <embed src="../Image/hausordnung-2018-10-01-hp.pdf" type="application/pdf" style="width: 100%; height : 1000px " />
    </div>
    <!--End Pdf-->

</asp:Content>
