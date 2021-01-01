
<%@ Page Title="" Language="C#" MasterPageFile="~/SiteM.Master" AutoEventWireup="true" CodeBehind="ManagerOrders.aspx.cs" Inherits="GlassesPr.ManagerOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DropDownList ID="ddl" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_SelectedIndexChanged"></asp:DropDownList>
                  <asp:GridView ID="GridView1" runat="server" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="idOrder" ItemStyle-Width="150" HeaderText="קוד הזמנה" />
            <asp:BoundField DataField="orderDate"  ItemStyle-Width="150" HeaderText="תאריך" />
            <asp:BoundField DataField="city"  ItemStyle-Width="150" HeaderText="עיר"  />
            <asp:BoundField DataField="street"  ItemStyle-Width="150" HeaderText="רחוב"/>
            <asp:BoundField DataField="streetNumber"  ItemStyle-Width="150" HeaderText="מספר רחוב"/>
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Columns>
    </asp:GridView> 
</asp:Content>