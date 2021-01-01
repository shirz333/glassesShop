<%@Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GlassesPr.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style>
        body
        {
          background-image: url("https://www.hotel-rothschild22.co.il/wp-content/uploads/2015/12/Joseph_Haver_12.jpg" );
        }
        .jumbotron
        {
            width:800px;
            height:300px;
        }
        p
        {
            font-weight: bold;
            font-size:xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
     <div  class="container">
         <div class="row justify-content-center">
            <div class="col=12 mt-3">
                <div class="jumbotron ">
                  <h1  class="display-4" >EYES ON ME</h1>
                  <hr class="my-4">
                  <p class="lead">
                    <a class="btn btn-primary btn-lg" href="" role="button">צרו קשר</a>
                  </p>
                  <hr />
                </div>
         </div>
        </div>
     </div>
    </main>

</asp:Content>
