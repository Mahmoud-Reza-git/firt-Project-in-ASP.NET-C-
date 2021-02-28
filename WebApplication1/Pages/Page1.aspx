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
            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">
                25%     

            </div>
        </div>
        <div class="stepwizard">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-primary btn-circle" aria-disabled="true" >1</a>
                    <p>Anfangen</p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-default btn-circle" aria-disabled="false" >2</a>
                    <p><a href="#step-2">Schritt 1</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-default btn-circle" aria-disabled="false" >3</a>
                    <p><a href="#step-2">Schritt 2</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-default btn-circle" aria-disabled="false" >4</a>
                    <p><a href="#step-2">Schritt 3</a></p>
                </div>
            </div>
        </div>
    </div>
    <!------Ende HEAD tag ---------->

    <!------Start Body ---------->
    <div class="container" style="background-color: #CCFFCC">

        <div class="row setup-content" id="step-3">
            <div class="auto-style5">
                <div class="col-md-12">
                    <div class="card bg-light mb-3" style="left: 0px; top: 0px">
                        <div class="card-header text-center">
                           <h2 class="card-title text-center">Information</h2>
                        </div>
                        <div class="card-body ">                            
                            <p class="card-text" style="font-size: small">
                                Datenschutzhinweise :<br />
                                Hinweise zur Verarbeitung Ihrer Daten gemäß Art. 13 der Europäischen Datenschutzgrundverordnung (DS-GVO)
                                    <a href="https://lehrkraefteakademie.hessen.de/datenschutzhinweise-wwwlehrkraefteakademiehessende"><-Hier können Sie lesen-></a>
                            </p>
                            <p class="card-text" style="font-size: small">
                                 Hausordnung:
                                 Hier Finden Sie auch unsere Hausordnung,die Sie berücksichtigen sollen :<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Hausordnung</asp:LinkButton>
                            </p>
                            <p class="card-text">

                            </p>
                            <!------Start CheckBox ---------->
                            <asp:Label ID="Checkbox" runat="server" Text="Hiermit akzeptiere ich  " AssociatedControlID="CheckBox1" Font-Bold="True" Font-Size="Small" ForeColor="#009933"></asp:Label><asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Font-Bold="False" Font-Size="Small" ForeColor="#00CC00" Font-Overline="False" Font-Strikeout="False" />
                            <!------Start CheckBox ----------> 
                        </div>
                    <!------Start Button ---------->
                        <table style="width:100%; text-align: center;">
                            <tr>
                                <td><asp:Button ID="Button" runat="server" Text="Weiter" class="btn btn-success btn-lg" type="senden" OnClick="Weiter_Click" /></td>
                            </tr>
                        </table>
                        
                    <!------End Button ---------->
                    </div>
                </div>
            </div>
        </div>
    </div>
     <!------End Body ---------->

</asp:Content>
