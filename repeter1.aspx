<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="repeter1.aspx.cs" Inherits="GlassesPr.repeter1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />  
    <link rel="stylesheet" type="text/css" href="Style.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <div class="container">
        <h3 class="h3">משקפי שמש</h3>
        <div class="row">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
            <div class="col-md-3 col-sm-6">
                <div class="product-grid7">
                    <div class="product-image7">
                        <a href="#">
                            <asp:Image ID="Image1" runat="server" width="115px" height="140px" class="pic-1" ImageUrl='<%# Eval ("ProductImage","image/{0}") %>' />
                        </a>
                        <ul class="social">
                            <li><a href="" class="fa fa-shopping-bag"></a></li>
                            <li><a href="" class="fa fa-shopping-cart"></a></li>
                        </ul>
                       
                    </div>
                    <div class="product-content">
                        <h3 class="title"><a href="#">'<%# Eval ("descpription") %>'</a></h3>
                        <div class="price">
                           '<%# Eval ("price") %>'
                            </div>
                        </div>
                    </div>
                </div>
                </ItemTemplate>
        </asp:Repeater>
</div>
</div>
</asp:Content>
