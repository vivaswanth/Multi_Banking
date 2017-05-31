<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterAdminDefault.Master" CodeFile="BankAdminLogin.aspx.cs" Inherits="BankAdminLogin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container well" style="margin-top: 5%">
    
            <h2>Bank <%: Title %> Here...</h2>

            <div class="row">
                <div class="col-md-8">
                    <section id="loginForm">
                        <div class="form-horizontal">
                            <h4>Use a local account to log in.</h4>
                            <hr />
                            <asp:PlaceHolder runat="server" ID="ErrorMessage2" Visible="false">
                                <p class="text-danger">
                                    <asp:Literal runat="server" ID="FailureText2" />
                                </p>
                            </asp:PlaceHolder>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="BAUserName" CssClass="col-md-2 control-label">User name</asp:Label>
                                <div class="col-md-6">
                                    <asp:TextBox runat="server" ID="BAUserName" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="BAUserName"
                                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="BAPassword" CssClass="col-md-2 control-label">Password</asp:Label>
                                <div class="col-md-6">
                                    <asp:TextBox runat="server" ID="BAPassword" TextMode="Password" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="BAPassword" CssClass="text-danger" ErrorMessage="The password field is required." />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-2 col-md-10">
                                    <div class="checkbox">
                                        <asp:CheckBox runat="server" ID="BARememberMe" />
                                        <asp:Label runat="server" AssociatedControlID="BARememberMe">Remember me?</asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-2 col-md-10">
                                    <asp:Button runat="server" OnClick="ClickBankAdmin_Login" Text="Log in" CssClass="btn btn-default"/>
                                </div>
                            </div>
                        </div>
                        <asp:label runat="server" ID="BAresult"></asp:label>
                        <p>
                            <a href="Register.aspx">Register Here</a>
                            if you don't have a local account.
                        </p>
                    </section>
                </div>

                <div class="col-md-6" style="margin-left: -20%"><br>
                    <h3>This Login is only for the Bank Admins, Others Cannot login here...</h3>
                    <h4> - If you are a Page Admin, Kindly click on page admins login on the top.</h4>
                    <h4> - If you are a client, Please go to the client login page through here...
                        <a href="ClientLogin.aspx">Client Login</a>     
                    </h4>
                    <h4> - For Bank Admin Registration, please go to the following link
                        <a href="BankAdminRegistration.aspx">Bank Admin Reg.</a>     
                    </h4>
                </div>
            </div>
        </div>

</asp:Content>