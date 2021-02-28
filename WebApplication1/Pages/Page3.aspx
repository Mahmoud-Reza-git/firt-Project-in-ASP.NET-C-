<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="WebApplication1.Pages.Page3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    <!------ Include the above in your HEAD tag ---------->
    <div class="container text-uppercase">


        <div class="progress">
            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
                75%
            </div>
        </div>
        <div class="stepwizard">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step">
                    <a href="Page1.aspx" type="button" class="btn btn-default btn-circle" aria-disabled="false">1</a>
                    <p><a href="Page1.aspx">Anfangen</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#Page2.aspx" type="button" class="btn btn-default btn-circle" aria-disabled="false">2</a>
                    <p><a href="Page2.aspx">Schritt 1</a></p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-primary btn-circle" aria-disabled="true">3</a>
                    <p>Schritt 2</p>

                </div>
                <div class="stepwizard-step">
                    <a href="#step-3" type="button" class="btn btn-default btn-circle" aria-disabled="false">4</a>
                    <p><a href="#step-3">Schritt 3</a></p>
                </div>
            </div>
        </div>
    </div>
    <!------Ende HEAD tag ---------->

    <!-- Start Body-->
    <div class="container" style="background-color: #CCFFCC">
        <div class="row setup-content" id="step-2">
            <div class="col-xs-12">
                <div class="col-md-12">
                    <h1 class="text-center">Raum wählen</h1>
                    <!-- start DataTable-->
                    <table class="table table-hover display datataable" id="example" style="width: 100%" role="grid" aria-describedby="example-info">

                        <!--start Table head-->
                        <thead class="table-warning">
                            <tr>

                                <th>Raum</th>
                                <th>Bildschirm</th>
                                <th>Flipchart</th>
                                <th>Whiteboard</th>
                                <th>Laptop</th>
                                <th>Beamer</th>
                                <th>Sitzplatz</th>
                            </tr>
                        </thead>
                        <!-- End Table head-->
                        <!--start Table body-->
                        <tbody>

                            <tr class="table-info">
                                <th scope="row">
                                    <asp:Label ID="Label1" runat="server" Text="C 3.14"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td>23</td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <asp:Label ID="Label2" runat="server" Text="C 3.15"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td>36</td>
                            </tr>
                            <tr class="table-info">
                                <th scope="row">
                                    <asp:Label ID="Label3" runat="server" Text="C 3.16"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td>25</td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <asp:Label ID="Label4" runat="server" Text="C 3.17"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td>41</td>
                            </tr>
                            <tr class="table-info">
                                <th scope="row">
                                    <asp:Label ID="Label5" runat="server" Text="C 3.18"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td>39</td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <asp:Label ID="Label6" runat="server" Text="C 3.19"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td>37</td>
                            </tr>
                            <tr class="table-info">
                                <th scope="row">
                                    <asp:Label ID="Label7" runat="server" Text="C 3.20"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td>52</td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <asp:Label ID="Label8" runat="server" Text="C 3.21"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td>20</td>
                            </tr>
                            <tr class="table-info">
                                <th scope="row">
                                    <asp:Label ID="Label9" runat="server" Text="C 3.22"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10004;</td>
                                <td>35</td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <asp:Label ID="Label10" runat="server" Text="C 3.23"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td>10</td>
                            </tr>
                            <tr class="table-info">
                                <th scope="row">
                                    <asp:Label ID="Label11" runat="server" Text="C 3.24"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td>10</td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <asp:Label ID="Label12" runat="server" Text="C 3.25"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td>13</td>
                            </tr>
                            <tr class="table-info">
                                <th scope="row">
                                    <asp:Label ID="Label13" runat="server" Text="C 3.26"></asp:Label></th>
                                <td style="color: red">&#10004;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10006;</td>
                                <td style="color: red">&#10004;</td>
                                <td>25</td>
                            </tr>

                            <!--End Table body-->
                            <!--start Table foot-->
                            <tfoot class="table-warning">
                                <tr>
                                    <th>Raum</th>
                                    <th>Bildschirm</th>
                                    <th>Flipchart</th>
                                    <th>Whiteboard</th>
                                    <th>Laptop</th>
                                    <th>Beamer</th>
                                    <th>Sitzplatz</th>
                                </tr>

                            </tfoot>
                        <!-- End Table foot-->

                    </table>
                    <!-- End DataTable-->

                    <!-- start DatePicker-->
                    <table style="width: 100%; text-align: left">
                        <tr>
                            <!-- start Datum-->
                            <td style="width: 50%">
                                <div class="form-group">
                                    <asp:Label ID="Startdate" runat="server" Text="Start Datum" Font-Size="Small" ForeColor="#336600"></asp:Label>
                                    <div class="input-group">

                                        <input id="datetimepicker1" type="text" class="form-control date1" runat="server" required="required" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </td>
                            <!-- End Datum-->
                            <td style="width: 50%">
                                <div class="form-group">

                                    <asp:Label ID="Enddate" runat="server" Text="End Datum" Font-Size="Small" ForeColor="#336600"></asp:Label>
                                    <asp:Label ID="DateError" runat="server" Text="Ungültige zeit !! End Datum könnte nicht vor Start Datum sein!!" Visible="False" ForeColor="Red" Font-Size="Small"></asp:Label>
                                    <div class="input-group date" style="left: -5px; top: 0px">
                                        <input id="datetimepicker2" type="text" class="form-control date2" runat="server" required="required" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>

                                </div>
                            </td>
                        </tr>
                    </table>

                    <!-- End DatePicker-->

                    <!--Start Selection Option-->
                    <table style="width: 90%; text-align: center">
                        <tr>
                            <!--Start Select Raum-->
                            <td style="width: 30%">
                                <!--DataTextFormatString="select" -->
                                <asp:Label ID="Label14" runat="server" Text="Raum wählen:" Font-Size="10pt"></asp:Label><br />
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-success btn-lg">
                                </asp:DropDownList>
                            </td>
                            <!--End Select Raum-->
                            <td style="width: 30%"></td>
                            <!--Strat Kursname-->
                            <td style="width: 30%">
                                <asp:Label ID="Label15" runat="server" Text="Kurs Zeichen :" Font-Size="10pt"></asp:Label>

                                <asp:TextBox ID="txtKursName" runat="server" class="btn btn-success btn-lg" BorderColor="#66FFFF" BorderStyle="Solid" align="center" required="required"></asp:TextBox>
                            </td>
                            <!--End Kursname-->
                        </tr>
                        <!--Strat Weiter Button-->
                        <tr>
                            <td style="width: 30%"></td>
                            <td style="width: 30%">
                                <asp:Button ID="Button1" runat="server" Text="Weiter" class="btn btn-success btn-lg" OnClick="Button1_Click" />
                            </td>
                            <td style="width: 30%"></td>
                        </tr>
                        <!--End Weiter Button-->
                    </table>
                    <!--End Selection Option-->


                </div>
            </div>
        </div>
    </div>
    <!-- End Body-->

    <!-- Start DataTable jQuery-->
    <script>
        $(document).ready(function () {
            $(document).ready(function () {
                $('table').DataTable({
                    //dom: 'Blfrtip',
                    buttons: [{
                        //text: 'Export To Excel',
                        //extend: 'excelHtml5',
                        exportOptions: {
                            modifier: {
                                selected: true
                            },
                            columns: [0, 1, 2, 3],
                            format: {
                                header: function (data, columnIdx) {
                                    return data;
                                },
                                body: function (data, column, row) {
                                    // Strip $ from salary column to make it numeric
                                    debugger;
                                    return column === 4? "" : data;
                                }
                            }
                        },
                        footer: false,
                        customize: function (xlsx) {
                            var sheet = xlsx.xl.worksheets['sheet1.xml'];

                        }
                    }]
                });
            });
        });

    </script>
    <!-- End DataTable jQuery-->

    <!-- Start DatePicker jQuery-->
    <script type="text/javascript">
        $(function () {

            var startDate;
            $(".date1").datetimepicker({
                timepicker: true,
                closeOnDateSelect: false,
                closeOnTimeSelect: true,
                initTime: true,
                format: 'd.m.Y H:i',
                minDate: 0,
                roundTime: 'ceil',
                onChangeDateTime: function (dp, $input) {
                    startDate = $(".date1").val();
                }
            });
            $(".date2").datetimepicker({
                timepicker: true,
                closeOnDateSelect: false,
                closeOnTimeSelect: true,
                initTime: true,
                format: 'd.m.Y H:i',
                onChangeDateTime: function (dp, $input) {
                    var endDate = $(".date2").val();
                }
            });
        });
    </script>
    <!-- End DatePicker jQuery-->

</asp:Content>
