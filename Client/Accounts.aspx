<%@ Page Title="Accounts" Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="Accounts.aspx.cs" Inherits="Client_Accounts" %>

<asp:content id="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="well well-sm" style="margin-top: 4%">
	<h2>Welcome <asp:label runat="server" ID="name"></asp:label> </h2>
</div>

<div class="w3-container">
  <h2>Manage Your Accounts</h2>

  <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-third tablink w3-bottombar w3-border-blue w3-text-blue w3-hover-light-grey w3-padding">Current Accounts</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Add Accounts</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '3');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Manage Accounts</div>
    </a>
  </div>

  <div id="1" class="w3-container taby">
    <h2>Your Current Accounts Information & Details Here...</h2><br>
    
    
  </div>

  <div id="2" class="w3-container taby" style="display:none">
  	<br>
    <h2>Add New Accounts</h2>
    <p>Please Fill the Bank Details and Your Account Details</p>

    <asp:ValidationSummary runat="server" CssClass="text-danger" />
    
    <p class="w3-red w3-padding">Please fill these fields correctly, enter your account number and branch IFSC code correctly, Check twice before you submit the details.</p>

    <div class="row w3-padding well">

    	
    	<table class="w3-table">

    		<tr>
    			<th>Bank Name</th>
    			<th>Bank Branch</th>
    			<th>Bank IFSC Code</th>
    		</tr>
    		<tr>
    			<td>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="BankName" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BankName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    			<td>
    				<div class="col-md-8">
                        <asp:TextBox runat="server" ID="BankBranch" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BankBranch"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    			<td>
    				<div class="col-md-8">
                        <asp:TextBox runat="server" ID="BankIFSC" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BankIFSC"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    		</tr>
    	</table>

    	<table class="w3-table">

    		<tr>
    			<th>Account Number</th>
    			<th>Account Type</th>
    			<th>Name of Account Holder</th>
    		</tr>
    		<tr>
    			<td>
    				<div class="col-md-8">
                        <asp:TextBox runat="server" ID="AccountNum" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="AccountNum"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    			<td>
    				<div class="col-md-8">
                        <asp:TextBox runat="server" ID="AccountType" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="AccountType"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    			<td>
    				<div class="col-md-8">
                        <asp:TextBox runat="server" ID="NameOfAccHolder" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="NameOfAccHolder" CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    		</tr>    		
    	</table>
    	
    	<div class="form-group">
            <asp:Button runat="server" OnClick="UpdateBank_Details" Text="Submit" CssClass="btn btn-default w3-center w3-block"  style="width:30%; margin-left: 35%"/>
        </div>

        <asp:label ID="result" runat="server" Text="result"></asp:label>

    </div>
    
  </div>

  <div id="3" class="w3-container taby" style="display:none">
    <h2>Manage Accounts</h2>
    <p>You didnt have any transactions.</p>
  </div>

</div>


</asp:content>