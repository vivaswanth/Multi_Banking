<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterBankAdmin.Master" 
CodeFile="ViewClientDetails.aspx.cs" Inherits="Bank_Admin_ViewClientDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<div class="container" style="margin-top: 5%">
		<legend>Customer Profile Information</legend>
		<table class="w3-table w3-border w3-bordered w3-padding w3-striped">
			<tr>
				<th>Client User Name</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Father Name</th>
				<th>Mobile Number</th>
				<th>Aadhaar ID</th>
				<th>Email ID</th>
				<th>Address</th>
			</tr>
			<tr>
				<td><asp:label runat="server" ID="FirstName"></asp:label></td>
				<td><asp:label runat="server" ID="LastName"></asp:label></td>
				<td><asp:label runat="server" ID="UserName"></asp:label></td>
				<td><asp:label runat="server" ID="FatherName"></asp:label></td>
				<td><asp:label runat="server" ID="MobileNum"></asp:label></td>
				<td><asp:label runat="server" ID="Email"></asp:label></td>
				<td><asp:label runat="server" ID="Aadhaar"></asp:label></td>
				<td><asp:label runat="server" ID="Address"></asp:label></td>
			</tr>
		</table>
		<br>
		<legend>Customer Bank Details & Information</legend>
		<table class="w3-table w3-border w3-bordered w3-padding w3-striped">
			<tr>
				<th>Client User Name</th>
				<th>Bank Name</th>
				<th>Bank Branch</th>
				<th>Bank IFSC</th>
				<th>Account Number</th>
				<th>Account Type</th>
				<th>Name of the Account Holder</th>
				<th>Status</th>
				<th>Balance</th>
			</tr>
			<tr>
				<td><asp:label runat="server" ID="UserName2"></asp:label></td>
				<td><asp:label runat="server" ID="BankName"></asp:label></td>
				<td><asp:label runat="server" ID="BankBranch"></asp:label></td>
				<td><asp:label runat="server" ID="BankIFSC"></asp:label></td>
				<td><asp:label runat="server" ID="AccountNum"></asp:label></td>
				<td><asp:label runat="server" ID="AccountType"></asp:label></td>
				<td><asp:label runat="server" ID="NameOfAccHolder"></asp:label></td>
				<td><asp:label runat="server" ID="Status2"></asp:label></td>
				<td><asp:label runat="server" ID="Balance">TobeDecided</asp:label></td>
			</tr>
		</table>
		<br>
		<legend>Enter Bank Balance </legend>
		<p class="w3-red w3-padding">Note That This Field is to be filled carefully and only by the Authorized Bank Manager / Employee.
		Enter the amount in rupees (<span class="fa fa-inr"></span>) only..</p>
		<asp:TextBox runat="server" ID="Balance_Amount" CssClass="form-control"/>
		<asp:RequiredFieldValidator runat="server" ControlToValidate="Balance_Amount" CssClass="text-danger"
		ErrorMessage="This Field is Mandatory"/>

		<div class="btn-group btn-group-justified w3-center">
			<asp:Button runat="server" style="width: 200px" class="btn btn-success" OnClick="Approve_ClientAccount" Text="Approve" />
			<asp:Button runat="server" style="width: 200px" class="btn btn-danger" OnClick="Decline_ClientAccount" Text="Decline" />
		</div>
	</div>
	<br>

</asp:Content>