<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="BookingAnsicht.aspx.cs" Inherits="WebApplication1.Pages.BookingAnsicht" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#999999" BorderStyle="None" BorderWidth="5px" CellPadding="10" DataSourceID="SqlDataSource1"
        GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="#DCDCDC" /> 
        <Columns>
            <asp:BoundField DataField="Vorname" HeaderText="Vorname" SortExpression="Vorname" />
            <asp:BoundField DataField="Nachname" HeaderText="Nachname" SortExpression="Nachname" />
            <asp:BoundField DataField="KursName" HeaderText="KursName" SortExpression="KursName" />
            <asp:BoundField DataField="Raum_Zeichen" HeaderText="Raum_Zeichen" SortExpression="Raum_Zeichen" />
            <asp:BoundField DataField="StartDatum" HeaderText="StartDatum" SortExpression="StartDatum" />
            <asp:BoundField DataField="EndDatum" HeaderText="EndDatum" SortExpression="EndDatum" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center"  Width="250px"/>
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center"  Width="250px" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center"  Width="250px"/>
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RaumVerwaltungConnectionString %>" SelectCommand="BookingAnsicht" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <table style="width: 90%; text-align: center;">
        <tr>
            <td style="width: 30%"> <asp:Button ID="BtnDienstControl" runat="server" class="btn btn-success btn-lg" Text="DiensStelleControl" OnClick="BtnDienstControl_Click" /></td>
            <td style="width: 30%"> <input type="submit" Value="Ausloggen" runat="server" id="cmdSignOut" class="btn btn-success btn-lg center-block"></td>
            <td style="width: 30%"><asp:Button ID="RaumControl" runat="server" class="btn btn-success btn-lg" Text="RaumControl" OnClick="RaumControl_Click" /></td>

        </tr>
    </table>
    
    
    
</asp:Content>
