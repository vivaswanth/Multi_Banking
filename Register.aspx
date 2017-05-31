<%@ Page Title="Registration" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="register container well">
    <h2><%: Title %>.</h2>
    <p>Create an account today and explore our services, its completely free.</p>
    <p>Please provide the following details to register, note that the details you fill are subject to verify and DO NOT provide wrong ones, you will be in trouble.</p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-3 control-label">First name</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-3 control-label">Last name</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="LastName" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-3 control-label">User name</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="FatherName" CssClass="col-md-3 control-label">Father name</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="FatherName" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FatherName"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Address" CssClass="col-md-3 control-label">Address</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="Address" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                        CssClass="text-danger" ErrorMessage="The confirm password field is required." />
                    </div>
                </div>        
                </div>
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="MobileNum" CssClass="col-md-3 control-label">Mobile</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="MobileNum" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="MobileNum"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-3 control-label">Email</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="Email" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Aadhaar" CssClass="col-md-3 control-label">Aadhaar</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="Aadhaar" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Aadhaar"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-3 control-label">Password</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-3 control-label">Confirm password</asp:Label>
                    <div class="col-md-8">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                </div>
            </div>   
            </div>
        </div>
        
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>

        <asp:label ID="result" runat="server" Text="result"></asp:label>
    </div>


</div>



</asp:Content>
