<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="WebApplication1.Pages.Page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  

    <style type="text/css">
        .auto-style5 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
    

    <!------ Include the above in your HEAD tag ---------->

    <div class="container">
        <br />
        <div class="progress">
            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
                25%
                

            </div>
        </div>
        <div class="stepwizard">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                    <p>Anfangen</p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-default btn-circle" disabled="disabled">1</a>
                    <p><a href="Page2.aspx">Schritt 1</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                    <p><a href="Page3.aspx">Schritt 2</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                    <p><a href="Page4.aspx">Schritt 3</a></p>
                </div>
            </div>
        </div>
    </div>
    <!------Ende HEAD tag ---------->

    <div class="container"  style="background-color: #CCFFCC">
        
            <div class="row setup-content" id="step-3">
                <div class="auto-style5">
                    <div class="col-md-12">
                        <div class="card bg-light mb-3">
                            <div class="card-header text-center">
                                information
                            </div>
                            <div class="card-body ">
                                <h2 class="card-title text-center">Information</h2>
                                <p class="card-text">
                                    Datenschutzhinweise :<br />
                                    Hinweise zur Verarbeitung Ihrer Daten gemäß Art. 13 der Europäischen Datenschutzgrundverordnung (DS-GVO)
                                    <a href="https://lehrkraefteakademie.hessen.de/datenschutzhinweise-wwwlehrkraefteakademiehessende"><-Hier können Sie lesen-></a>
                                </p>
                                <p class="card-text">
                                    hier ist auch unsere Hausordnung,die Sie befilgen sollen :<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Hausordnung</asp:LinkButton>
                                </p>
                                
                               
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Hiermit akzeptiere ich" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                   
                                
                            </div>
                            

                            <asp:Button ID="Button" runat="server" Text="Weiter" class="btn btn-success btn-lg pull-right" type="senden" OnClick="Weiter_Click"/>
                            

                    </div>
                </div>
            </div>
                
        
        </div>
        </div>
</asp:Content>
