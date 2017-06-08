<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterAdmin.Master" 
CodeFile="ViewClientDetails.aspx.cs" Inherits="Admin_ViewClientDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<div class="container" style="margin-top: 5%">
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
				<th>Status</th>
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
				<td><asp:label runat="server" ID="Status">Active</asp:label></td>
			</tr>
		</table>
	</div>

</asp:Content>