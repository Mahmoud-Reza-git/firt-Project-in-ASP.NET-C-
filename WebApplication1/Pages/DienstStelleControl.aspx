<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="DienstStelleControl.aspx.cs" Inherits="WebApplication1.Pages.DienstStelleControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--GridView Raum--%>
    <asp:GridView ID="DienstStelle" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="Id_DienstName"
        ShowHeaderWhenEmpty="true"
        OnRowCommand ="DienstStelle_RowCommand" OnRowEditing="DienstStelle_RowEditing" OnRowCancelingEdit="DienstStelle_RowCancelingEdit"
        OnRowUpdating="DienstStelle_RowUpdating" OnRowDeleting="DienstStelle_RowDeleting"
        
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="3px" CellPadding="3" GridLines="Vertical"  Height="18px" Width="16px" CssClass="auto-style5">
        <AlternatingRowStyle BackColor="#DCDCDC"/>
       
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Justify" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />

        <Columns>
            <%--Strasse--%>
            <asp:TemplateField HeaderText="Adresse">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Strasse") %>' runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtStrasse" Text='<%# Eval("Strasse") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtStrasseFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

             <%--HausNr--%>
            <asp:TemplateField HeaderText="HausNr">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("HausNr") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtHausNr" Text='<%# Eval("HausNr") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtHausNrFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <%--PLZ--%>
            <asp:TemplateField HeaderText="PLZ">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("PLZ") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtPLZ" Text='<%# Eval("PLZ") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtPLZFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <%--Wohnort--%>
            <asp:TemplateField HeaderText="Wohnort">
                <ItemTemplate>
                    <asp:Label Text='<%#Eval("Wohnort") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtWohnort" Text='<%# Eval("Wohnort") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtWohnortFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/Image/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                    <asp:ImageButton ImageUrl="~/Image/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:ImageButton ImageUrl="~/Image/save-icon-9.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                    <asp:ImageButton ImageUrl="~/Image/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:ImageButton ImageUrl="~/Image/computer-icons-apple-icon-image-format-download-download-free-icon-add-vectors.jpg" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px" />
                </FooterTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>
      <%--  Message Lable--%>
         <br />
    <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />

        <br />
    <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
     <table style="width: 90%; text-align: center;">
        <tr>
            <td style="width: 30%"> <asp:Button ID="BtnBooking" runat="server" class="btn btn-success btn-lg" Text="BookingAnsicht" OnClick="BtnBooking_Click" /></td>
            <td style="width: 30%">  <input type="submit" Value="Ausloggen" runat="server" id="cmdSignOut" class="btn btn-success btn-lg center-block"></td>
            <td style="width: 30%"><asp:Button ID="BtnRaumContro" runat="server" class="btn btn-success btn-lg" Text="RaumControl" OnClick="BtnRaumContro_Click" /></td>

        </tr>
    </table>
</asp:Content>
