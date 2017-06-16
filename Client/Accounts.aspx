<%@ Page Title="Accounts" Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="Accounts.aspx.cs" Inherits="Client_Accounts" %>

<asp:content id="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="w3-row w3-padding w3-white w3-card-2 navbar-static-top" style="margin-top: -2%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">Add / Attach Accounts</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Your Current Accounts</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '3');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Manage Accounts</div>
    </a>
  </div>

  </div>
</div>

<div class="w3-container">

  <div id="1" class="w3-container taby">
    <h2>Add New Accounts</h2>
    <p>Please Fill the Bank Details and Your Account Details</p>

    <asp:ValidationSummary runat="server" CssClass="text-danger" />
    
    <p class="w3-red w3-padding">Please fill these fields correctly, enter your account number and branch IFSC code correctly, Check twice before you submit the details.</p>

    <div class="w3-row well">
    	<table class="w3-table">
    		<tr>
    			<th class="col-md-4">Bank Name</th>
    			<th class="col-md-4">Bank Branch</th>
    			<th class="col-md-4">Bank IFSC Code</th>
    		</tr>
    		<tr>
    			<td class="col-md-4">
                    <div class="col-md-12">
                        <asp:DropDownList runat="server" ID="BankName" CssClass="form-control" AutoPostBack = "true" OnSelectedIndexChanged="BankName_SelectedIndexChanged"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BankName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    			<td class="col-md-4">
    				<div class="col-md-12">
                        <asp:DropDownList runat="server" ID="BankBranch" CssClass="form-control" 
                        AutoPostBack = "true" Enabled = "false" OnSelectedIndexChanged="BankBranch_SelectedIndexChanged"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BankBranch"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    			<td class="col-md-4">
    				<div class="col-md-12">
                        <asp:DropDownList runat="server" ID="BankIFSC" CssClass="form-control" 
                        AutoPostBack = "true" Enabled = "false" OnSelectedIndexChanged="BankIFSC_SelectedIndexChanged"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="BankIFSC"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    		</tr>
    	</table>

        <asp:Label ID="Results" runat="server" Text="" Font-Names = "Arial" />

    	<table class="w3-table">

    		<tr>
    			<th class="col-md-4">Account Number</th>
    			<th class="col-md-4">Account Type</th>
    			<th class="col-md-4">Name of Account Holder</th>
    		</tr>
    		<tr>
    			<td class="col-md-4">
    				<div class="col-md-12">
                        <asp:TextBox runat="server" ID="AccountNum" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="AccountNum"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    			<td class="col-md-4">
    				<div class="col-md-12">
                        <asp:TextBox runat="server" ID="AccountType" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="AccountType"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
    			</td>
    			<td class="col-md-4">
    				<div class="col-md-12">
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

  <div id="2" class="w3-container taby" style="display:none">
    <h2>Your Current Accounts Information & Details Here...</h2>
    <hr>
    
  <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding" AllowPaging="true" OnPageIndexChanging="OnPaging" PageSize="10"> 
    <AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="User Name">  
             <ItemTemplate>  
                 <asp:Label ID="UserName" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Bank Name">  
             <ItemTemplate>  
                 <asp:Label ID="BankName" runat="server" Text='<%#Bind("BankName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Bank Branch">  
             <ItemTemplate>  
                 <asp:Label ID="BankBranch" runat="server" Text='<%#Bind("BankBranch") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Bank IFSC Code">  
             <ItemTemplate>  
                 <asp:Label ID="BankIFSC" runat="server" Text='<%#Bind("BankIFSC") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Account Number">  
             <ItemTemplate>  
                 <asp:Label ID="AccountNum" runat="server" Text='<%#Bind("AccountNum") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Account Type">  
             <ItemTemplate>  
                 <asp:Label ID="AccountType" runat="server" Text='<%#Bind("AccountType") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Name of the Account Holder">  
             <ItemTemplate>  
                 <asp:Label ID="NameOfAccHolder" runat="server" Text='<%#Bind("NameOfAccHolder") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Status">  
             <ItemTemplate>  
                 <asp:Label ID="Status" runat="server" Text='<%#Bind("Status") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Current Balance">  
             <ItemTemplate>  
                 <asp:Label ID="Balance" runat="server" Text='<%#Bind("Balance") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
     </columns>  

  </asp:GridView>
    
  </div>

  <div id="3" class="w3-container taby" style="display:none">
    <h2>Manage Accounts</h2>
    <p>You didnt have any transactions.</p>
  </div>

</div>


</asp:content>