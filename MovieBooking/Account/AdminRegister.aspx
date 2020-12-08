<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="AdminRegister.aspx.cs" Inherits="MovieBooking.Account.AdminRegister" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-4 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-8">
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
                <a class="small" href="AdminLogin.aspx">Already have an account? Login!</a>
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
  <%--  <hgroup class="title">
    <h1><%: Title %>.</h1>
    <h2>Use the form below to create a new account.</h2>
  </hgroup>

  <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
    <LayoutTemplate>
      <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
      <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
    </LayoutTemplate>
    <WizardSteps>
      <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
        <ContentTemplate>
          <p class="message-info">
            Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
          </p>

          <p class="validation-summary-errors">
            <asp:Literal runat="server" ID="ErrorMessage" />
          </p>

          <fieldset>
            <legend>Registration Form</legend>
            <ol>
              <li>
                <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                <asp:TextBox runat="server" ID="UserName" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                  CssClass="field-validation-error" ErrorMessage="The user name field is required." />
              </li>
              <li>
                <asp:Label runat="server" AssociatedControlID="Email">Email address</asp:Label>
                <asp:TextBox runat="server" ID="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                  CssClass="field-validation-error" ErrorMessage="The email address field is required." />
              </li>
              <li>
                <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                  CssClass="field-validation-error" ErrorMessage="The password field is required." />
              </li>
              <li>
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                   CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                   CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
              </li>
            </ol>
            <asp:Button runat="server" CommandName="MoveNext" Text="Register" />
          </fieldset>
        </ContentTemplate>
        <CustomNavigationTemplate />
      </asp:CreateUserWizardStep>
    </WizardSteps>
  </asp:CreateUserWizard>--%>
</asp:Content>
