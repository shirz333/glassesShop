<%@ Page Title="" Language="C#" MasterPageFile="~/SiteM.Master" AutoEventWireup="true" CodeBehind="ManagerPrudacts.aspx.cs" Inherits="GlassesPr.ManagerPrudacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <asp:GridView ID="GridView1" runat="server" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" HeaderText="תמונה" width="250" height="200" ImageUrl='<%# Eval ("productImage","image/{0}") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="price" ItemStyle-Width="150" HeaderText="מחיר" />
            <asp:BoundField DataField="descpription"  ItemStyle-Width="150" HeaderText="תיאור" />
            <asp:BoundField DataField="idproduct"  ItemStyle-Width="150" HeaderText="קוד מוצר"  />
            <asp:BoundField DataField="type"  ItemStyle-Width="150" HeaderText="סוג"/>
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Columns>
    </asp:GridView>

</asp:Content>
