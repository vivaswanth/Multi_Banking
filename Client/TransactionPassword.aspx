<%@ Page Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="TransactionPassword.aspx.cs" Inherits="Client_TransactionPassword" %>

<asp:content id="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="container well">
		 <h2>High Security Transaction Password</h2><hr>
	<p>Here you can set / change your Transaction password.<br>Transaction Password is the one you use to make payments / bills / money transfer from and to your Account(s).</p>		 
    <p>Please Enter your new password. <br>Note that it need to be minimum of 6 characters long.<br>Also note that it shouldnt be same as your account password.<br></p>
    <div class="form">
        <div class="form-group col-md-12" style="margin-top: 20px">
            <asp:Label runat="server" AssociatedControlID="Passwordold" CssClass="col-md-3 control-label">Enter your Old Password</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="Passwordold" CssClass="form-control" Placeholder="Enter your old password"/>
            </div>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Passwordold"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
        </div>
    	<div class="form-group col-md-12">
        	<asp:Label runat="server" AssociatedControlID="Password2" CssClass="col-md-3 control-label">Enter your New Transaction Password</asp:Label>
        	<div class="col-md-4">
            	<asp:TextBox runat="server" ID="Password2" TextMode="Password" Placeholder="Enter 6 letter long password" CssClass="form-control" />
        	</div>
        	<asp:RequiredFieldValidator runat="server" ControlToValidate="Password2"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
    	</div>
    	<div class="form-group col-md-12">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword2" CssClass="col-md-3 control-label">Confirm password</asp:Label>
            <div class="col-md-4">
            <asp:TextBox runat="server" ID="ConfirmPassword2" TextMode="Password" CssClass="form-control" Placeholder="Please Confirm Password"/>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword2"
            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
            <asp:CompareValidator runat="server" ControlToCompare="Password2" ControlToValidate="ConfirmPassword2"
            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
        </div>
    	<div class="form-group w3-center">
        	<div class="col-md-10 w3-padding-16">
            	<asp:Button runat="server" OnClick="UpdateUser_Click_Password" Text="Change" CssClass="btn btn-primary" />
        	</div>
        	<asp:label class="col-md-10" ID="result3" runat="server" Text="result"></asp:label>
        </div>
    </div>

  </div>
	</div>
</asp:content>