<%@ Page Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="Client_UpdateProfile" %>

<asp:content id="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div class="container">
		<h2>Edit profile Information</h2>
		<p>The profile information once entered cannot be changed, since they are verified...<br>Please Consult our nearest office to make changes.</p>
		<p>However, you can always change your mobile number, to receive OTP / other updates.</p>
		<hr>
		<div class="form-group col-md-12">
            <asp:Label runat="server" AssociatedControlID="MobileNum" CssClass="col-md-3 control-label">Enter your Mobile Number</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="MobileNum" CssClass="form-control" Placeholder="Enter your 10 digit mobile number"/>
            </div>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="MobileNum"
            CssClass="text-danger" ErrorMessage="This field is required." />
            
            <asp:label class="col-md-1" ID="result3" runat="server" Text="result"></asp:label>
        </div>
        <div class="col-md-12 w3-center">
            <asp:Button runat="server" OnClick="UpdateUser_MobileNum" Text="Change" CssClass="btn btn-primary" />
        </div>
	</div>

</asp:content>