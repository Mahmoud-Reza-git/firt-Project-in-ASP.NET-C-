<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="WebApplication1.Page2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="progress">
            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
                50%
            </div>
        </div>
        <div class="stepwizard">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-default btn-circle" disabled="disabled">1</a>
                    <p><a href="Page1.aspx">Anfangen</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-primary btn-circle">2</a>
                    <p>Schritt 1</p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                    <p><a href="Page3.aspx">Schritt 2</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                    <p><a href="Page4.aspx">Schritt 3</a></p>
                </div>
            </div>
        </div>
       
            <div class="row setup-content" id="step-1">
                <div class="col-xs-12">
                    <div class="col-md-12">

                        <fieldset class="form-group">
                            <label class="control-label">Vorname</label>
                            <input maxlength="100" type="text" required="required" class="form-control" placeholder="Vorname eingeben" />
                        </fieldset>
                        <fieldset class="form-group">
                            <label class="control-label">Nachname</label>
                            <input maxlength="100" type="text" required="required" class="form-control" placeholder="Nachname eingeben" />
                        </fieldset>
                        <fieldset class="form-group">
                            <label class="control-label">Company</label>
                            <input maxlength="200" type="text" required="required" class="form-control" placeholder="Company Name eingeben" />
                        </fieldset>
                        <fieldset class="form-group">
                            <label class="control-label">Company Adresse</label>
                            <input maxlength="200" type="text" required="required" class="form-control" placeholder="Die Address" />
                        </fieldset>
                        <fieldset class="form-group">
                            <label class="control-label">Telefon Nummer</label>
                            <input maxlength="200" type="number" required="required" class="form-control" placeholder="Telefon Nummer" />
                        </fieldset>
                        <fieldset class="form-group">
                            <label class="control-label">Fax Nummer</label>
                            <input maxlength="200" type="number" required="required" class="form-control" placeholder="Fax Nummer" />
                        </fieldset>
                        <fieldset class="form-group">
                            <label class="control-label">Email Adresse</label>
                            <input maxlength="200" type="email" required="required" class="form-control" placeholder="Email Adresse" />
                        </fieldset>
                        <a class="btn btn-success btn-lg pull-left" href="Page1.aspx" type="submit" role="button">zurück</a>
                        <a class="btn btn-success btn-lg pull-right" href="Page3.aspx" type="submit" role="button">Next</a>
                    </div>
                    <div class="footer" align="center">
                        <p>&copy;((Beispiele information))</p>
                    </div>
                </div>
            </div>


       
    </div>
</asp:Content>
