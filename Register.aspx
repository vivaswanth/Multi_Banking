<%@ Page Title="Registration" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="w3-border" style="background: url(Assets/images/b7.jpg);">
<div class="register container well" >
    <h2><%: Title %>.</h2>
    <p>Create an account today and explore our services, its completely free.</p>
    <p>Please provide the following details to register ,note that the details you fill are subject to verify and DO NOT provide wrong ones, you will be in trouble.</p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <p>All the Details below are required and are mandatory</p>
        <hr>
        <div class="row">
            <div class="container w3-row">
                <legend>Profile Section</legend>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="w3-padding control-label">First Name</asp:Label>
                        <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" Placeholder="Enter your FirstName"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="LastName" CssClass="w3-padding control-label">Last Name</asp:Label>
                        <asp:TextBox runat="server" ID="LastName" CssClass="form-control" Placeholder="Enter your LastName"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                        CssClass="text-danger" ErrorMessage="The Last name field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="UserName" CssClass="w3-padding control-label">Pick a user name</asp:Label>
                        <asp:TextBox runat="server" ID="UserName" CssClass="form-control" Placeholder="Pick a User Name"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                        CssClass="text-danger" ErrorMessage="The username field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="FatherName" CssClass="w3-padding control-label">Father Name</asp:Label>
                        <asp:TextBox runat="server" ID="FatherName" CssClass="form-control" Placeholder="Your Father Name"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FatherName"
                        CssClass="text-danger" ErrorMessage="The Father field is required." />
                    </div>
                </div>
            </div>
            <div class="container w3-row">
                <legend>Personal Details Section</legend>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="DOB" CssClass="w3-padding control-label">Your Date Of Birth</asp:Label>
                        <asp:TextBox runat="server" ID="DOB" CssClass="form-control" TextMode="Date" Placeholder="Date of Birth"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="DOB"
                        CssClass="text-danger" ErrorMessage="The Date of birth field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="Sex" CssClass="w3-padding control-label">Your Gender</asp:Label>
                        <asp:DropDownList runat="server" ID="Sex" CssClass="form-control" AutoPostBack = "true">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Sex"
                        CssClass="text-danger" ErrorMessage="The sex field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="MobileNum" CssClass="w3-padding control-label">Your Mobile Number [primary]</asp:Label>
                        <asp:TextBox runat="server" ID="MobileNum" TextMode="Number" CssClass="form-control" Placeholder="Your Primary Mobile Number"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FatherName"
                        CssClass="text-danger" ErrorMessage="The mobile field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="w3-padding control-label">Your Email ID [primary]</asp:Label>
                        <asp:TextBox runat="server" ID="Email" TextMode="Email" CssClass="form-control" Placeholder="Your primary email id"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="The Email field is required." />
                    </div>
                </div>
            </div>
            <div class="container w3-row">
                <legend>Address Section</legend>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="AddressLine" CssClass="w3-padding control-label">Enter your Address</asp:Label>
                        <asp:TextBox runat="server" ID="AddressLine" CssClass="form-control" Placeholder="Enter your Address"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="AddressLine"
                        CssClass="text-danger" ErrorMessage="The Address field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="City" CssClass="w3-padding control-label">Your City</asp:Label>
                        <asp:TextBox runat="server" ID="City" CssClass="form-control" Placeholder="City"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="City"
                        CssClass="text-danger" ErrorMessage="The City field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="State" CssClass="w3-padding control-label">Pick your state</asp:Label>
                        <asp:DropDownList runat="server" ID="State" CssClass="form-control" AutoPostBack = "true">
                            <asp:ListItem>Andhra Pradesh</asp:ListItem>
                            <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                            <asp:ListItem>Assam</asp:ListItem>
                            <asp:ListItem>Bihar</asp:ListItem>
                            <asp:ListItem>Chhattisgarh</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Gujarat</asp:ListItem>
                            <asp:ListItem>Haryana</asp:ListItem>
                            <asp:ListItem>Himachal Pradesh</asp:ListItem>
                            <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                            <asp:ListItem>Jharkhand</asp:ListItem>
                            <asp:ListItem>Karnataka</asp:ListItem>
                            <asp:ListItem>Kerala</asp:ListItem>
                            <asp:ListItem>Madhya Pradesh</asp:ListItem>
                            <asp:ListItem>Maharashtra</asp:ListItem>
                            <asp:ListItem>Manipur</asp:ListItem>
                            <asp:ListItem>Meghalaya</asp:ListItem>
                            <asp:ListItem>Mizoram</asp:ListItem>
                            <asp:ListItem>Nagaland</asp:ListItem>
                            <asp:ListItem>Odisha</asp:ListItem>
                            <asp:ListItem>Punjab</asp:ListItem>
                            <asp:ListItem>Rajasthan</asp:ListItem>
                            <asp:ListItem>Sikkim</asp:ListItem>
                            <asp:ListItem>Tamilnadu</asp:ListItem>
                            <asp:ListItem>Telangana</asp:ListItem>
                            <asp:ListItem>Tripura</asp:ListItem>
                            <asp:ListItem>Uttarakhand</asp:ListItem>
                            <asp:ListItem>Uttar Pradesh</asp:ListItem>
                            <asp:ListItem>West Bengal</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="State"
                        CssClass="text-danger" ErrorMessage="The state field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="PinCode" CssClass="w3-padding control-label">Enter valid Pin Code</asp:Label>
                        <asp:TextBox runat="server" ID="PinCode" CssClass="form-control" Placeholder="Pincode"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="PinCode"
                        CssClass="text-danger" ErrorMessage="The pincode field is required." />
                    </div>
                </div>
            </div>
            <div class="container w3-row">
                <legend>ID Proof Section</legend>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="IDProof" CssClass="w3-padding control-label">Please Enter Valid ID Proof</asp:Label>
                        <asp:DropDownList runat="server" ID="IDProof" CssClass="form-control" AutoPostBack = "true">
                            <asp:ListItem>Aadhaar-Number</asp:ListItem>
                            <asp:ListItem>Voter-ID</asp:ListItem>
                            <asp:ListItem>Driving-License</asp:ListItem>
                            <asp:ListItem>PAN-Card</asp:ListItem>
                            <asp:ListItem>Passport</asp:ListItem>             
                        </asp:DropDownList>  
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="IDProof"
                        CssClass="text-danger" ErrorMessage="The state field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="IDNumber" CssClass="w3-padding control-label">Enter Selected ID Number</asp:Label>
                        <asp:TextBox runat="server" ID="IDNumber" CssClass="form-control" Placeholder="Id Number"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="IDNumber"
                        CssClass="text-danger" ErrorMessage="The pincode field is required." />
                    </div>
                </div>
            </div>

            <div class="container w3-row">
                <legend>Password Section</legend>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="w3-padding control-label">Account Password</asp:Label>
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" Placeholder="Choose Your Password"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="w3-padding control-label">Confirm Account Password</asp:Label>
                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" Placeholder="Re Enter Your Password"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="TPassword" CssClass="w3-padding control-label">Transaction Password</asp:Label>
                        <asp:TextBox runat="server" ID="TPassword" TextMode="Password" CssClass="form-control" Placeholder="Choose Your Transaction Password"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TPassword"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="TConfirmPassword" CssClass="w3-padding control-label">Confirm Password</asp:Label>
                        <asp:TextBox runat="server" ID="TConfirmPassword" TextMode="Password" CssClass="form-control" Placeholder="Re Enter Your Transaction Password"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                        <asp:CompareValidator runat="server" ControlToCompare="TPassword" ControlToValidate="TConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                    </div>
                </div>
            </div>
        </div>
        
        <div class="form-group">
            <div class="col-md-4" style="margin-left: 35%">
                <asp:Button runat="server" Text="Register" OnClick="CreateUser_Click" CssClass="btn btn-success btn-block" />
            </div>
        </div>

        <asp:label ID="result" runat="server" Text="result"></asp:label>
    </div>


</div>
</div>


</asp:Content>
