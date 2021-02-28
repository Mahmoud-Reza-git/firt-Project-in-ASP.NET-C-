<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="RaumContorol.aspx.cs" Inherits="WebApplication1.Pages.RaumContorol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="5px" CellPadding="10" DataKeyNames="Id_DienstName" DataSourceID="SqlDataSource1" GridLines="None" CellSpacing="1">
        <Columns>
            <asp:BoundField DataField="Id_DienstName" HeaderText="Id_DienstName" InsertVisible="False" ReadOnly="True" SortExpression="Id_DienstName" />
            <asp:BoundField DataField="Wohnort" HeaderText="Wohnort" SortExpression="Wohnort" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="center" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
           
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RaumVerwaltungConnectionString %>" SelectCommand="SELECT [Id_DienstName], [Wohnort] FROM [DienstStelle] ORDER BY [Id_DienstName]"></asp:SqlDataSource>
           <br />
 
     <%--GridView Raum--%>
    <asp:GridView ID="Raum" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="Id_Raum"
        ShowHeaderWhenEmpty="True"
        OnRowCommand ="Raum_RowCommand" OnRowEditing="Raum_RowEditing" OnRowCancelingEdit="Raum_RowCancelingEdit"
        OnRowUpdating="Raum_RowUpdating" OnRowDeleting="Raum_RowDeleting"
        
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle"  HorizontalAlign="Center" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle"  RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle">
        <AlternatingRowStyle BackColor="#F7F7F7"/>
       
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" HorizontalAlign="Center"  Width="100px"/>
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px"  />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right"  Width="100px" />        
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center"  Width="100px" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />

        <Columns>
            <asp:TemplateField HeaderText="Raum Zeichen">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Raum_Zeichen") %>' runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtRaums" Text='<%# Eval("Raum_Zeichen") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtraumFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Bildschirm">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Bildschirm") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtBildschirm" Text='<%# Eval("Bildschirm") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtBildschirmFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Flipchart">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Flipchart") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtFlipchart" Text='<%# Eval("Flipchart") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtFlipchartFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Whitboard">
                <ItemTemplate>
                    <asp:Label Text='<%#Eval("Whitboard") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtWhitboard" Text='<%# Eval("Whitboard") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtWhitboardFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Laptop">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Laptop") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtLaptop" Text='<%# Eval("Laptop") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtLaptopFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Beamer">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Beamer") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtBeamer" Text='<%# Eval("Beamer") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtBeamerFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Sitzplatz">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Sitzplatz") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtSitzplatz" Text='<%# Eval("Sitzplatz") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtSitzplatzFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="OrtID">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("OrtID") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtOrtID" Text='<%# Eval("OrtID") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtOrtIDFooter" runat="server" />
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
            <td style="width: 30%"> <asp:Button ID="Button1" runat="server" class="btn btn-success btn-lg" Text="BookingAnsicht" OnClick="Button1_Click" /></td>
            <td style="width: 30%"> <input type="submit" Value="Ausloggen" runat="server" id="cmdSignOut" class="btn btn-success btn-lg center-block"></td>
            <td style="width: 30%"><asp:Button ID="Button3" runat="server" class="btn btn-success btn-lg" Text="DienstStelleControl" OnClick="Button3_Click" /></td>

        </tr>
    </table>
      
    </asp:Content>
