<%@ Page Title="" Language="C#" MasterPageFile="~/SiteM.Master" AutoEventWireup="true" CodeBehind="ManagerInquiries.aspx.cs" Inherits="GlassesPr.ManagerInquiries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                   <td><center>
                       <h3 class="h3" dir="rtl">פניות</h3>
                   </center></td>
       <div class="row"> 
      <asp:GridView ID="GridView1" runat="server" Width="325px" height="250px"  OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing"  AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="phoneNumber" HeaderText="מספר טלפון" />
            <asp:BoundField DataField="fullName" HeaderText="שם מלא" />
            <asp:BoundField DataField="type" HeaderText="סוג"  />
            <asp:BoundField DataField="content" HeaderText="תוכן"/>
            <asp:TemplateField HeaderText="טופלה?">
               <ItemTemplate>
                   <asp:CheckBox ID="c" runat="server"></asp:CheckBox>
               </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="idInquiries" HeaderText="מספר פניה" ReadOnly="true"/>            
            <asp:CommandField HeaderText="ערוך" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
           </div>  
     </asp:Content>	