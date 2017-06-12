<%@ Page Title="Registration" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="w3-border" style="background: url(Assets/images/b7.jpg);">
<div class="register container well" >
    <h2><%: Title %>.</h2>
    <p>Create an account today and explore our services, its completely free.</p>
    <p>Please provide the following details to register, note that the details you fill are subject to verify and DO NOT provide wrong ones, you will be in trouble.</p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

        <div class="row" style="margin-left: 10%">
            <div class="col-md-6">
                <div class="form-group">
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" Placeholder="Enter your FirstName"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="LastName" CssClass="form-control" Placeholder="Your LastName"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                   
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="UserName" CssClass="form-control" Placeholder="Pick a UserName"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="FatherName" CssClass="form-control" Placeholder="Your Father Name"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FatherName"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="Address" CssClass="form-control" Placeholder="Your Current Address"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                        CssClass="text-danger" ErrorMessage="The confirm password field is required." />
                    </div>
                </div>        
                </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="MobileNum" CssClass="form-control" Placeholder="Mobile Number"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="MobileNum"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="Email" CssClass="form-control" Placeholder="Please enter valid Email"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="Aadhaar" CssClass="form-control" Placeholder="Aadhaar"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Aadhaar"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" Placeholder="Choose Your Password"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" Placeholder="Re Enter Your Password"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                </div>
            </div>   
            </div>
        </div>
        
        <div class="form-group">
            <div class="col-md-4" style="margin-left: 35%">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-success btn-block" />
            </div>
        </div>

        <asp:label ID="result" runat="server" Text="result"></asp:label>
    </div>


</div>
</div>


</asp:Content>
