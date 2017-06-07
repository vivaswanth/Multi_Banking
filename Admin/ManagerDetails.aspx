<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterAdmin.Master" CodeFile="ManagerDetails.aspx.cs" Inherits="Admin_ManagerDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	
	<div class="container jumbotron w3-card-2 w3-padding" style="margin-top: 8%">
		<table class="w3-table w3-padding">
			<tr>
				<th>Bank Admin User Name</th>
				<th>Bank Admin Full Name</th>
				<th>Bank Admin Aadhaar ID</th>
				<th>Bank Admin Email</th>
				<th>Bank Admin Mobile Number</th>
				<th>Bank Admin BAID</th>
				<th>Status</th>
			</tr>
			<tr>
				<td><asp:label runat="server" ID="BAUserName"></asp:label></td>
				<td><asp:label runat="server" ID="BAName"></asp:label></td>
				<td><asp:label runat="server" ID="BAAadhaar"></asp:label></td>
				<td><asp:label runat="server" ID="BAEmail"></asp:label></td>
				<td><asp:label runat="server" ID="BAMobileNum"></asp:label></td>
				<td><asp:label runat="server" ID="BAID"></asp:label></td>
				<td><asp:label runat="server" ID="Status"></asp:label></td>
			</tr>
		</table>

	</div>

	<div class="container jumbotron w3-card-2 w3-padding" style="margin-top: 2%">
		<table class="w3-table w3-padding">
			<tr>
				<th>Bank Admin ID</th>
				<th>Bank Name</th>
				<th>Bank Branch</th>
				<th>Bank IFSC Code</th>
				<th>Bank Admin Role</th>
				<th>Bank Status</th>
			</tr>
			<tr>
				<td><asp:label runat="server" ID="BAID2"></asp:label></td>
				<td><asp:label runat="server" ID="BABankName"></asp:label></td>
				<td><asp:label runat="server" ID="BABankBranch"></asp:label></td>
				<td><asp:label runat="server" ID="BABankIFSC"></asp:label></td>
				<td><asp:label runat="server" ID="BARole"></asp:label></td>
				<td><asp:label runat="server" ID="BAStatus"></asp:label></td>
			</tr>
		</table>

	</div>


	<div class="btn-group btn-group-justified w3-center">
		<asp:Button runat="server" style="width: 200px" class="btn btn-success" OnClick="Approve_BankManager" Text="Approve" />
		<asp:Button runat="server" style="width: 200px" class="btn btn-danger" OnClick="Decline_BankManager" Text="Decline" />
	</div>

</asp:Content>