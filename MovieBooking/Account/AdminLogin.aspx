<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MovieBooking.Account.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <link href="../css/admin-login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3>Sign In</h3>
                </div>
                <div class="card-body">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text justify-content-center"><i class="fa fa-user"></i></span>
                        </div>
                        <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control" placeholder="Email Id"></asp:TextBox>
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text justify-content-center"><i class="fa fa-lock"></i></span>
                        </div>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                    </div>
                    <div class="row align-items-center remember">
                        <input type="checkbox">Remember Me
				
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnLogin" runat="server" class="btn float-right login_btn" Text="Login" OnClick="btnLogin_Click"/>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-center links">
                        Don't have an account?<a href="AdminRegister.aspx">Sign Up</a>
                    </div>
                    <div class="d-flex justify-content-center links">
                        <a href="#">Forgot your password?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
