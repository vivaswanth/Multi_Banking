<%@ Page Title="ClientLogin" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeFile="ClientLogin.aspx.cs" Inherits="ClientLogin" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<div class="w3-border" style="background: url(Assets/images/b7.jpg);">
<div class="register container well" >
    <h2><%: Title %> Here...</h2>

    <div class="row">
        <div class="col-md-5 w3-margin-left">
            <section id="loginForm">
                <div class="form-horizontal">
                    <p>Use your local account to log in.<br> Note that username and password are case sensitive.<br>By signing in, you agree to our terms and conditions.</p>
                    <hr style="width: 360px">
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ClientID="UserName" ID="UserName" CssClass="form-control" Placeholder="Enter Username"/>

                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ClientID="Password" ID="Password" TextMode="Password" CssClass="form-control" Placeholder="Enter Password"/>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:Button runat="server" OnClick="login" Text="LOG IN" CssClass="btn btn-success btn-block" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                                <asp:Label runat="server" AssociatedControlID="RememberMe"><a href="ForgotPassword.aspx">Forgot Password?</a></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:label runat="server" ID="result"></asp:label>
                <br><br>
            </section>
        </div>

        <div class="col-md-6 w3-padding-small">
            <br>
            <div class="w3-row w3-padding-small">
                <div class="w3-half w3-card-2 w3-white">
                    <header class="w3-container w3-white w3-text-green w3-border-bottom w3-light-grey">
                        <h3>Always</h3>
                    </header>
                    <div class="w3-container w3-padding">
                        <p>Change Your Passwords Regularly</p>
                    </div>                    
                </div>
                <div class="w3-half w3-card-2 w3-white">
                    <header class="w3-container w3-white w3-text-green w3-border-bottom w3-light-grey">
                        <h3>Always</h3>
                    </header>
                    <div class="w3-container w3-padding">
                        <p>Keep your computer free of malware</p>
                    </div>                    
                </div>
            </div>
            <div class="w3-row w3-padding-small">
                <div class="w3-half w3-card-2 w3-white">
                    <header class="w3-container w3-white w3-text-red w3-border-bottom w3-light-grey">
                        <h3>Never</h3>
                    </header>
                    <div class="w3-container w3-padding">
                        <p>respond to any communication seeking your passwords</p>
                    </div>                    
                </div>
                <div class="w3-half w3-card-2 w3-white">
                    <header class="w3-container w3-white w3-text-red w3-border-bottom w3-light-grey">
                        <h3>Never</h3>
                    </header>
                    <div class="w3-container w3-padding">
                        <p>reveal your passwords or card details to anyone</p>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</asp:Content>