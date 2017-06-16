<%@ Page Title="AdminLogin" Language="C#" MasterPageFile="~/MasterAdminDefault.Master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="w3-border" style="background: url(Assets/images/b7.jpg);">
    <div class="container well" style="margin-top: 5%">
    
            <h2>Page <%: Title %> Here...</h2>

            <div class="row">
                <div class="col-md-8">
                    <section id="loginForm">
                        <div class="form-horizontal">
                            <h4>Use a local account to log in.</h4>
                            <hr />
                            <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                                <p class="text-danger">
                                    <asp:Literal runat="server" ID="FailureText" />
                                </p>
                            </asp:PlaceHolder>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="PAUserName" CssClass="col-md-2 control-label">User name</asp:Label>
                                <div class="col-md-6">
                                    <asp:TextBox runat="server" ID="PAUserName" CssClass="form-control" /></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="PAUserName"
                                        CssClass="text-danger" ErrorMessage="The user name field is required." /></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="PAPassword" CssClass="col-md-2 control-label">Password</asp:Label>
                                <div class="col-md-6">
                                    <asp:TextBox runat="server" ID="PAPassword" TextMode="Password" CssClass="form-control" /></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="PAPassword" CssClass="text-danger" ErrorMessage="The password field is required." /></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-2 col-md-10">
                                    <div class="checkbox">
                                        <asp:CheckBox runat="server" ID="RememberMe" />
                                        <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-2 col-md-10">
                                    <asp:Button runat="server" OnClick="ClickPageAdmin_Login" Text="Log in" CssClass="btn btn-default"/></asp:Button>
                                </div>
                            </div>
                        </div>
                        <asp:label runat="server" ID="result"></asp:label>
                        <p>
                            <a href="Register.aspx">Register Here</a>
                            if you don't have a local account.
                        </p>
                    </section>
                </div>

                <div class="col-md-6" style="margin-left: -20%"><br>
                    <h3>This Login is only for the Page Admins, Others Cannot login here...</h3> 
                    <h4> - If you are a Bank Admin, Kindly click on bank admins login on the top.</h4>
                    <h4> - If you are a client, Please go to the client login page through here...
                        <a href="ClientLogin.aspx">Client Login</a>     
                    </h4>
                </div>
            </div>
        </div>
</div>
</asp:Content>