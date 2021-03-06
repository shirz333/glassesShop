﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sunglasses.aspx.cs" Inherits="GlassesPr.Sunglasses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
    h3.h3{text-align:center;margin:1em;text-transform:capitalize;font-size:1.7em;}
    .product-grid7{font-family:'Roboto Slab',serif;position:relative;z-index:1}
.product-grid7 .product-image7{border:1px solid rgba(0,0,0,.1);overflow:hidden;perspective:1500px;position:relative;transition:all .3s ease 0s}
.product-grid7 .product-image7 a{display:block}
.product-grid7 .product-image7 img{width:100%;height:auto; background-size:contain;}
.product-grid7 .pic-1{opacity:1;transition:all .5s ease-out 0s; width:50px;}
.product-grid7 .pic-2{opacity:0;transform:rotateY(-90deg);position:absolute;top:0;left:0;transition:all .5s ease-out 0s}
.product-grid7:hover .pic-2{opacity:1;transform:rotateY(0)}
.product-grid7 .social{padding:0;margin:0;list-style:none;position:absolute;bottom:3px;left:-20%;z-index:1;transition:all .5s ease 0s}
.product-grid7:hover .social{left:17px}
.product-grid7 .social li a{color:#fff;background-color:#333;font-size:16px;line-height:40px;text-align:center;height:40px;width:40px;margin:15px 0;border-radius:50%;display:block;transition:all .5s ease-in-out}
.product-grid7 .social li a:hover{color:#fff;background-color:#78e08f}
.product-grid7 .product-new-label{color:#fff;background-color:#333;padding:5px 10px;border-radius:5px;display:block;position:absolute;top:10px;left:10px}
.product-grid7 .product-content{text-align:center;padding:20px 0 0}
.product-grid7 .title{font-size:15px;font-weight:600;text-transform:capitalize;margin:0 0 10px;transition:all .3s ease 0s}
.product-grid7 .title a{color:#333}
.product-grid7 .title a:hover{color:#78e08f}
.product-grid7 .rating{color:#78e08f;font-size:12px;padding:0;margin:0 0 10px;list-style:none}
.product-grid7 .price{color:#333;font-size:20px;font-family:Lora,serif;font-weight:700;margin-bottom:8px;text-align:center;transition:all .3s}
.product-grid7 .price span{color:#999;font-size:14px;font-weight:700;text-decoration:line-through;margin-left:7px;display:inline-block}
@media only screen and (max-width:990px){.product-grid7{margin-bottom:30px}
}
 </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <div class="container">
        <h3 class="h3">משקפי שמש</h3>
        <div class="row">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
            <div class="col-md-3 col-sm-6">
                <div class="product-grid7">
                    <div class="product-image7"
                        <a href="#">
                            <asp:ImageButton ID="Image1" runat="server" width="115px" height="140px" class="pic-1" ImageUrl='<%# Eval ("ProductImage","image/{0}") %>' CommandName='<%# Eval ("idProduct") %>' OnClick="Image1_Click" />
                        </a>
                       
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
