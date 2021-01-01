<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" unobtrusiveValidationMode="None"  AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GlassesPr.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <style>
        .divider-text {
    position: relative;
    text-align: center;
    margin-top: 15px;
    margin-bottom: 15px;

}
.divider-text span {
    padding: 7px;
    font-size: 12px;
    position: relative;   
    z-index: 2;
}

.divider-text:after {
    content: "";
    position: absolute;
    width: 100%;
    border-bottom: 1px solid #ddd;
    top: 55%;
    left: 0;
    z-index: 1;
}

.btn-facebook {
    background-color: #405D9D;
    color: #fff;
}
.btn-twitter {
    background-i: #42AEEC;
    color: #fff;
}
body
{
    background-image:url("https://www.hotel-rothschild22.co.il/wp-content/uploads/2015/12/Joseph_Haver_12.jpg" );
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
<br>  
<hr>

<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">הרשם</h4>
	<form>
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
            <asp:TextBox class="form-control"   ID="FullName" placeholder="שם מלא" runat="server"></asp:TextBox>
        	<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FullName" ErrorMessage="זה הוא שדה חובה"></asp:RequiredFieldValidator>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <asp:TextBox ID="Email" class="form-control" placeholder="אימייל" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="זהו שדה חובה"></asp:RequiredFieldValidator>
		<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email" ErrorMessage="כתובת מייל לא תקינה" ValidationExpression="\w+\@\w+\.com"></asp:RegularExpressionValidator>

    </div> <!-- form-group// -->
         <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <asp:TextBox ID="IdUser" class="form-control" placeholder="תעודת זהות" runat="server"></asp:TextBox>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="IdUser" ErrorMessage="זה הוא שדה חובה"></asp:RequiredFieldValidator>
		<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="IdUser" ErrorMessage="תעודת זהות לא תקינה" ValidationExpression="\d{9}"></asp:RegularExpressionValidator>

    </div> <!-- form-group// -->
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <asp:TextBox ID="UserName1" class="form-control" placeholder="שם משתמש" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName1" ErrorMessage="זהו שדה חובה"></asp:RequiredFieldValidator>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <asp:TextBox ID="Password1" class="form-control" placeholder="סיסמה" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password1" ErrorMessage="זהו שדה חובה"></asp:RequiredFieldValidator>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <asp:TextBox ID="TextBox1" class="form-control" placeholder="ווידוי סיסמה" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" ControlToCompare="Password1" ControlToValidate="TextBox1" runat="server" ErrorMessage="על הנתון להיות זהה לסיסמה שהזנת"></asp:CompareValidator>
    </div> <!-- form-group// -->                                      
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1"  onClick="Button1_Click" runat="server" class="btn btn-primary btn-block" Text="צור חשבון" />
    </div> <!-- form-group// -->      
    <p class="text-center">כבר יש לך חשבון? <a href="Login.aspx">התחבר</a> </p>                                                                 
</form>
</article>
</div> <!-- card.// -->

</div> 
<!--container end.//-->
</article>
</asp:Content>
