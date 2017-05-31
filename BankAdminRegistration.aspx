<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterAdminDefault.Master" CodeFile="BankAdminRegistration.aspx.cs" Inherits="BankAdminRegistration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   

    <div class="container" style="margin-top: 5%">
    	<h2>Welcome, Please Fill out the following fields without mistakes and as per the rules</h2>
    	<p>Following fields are required to be filled only by the Authorized Bank personnel only, and as per the bank details, Terms and Conditions.</p>
    	<p>DO NOT fill this form if you are not Authorized, doing so will land you in trouble and penalty.</p>
    	
    </div>
    <div class="container well">
		<div class="w3-row w3-row-padding">
			<div class="w3-half">
				<div class="form-horizontal">
					<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BAName" CssClass="col-md-3 control-label">Your Full Name</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BAName" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BAName"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>
            		<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BAEmail" CssClass="col-md-3 control-label">Your Primary Email Address</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BAEmail" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BAEmail"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>
            		<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BAMobileNum" CssClass="col-md-3 control-label">Your Primary Mobile Number</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BAMobileNum" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BAMobileNum"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>
            		<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BAUserName" CssClass="col-md-3 control-label">Choose a Username</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BAUserName" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BAUserName"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>
            		<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BAAadhaar" CssClass="col-md-3 control-label">Your Aadhaar Number</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BAAadhaar" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BAAadhaar"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>
            		<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BARole" CssClass="col-md-3 control-label">Your Position in the Branch</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BARole" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BARole"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>            		
				</div>
			</div>
			<div class="w3-half">
				<div class="form-horizontal">
					<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BABankName" CssClass="col-md-3 control-label">Your Associated Bank Name</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BABankName" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BABankName"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>
            		<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BABankBranch" CssClass="col-md-3 control-label">Associated Branch</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BABankBranch" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BABankBranch"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>
            		<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BABankIFSC" CssClass="col-md-3 control-label">IFSC Code of the Branch</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BABankIFSC" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BABankIFSC"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>
            		<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BAID" CssClass="col-md-3 control-label">Your Bank ID [As given by the Branch]</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BAID" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BAID"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>
            		<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="BAPassword" CssClass="col-md-3 control-label">Choose Your Password</asp:Label>
                		<div class="col-md-8">
                    		<asp:TextBox runat="server" ID="BAPassword" TextMode="Password" CssClass="form-control" />
                    		<asp:RequiredFieldValidator runat="server" ControlToValidate="BAPassword"
                    		CssClass="text-danger" ErrorMessage="This field is required." />
                		</div>
            		</div>
            		<div class="form-group">
                		<asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-3 control-label">Confirm password</asp:Label>
		                <div class="col-md-8">
		                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
		                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
		                CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
		                <asp:CompareValidator runat="server" ControlToCompare="BAPassword"   ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            		</div>
				</div>
			</div>
		</div>
		<div class="form-group">
            <div class="col-md-offset-5 col-md-10">
                <asp:Button runat="server" OnClick="EnterBankAdmin_Details" Text="Submit" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
    <asp:label ID="result" runat="server" Text="result"></asp:label>
   
</asp:Content>
