<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="WebApplication1.Page3" %>
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

        <div class="container">


            <div class="row setup-content" id="step-2">
                <div class="col-xs-12">
                    <div class="col-md-12">

                        <hr>
                        <h1 class="text-center">Raum wählen</h1>
                        <hr>

                        <!-- start Table-->
                        <table class="table table-hover display datataable" id="example" style="width:100%" role="grid" aria-describedby="example-info">

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
                                    <th scope="row">1</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>23</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td style="color: red">&#10004;</td>
                                    <td style="color: red">&#10004;</td>
                                    <td style="color: red">&#10006;</td>
                                    <td style="color: red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>36</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">3</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>25</td>
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td>41</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">5</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td>39</td>
                                </tr>
                                <tr>
                                    <th scope="row">6</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>37</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">7</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>52</td>
                                </tr>
                                <tr>
                                    <th scope="row">8</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>20</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">9</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>35</td>
                                </tr>
                                <tr>
                                    <th scope="row">10</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>10</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">11</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <th scope="row">12</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>13</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">13</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>40</td>
                                </tr>
                                <tr>
                                    <th scope="row">14</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>38</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">15</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>20</td>
                                </tr>
                                <tr>
                                    <th scope="row">16</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>18</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">17</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>10</td>
                                </tr>
                                <tr>
                                    <th scope="row">18</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>13</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">19</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>8</td>
                                </tr>
                                <tr>
                                    <th scope="row">20</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>19</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">21</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>16</td>
                                </tr>
                                <tr>
                                    <th scope="row">22</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>10</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">23</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <th scope="row">24</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>18</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">25</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>17</td>
                                </tr>
                                <tr>
                                    <th scope="row">26</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>12</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">27</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>7</td>
                                </tr>
                                <tr>
                                    <th scope="row">28</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>30</td>
                                </tr>

                                <tr class="table-info">
                                    <th scope="row">29</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10006;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>28</td>
                                </tr>
                                <tr>
                                    <th scope="row">30</th>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td style="color : red">&#10004;</td>
                                    <td>18</td>
                                </tr>


                            </tbody>
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
                        <!-- End Table-->
                        <a href="Page2.aspx" class="btn btn-success btn-lg pull-left" type="submit">zurück</a>
                        <a href="Page4.aspx" class="btn btn-success btn-lg pull-right" type="submit">Next</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
  
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

   

</asp:Content>
