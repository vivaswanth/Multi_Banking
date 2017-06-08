<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterBankAdmin.Master" CodeFile="ClientRequests.aspx.cs" Inherits="Bank_Admin_ClientRequests" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	
	<div class="w3-row w3-padding w3-white w3-card-2 navbar-fixed-top" style="margin-top: 4%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">Client Requests</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Processed Clients</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '3');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Manage Clients</div>
    </a>
  </div>

  </div>
  <div class="col-md-2 w3-right">
      <a href="BANotifications.aspx"><span class="fa fa-bell" style="font-size:24px; padding-right: 20px ; margin-top: 5%"></span></a>
      <a href="BASettings.aspx"><span class="fa fa-cog" style="font-size:24px; margin-top: 5%"></span></a>
  </div>
</div>

<div class="w3-container" style="margin-top: 10%">

	<div id="1" class="container taby">
		<h2>Total Client Requests</h2>
		<p>Showing all the client requests related to your Bank and your Branch Specificially</p>
		<hr>
		<div class="w3-row well">
		<asp:TextBox ID="txtSearch" class="w3-input w3-third" placeholder="Search here for username" runat="server"/>
		<asp:Button Text="Search" runat="server" class="w3-btn w3-blue" OnClick="Search"></asp:Button>
	</div>
    
  <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding" AllowPaging="true" OnPageIndexChanging="OnPaging" PageSize="10"> 
  	<AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="User Name">  
             <ItemTemplate>  
                 <asp:Label ID="UserName" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="BankName">  
             <ItemTemplate>  
                 <asp:Label ID="BankName" runat="server" Text='<%#Bind("BankName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="BankBranch">  
             <ItemTemplate>  
                 <asp:Label ID="BankBranch" runat="server" Text='<%#Bind("BankBranch") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="BankIFSC">  
             <ItemTemplate>  
                 <asp:Label ID="BankIFSC" runat="server" Text='<%#Bind("BankIFSC") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="AccountNum">  
             <ItemTemplate>  
                 <asp:Label ID="AccountNum" runat="server" Text='<%#Bind("AccountNum") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="AccountType">  
             <ItemTemplate>  
                 <asp:Label ID="AccountType" runat="server" Text='<%#Bind("AccountType") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="NameOfAccHolder">  
             <ItemTemplate>  
                 <asp:Label ID="NameOfAccHolder" runat="server" Text='<%#Bind("NameOfAccHolder") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Status">  
             <ItemTemplate>  
                 <asp:Label ID="Status" runat="server" Text='<%#Bind("Status") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Balance">  
             <ItemTemplate>  
                 <asp:Label ID="Balance" runat="server" Text='<%#Bind("Balance") %>'>NA</asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="View Details">  
             <ItemTemplate>  
                 <asp:LinkButton runat="server" class="btn btn-success btn-sm" OnClick="ViewClick_Redirect" Text="View Details" CommandArgument='<%#Eval("UserName")%>'/>
             </ItemTemplate>  
         </asp:TemplateField>  
     </columns>  

  </asp:GridView>
	</div>

	<div id="2" class="container taby">
		
	</div>

	<div id="3" class="container taby">
		
	</div>
</div>


</asp:Content>