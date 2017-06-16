<%@ Page Title="Registration" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterAdminDefault.Master" CodeFile="BankAdminRegistration.aspx.cs" Inherits="BankAdminRegistration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="w3-border" style="background: url(Assets/images/b7.jpg);">
<div class="register container well" >
    <h2><%: Title %>.</h2>
    <h2>Welcome, Please Fill out the following fields without mistakes and as per the rules</h2>
    <p>Following fields are required to be filled only by the Authorized Bank personnel only, and as per the bank details, Terms and Conditions.</p>
    <p>DO NOT fill this form if you are not Authorized, doing so will land you in trouble and penalty.</p>
    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <p>All the Details below are required and are mandatory</p>
        <hr>
        <div class="row">
            <div class="container w3-row">
                <legend>Profile Section</legend>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BAFirstName" CssClass="w3-padding control-label">First Name</asp:Label>
                        <asp:TextBox runat="server" ID="BAFirstName" CssClass="form-control" Placeholder="Enter your FirstName"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BAFirstName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BALastName" CssClass="w3-padding control-label">Last Name</asp:Label>
                        <asp:TextBox runat="server" ID="BALastName" CssClass="form-control" Placeholder="Enter your LastName"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BALastName"
                        CssClass="text-danger" ErrorMessage="The Last name field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BAUserName" CssClass="w3-padding control-label">Pick a user name</asp:Label>
                        <asp:TextBox runat="server" ID="BAUserName" CssClass="form-control" Placeholder="Pick a User Name"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BAUserName"
                        CssClass="text-danger" ErrorMessage="The username field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BARole" CssClass="w3-padding control-label">Your role in the branch</asp:Label>
                        <asp:TextBox runat="server" ID="BARole" CssClass="form-control" Placeholder="Pick a User Name"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BARole"
                        CssClass="text-danger" ErrorMessage="The username field is required." />
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
                        <asp:Label runat="server" AssociatedControlID="BAMobileNum" CssClass="w3-padding control-label">Mobile Number [primary]</asp:Label>
                        <asp:TextBox runat="server" ID="BAMobileNum" TextMode="Number" CssClass="form-control" Placeholder="Your Primary Mobile Number"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BAMobileNum"
                        CssClass="text-danger" ErrorMessage="The mobile field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BAEmail" CssClass="w3-padding control-label">Your Email ID [primary]</asp:Label>
                        <asp:TextBox runat="server" ID="BAEmail" TextMode="Email" CssClass="form-control" Placeholder="Your primary email id"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BAEmail"
                        CssClass="text-danger" ErrorMessage="The Email field is required." />
                    </div>
                </div>
            </div>
            <div class="container w3-row">
                <legend>Address Section</legend>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BAAddressLine" CssClass="w3-padding control-label">Enter your Address</asp:Label>
                        <asp:TextBox runat="server" ID="BAAddressLine" CssClass="form-control" Placeholder="Enter your Address"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BAAddressLine"
                        CssClass="text-danger" ErrorMessage="The Address field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BACity" CssClass="w3-padding control-label">Your City</asp:Label>
                        <asp:TextBox runat="server" ID="BACity" CssClass="form-control" Placeholder="City"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BACity"
                        CssClass="text-danger" ErrorMessage="The City field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BAState" CssClass="w3-padding control-label">Pick your state</asp:Label>
                        <asp:DropDownList runat="server" ID="BAState" CssClass="form-control" AutoPostBack = "true">
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
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BAState"
                        CssClass="text-danger" ErrorMessage="The state field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BAPinCode" CssClass="w3-padding control-label">Enter valid Pin Code</asp:Label>
                        <asp:TextBox runat="server" ID="BAPinCode" CssClass="form-control" Placeholder="Pincode"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BAPinCode"
                        CssClass="text-danger" ErrorMessage="The pincode field is required." />
                    </div>
                </div>
            </div>
            <div class="container w3-row">
                <legend>ID Proof Section</legend>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BAIDProof" CssClass="w3-padding control-label">Enter Valid ID Proof</asp:Label>
                        <asp:DropDownList runat="server" ID="BAIDProof" CssClass="form-control" AutoPostBack = "true">
                            <asp:ListItem>Aadhaar-Number</asp:ListItem>
                            <asp:ListItem>Voter-ID</asp:ListItem>
                            <asp:ListItem>Driving-License</asp:ListItem>
                            <asp:ListItem>PAN-Card</asp:ListItem>
                            <asp:ListItem>Passport</asp:ListItem>             
                        </asp:DropDownList>  
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BAIDProof"
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
                <legend>Bank Details Section</legend>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BABankName" CssClass="w3-padding control-label">Enter Bank Name</asp:Label>
                        <asp:TextBox runat="server" ID="BABankName" CssClass="form-control" Placeholder="Your Bank Name"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BABankName"
                        CssClass="text-danger" ErrorMessage="The Bank Name field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BABankBranch" CssClass="w3-padding control-label">Enter Bank Branch</asp:Label>
                        <asp:TextBox runat="server" ID="BABankBranch" CssClass="form-control" Placeholder="Bank Branch"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BABankBranch"
                        CssClass="text-danger" ErrorMessage="The Bank Branch field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BABankIFSC" CssClass="w3-padding control-label">Enter IFSC Code</asp:Label>
                        <asp:TextBox runat="server" ID="BABankIFSC" CssClass="form-control" Placeholder="IFSC Code"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BABankIFSC"
                        CssClass="text-danger" ErrorMessage="The IFSC field is required." />
                    </div>
                </div>
                <div class="w3-quarter">
                    <div class="col-md-12 form-group w3-padding">
                        <asp:Label runat="server" AssociatedControlID="BAID" CssClass="w3-padding control-label">Your ID given by bank</asp:Label>
                        <asp:TextBox runat="server" ID="BAID" CssClass="form-control" Placeholder="Your Bank ID"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BAID"
                        CssClass="text-danger" ErrorMessage="The ID field is required." />
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
                        <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="w3-padding control-label">Confirm Password</asp:Label>
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
                <asp:Button runat="server" Text="Register" OnClick="EnterBankAdmin_Details" CssClass="btn btn-success btn-block" />
            </div>
        </div>

        <asp:label ID="result" runat="server" Text="result"></asp:label>
    </div>


</div>
</div>
</asp:Content>
