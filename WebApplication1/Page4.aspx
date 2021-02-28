<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Page4.aspx.cs" Inherits="WebApplication1.Page4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                    <p><a href="Page3.aspx">Schritt 2</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-3" type="button" class="btn btn-primary btn-circle">4</a>
                    <p>Schritt 3</p>
                </div>
            </div>
        </div>
       
            <div class="row setup-content" id="step-3">
                <div class="col-xs-12">
                    <div class="col-md-12">

                        <a class="btn btn-success btn-lg pull-left" href="Page3.html" type="submit" role="button">zurück</a>
                        <button class="btn btn-success btn-lg pull-right" type="submit" role="button">Snden</button>
                    </div>
                </div>
            </div>
       
    </div>
   

</asp:Content>
