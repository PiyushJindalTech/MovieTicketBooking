<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" EnableEventValidation="false" Inherits="MovieBooking.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
 <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-3 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-9">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>

              <div class="form-group row">
                <div class="col-sm-4 ">
                  <asp:TextBox type="text" class="form-control form-control-user" runat="server" ID="txtFirstName" placeholder="First Name"></asp:TextBox>
                </div>

                <div class="col-sm-4 ">
                  <asp:TextBox type="text" class="form-control form-control-user" runat="server" ID="txtMiddleName" placeholder="Middle Name"></asp:TextBox>
                </div>

                <div class="col-sm-4">
                  <asp:TextBox type="text" class="form-control form-control-user" runat="server" ID="txtLastName" placeholder="Last Name"></asp:TextBox>
                </div>
              </div>
              <div class="form-group row">

                <div class="col-sm-6 ">
                  <asp:TextBox type="text" class="form-control form-control-user" runat="server" ID="txtMobileNo" placeholder="Mobile No" MaxLength="10"></asp:TextBox>
                </div>
                <div class="col-sm-6 ">
                  <asp:TextBox type="email" class="form-control form-control-user" runat="server" ID="txtEmailID" placeholder="Email Address"></asp:TextBox>
                </div>



              </div>
              <div class="form-group row">
                <div class="col-sm-6 ">
                  <asp:TextBox type="password" class="form-control form-control-user" runat="server" ID="txtPassword" placeholder="Password"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                  <asp:TextBox type="password" class="form-control form-control-user" runat="server" ID="txtConfirmPassword" placeholder="Confirm Password"></asp:TextBox>
                </div>
              </div>
              <%--<a href="login.aspx" class="btn btn-primary btn-user btn-block">
         Register Account
        </a>--%>
              <asp:LinkButton ID="btnRegister" runat="server" class="btn btn-primary btn-user btn-block" Text="Register Account" OnClick="btnRegister_Click">
          </asp:LinkButton>
              <%--<hr>
        <a href="index.html" class="btn btn-google btn-user btn-block">
         <i class="fab fa-google fa-fw"></i> Register with Google
        </a>
        <a href="index.html" class="btn btn-facebook btn-user btn-block">
         <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
        </a>--%>
              </form>

              <hr>
              <div class="text-center">
                <a class="small" href="forgot-password.html">Forgot Password?</a>
              </div>
              <div class="text-center">
                <a class="small" href="login.aspx">Already have an account? Login!</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>



  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
  
 
</asp:Content>