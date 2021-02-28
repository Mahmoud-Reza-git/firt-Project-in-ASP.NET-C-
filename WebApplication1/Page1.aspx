<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


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

    <div class="container">
        
            <div class="row setup-content" id="step-3">
                <div class="col-xs-12">
                    <div class="col-md-12">
                        <div class="card bg-light mb-3">
                            <div class="card-header text-center">
                                information
                            </div>
                            <div class="card-body ">
                                <h2 class="card-title text-center">Information</h2>
                                <p class="card-text">
                                    Die Hessische Lehrkräfteakademie ist die Ausbildungsbehörde für den pädagogischen Vorbereitungsdienst in Hessen. Die Lehrkräfteakademie nimmt ihre Aufgaben durch zentrale Einrichtungen oder durch regionale Niederlassungen (Studienseminare) wahr. Die Studienseminare vermitteln im pädagogischen Vorbereitungsdienst praxisorientierte Professionalität unter besonderer Berücksichtigung der unterschiedlichen Bildungsziele der einzelnen Bildungsgänge und Schulformen. Sie unterstützen neben anderen Trägereinrichtungen durch ihre Veranstaltungen auch das berufsbegleitende Lernen der Lehrkräfte.

                                    Die Hessische Lehrkräfteakademie ist für die Qualifizierung des Ausbildungspersonals an den hessischen Studienseminaren verantwortlich und führt Fort- und Weiterbildungsmaßnahmen für Schulen und Lehrkräfte durch. Sie qualifiziert Lehrkräfte für Beratungs- und Fortbildungstätigkeiten sowie für besondere Vorhaben der Schulentwicklung. Sie übt auch die Fachaufsicht über die hessischen Medienzentren aus.
                                </p>
                                
                                <p action="send-form-information.php" method="post">
                                    <input type="checkbox"> Hiermit akzeptire ich
                                </p>
                            </div>
                            <a class="btn btn-success btn-lg" href="Page2.aspx" type="submit">Next</a>
                            <div class="card-footer text-muted">
                                Kontakt
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        
        </div>
</asp:Content>
