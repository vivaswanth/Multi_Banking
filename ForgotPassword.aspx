<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<div class="w3-container" style="margin-top: 10%">
		<h2>Forgot Password ??</h2>
		<p>Dont worry, we have got you covered... fill the following simple details, and we will get back to you.</p>
	
	<div class="container well">
		<div class="w3-quarter">
            <div class="col-md-12 form-group w3-padding">
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="w3-padding control-label">Enter your user name</asp:Label>
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" Placeholder="Enter your User Name"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                CssClass="text-danger" ErrorMessage="The username field is required." />
            </div>
        </div>
        <div class="w3-quarter">
            <div class="col-md-12 form-group w3-padding">
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="w3-padding control-label">Enter your email id</asp:Label>
                <asp:TextBox runat="server" ID="Email" TextMode="Email" CssClass="form-control" Placeholder="Enter your email"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="w3-quarter">
            <div class="col-md-12 form-group w3-padding">
                <asp:Label runat="server" AssociatedControlID="MobileNum" CssClass="w3-padding control-label">Enter your mobile number</asp:Label>
                <asp:TextBox runat="server" ID="MobileNum" CssClass="form-control" Placeholder="Enter your mobile number"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="MobileNum"
                CssClass="text-danger" ErrorMessage="The Mobile number field is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-4" style="margin-left: 35%">
                <asp:Button runat="server" Text="Submit" OnClick="SendForgotEmail" CssClass="btn btn-success btn-block" />
            </div>
        </div>
	</div>
	</div>
</asp:Content>