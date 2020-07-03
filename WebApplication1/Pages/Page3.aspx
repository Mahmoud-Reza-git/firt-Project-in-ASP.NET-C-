<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="WebApplication1.Pages.Page3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <div class="container text-uppercase">
        <div class="progress">
            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
                75%
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
                    <a href="#step-2" type="button" class="btn btn-primary btn-circle">3</a>
                    <p>Schritt 2</p>

                </div>
                <div class="stepwizard-step">
                    <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                    <p><a href="Page4.aspx">Schritt 3</a></p>
                </div>
            </div>
        </div>

        <div class="container" style="background-color: #CCFFCC">


            <div class="row setup-content" id="step-2">
                <div class="col-xs-12">
                    <div class="col-md-12">

                        <hr>
                        <h1 class="text-center">Raum wählen</h1>
                        <hr>

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
                                    <td>3</td>
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
                                    <td>40</td>
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
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                    <div class="input-group date">
                                        <input id="datetimepicker1" type="text" class="form-control date1" runat="server"/>                                        
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                    <div class="input-group date" style="left: -5px; top: 0px">
                                        <input id="datetimepicker2" type="text" class="form-control date2" runat="server"/>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- End DatePicker-->
                       
                        <!--Start Selection Option-->
                        <table style="width: 100%; text-align: center">
                            <tr>
                                <!--Start Select Raum-->
                                <td> <!--DataTextFormatString="select" -->
                                    <asp:Label ID="Label14" runat="server" Text="Raum wählen:" Font-Size="10pt"></asp:Label><br />
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-success btn-lg"> 
                                       
                                     

                                    </asp:DropDownList>
                                </td>
                                <!--End Select Raum-->
                                 <!--Strat Kursname-->
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text="Kurs Zeichen :" Font-Size="10pt"></asp:Label>

                                    <asp:TextBox ID="txtKursName" runat="server" class="btn btn-success btn-lg center-block" BorderColor="#66FFFF" BorderStyle="Solid" align="center"></asp:TextBox>
                                </td>
                                <!--End Kursname-->
                            </tr>
                            <!--Strat Weiter Button-->
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="Button1" runat="server" Text="Weiter" class="btn btn-success btn-lg" OnClick="Button1_Click" />
                                </td>
                            </tr>
                             <!--End Weiter Button-->
                        </table>
                        <!--End Selection Option-->


                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- Start DataTable jQuery-->
    <script>
        $(document).ready(function () {
            $(document).ready(function () {
                $('table').DataTable({
                    dom: 'Blfrtip',
                    buttons: [{
                        text: 'Export To Excel',
                        extend: 'excelHtml5',
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
                                    return column === 4 ? "" : data;
                                }
                            }
                        },
                        footer: false,
                        customize: function (xlsx) {
                            var sheet = xlsx.xl.worksheets['sheet1.xml'];
                            //$('c[r=A1] t', sheet).text( 'Custom text' );
                            //$('row c[r^="C"]', sheet).attr('s', '2');
                        }
                    }]
                });
            });
        });

    </script>
    <!-- End DataTable jQuery-->
    <!---->
    <!-- Start DatePicker jQuery-->
    <script type="text/javascript">
        $(function () {
          
            $('.date1').datetimepicker({
               format : 'd.m.y H:i '
              
            });
            $('.date2').datetimepicker({
                useCurrent: false, //Important! See issue #1075
                format : 'd.m.y H:i'
            });
            $(".date1").on("dp.change", function (e) {
                $('.date1').data("DateTimePicker").minDate(e.date);
            });
            $(".date2").on("dp.change", function (e) {
                $('.date2').data("DateTimePicker").maxDate(e.date);
            });
        });
    </script>
    <!-- End DatePicker jQuery-->
     

</asp:Content>
