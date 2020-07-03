<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="table.aspx.cs" Inherits="WebApplication1.Pages.table" %>
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

                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" AllowSorting="True">
                            <Columns>
                                <asp:BoundField DataField="Raum_Zeichen" HeaderText="Raum_Zeichen" SortExpression="Raum_Zeichen" />
                                <asp:BoundField DataField="Sitzplatz" HeaderText="Sitzplatz" SortExpression="Sitzplatz" />
                                <asp:BoundField DataField="Beamer" HeaderText="Beamer" SortExpression="Beamer" />
                                <asp:BoundField DataField="Bildschirm" HeaderText="Bildschirm" SortExpression="Bildschirm" />
                                <asp:BoundField DataField="Flipchart" HeaderText="Flipchart" SortExpression="Flipchart" />
                                <asp:BoundField DataField="Whitboard" HeaderText="Whitboard" SortExpression="Whitboard" />
                                <asp:BoundField DataField="Laptop" HeaderText="Laptop" SortExpression="Laptop" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RaumVerwaltungConnectionString %>" SelectCommand="SELECT [Raum_Zeichen], [Bildschirm], [Flipchart], [Whitboard], [Laptop], [Beamer], [Sitzplatz] FROM [Raum] ORDER BY [Sitzplatz] DESC, [Bildschirm] DESC, [Flipchart] DESC"></asp:SqlDataSource>
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
