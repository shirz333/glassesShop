<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inquiries.aspx.cs" Inherits="GlassesPr.Inquiries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <asp:TextBox ID="FullName" runat="server" placeHolder="שם מלא"></asp:TextBox> 
    </div>
    <div class="row">
        <asp:TextBox ID="PhoneNumber" runat="server" placeHolder="מספר טלפון"></asp:TextBox> 
    </div>
    <div class="row">
        <asp:DropDownList ID="Type" runat="server">

        </asp:DropDownList>
    </div>
    <div class="row">
        <asp:TextBox ID="Content" runat="server" placeHolder="כתוב את פנייתך כאן"></asp:TextBox> 
    </div>
    <div class="row">
        <asp:Button ID="Button1" onClick="Button1_Click" runat="server" Text="שלח פניה" /> 
    </div>

</asp:Content>
