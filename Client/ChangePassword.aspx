<%@ Page Language="C#" MasterPageFile="MasterClient.master"  AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Client_ChangePassword" %>

<asp:content id="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="container well">
		 <h2>Change / Update Passwords</h2><hr>
	<p>Here you can change your account password.<br>Account Password is the one you use to login into your Account.</p>		 
    <p>Please Enter your new password. <br>Note that it need to be minimum of 6 characters long.<br></p>
    <div class="form w3-center w3-padding" style="margin-top: 20px">
    	<div class="form-group col-md-12">
            <asp:Label runat="server" AssociatedControlID="Passwordold" CssClass="col-md-3 control-label">Enter your Old Password</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="Passwordold" CssClass="form-control" Placeholder="Enter your old password"/>
            </div>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Passwordold"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
        </div>
        <div class="form-group col-md-12">
        	<asp:Label runat="server" AssociatedControlID="Password2" CssClass="col-md-3 control-label">Enter your New Password</asp:Label>
        	<div class="col-md-4">
            	<asp:TextBox runat="server" ID="Password2" CssClass="form-control" Placeholder="Enter your new password"/>
        	</div>
        	<asp:RequiredFieldValidator runat="server" ControlToValidate="Password2"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
    	</div>
    	<div class="form-group col-md-12">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword2" CssClass="col-md-3 control-label">Confirm password</asp:Label>
            <div class="col-md-4">
            <asp:TextBox runat="server" ID="ConfirmPassword2" TextMode="Password" CssClass="form-control" Placeholder="confirm your new password"/>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword2"
            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
            <asp:CompareValidator runat="server" ControlToCompare="Password2" ControlToValidate="ConfirmPassword2"
            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
        </div>
    	<div class="form-group">
        	<div class="col-md-10 w3-padding-16">
            	<asp:Button runat="server" OnClick="UpdateUser_Click_Password" Text="Change" CssClass="btn btn-primary" />
        	</div>
        	<asp:label class="col-md-10" ID="result3" runat="server" Text="Status"></asp:label>
        </div>
    </div>

  </div>
	</div>
</asp:content>