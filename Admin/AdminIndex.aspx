<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterAdmin.Master" CodeFile="AdminIndex.aspx.cs" Inherits="Admin_AdminIndex" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	
	<div class="w3-row w3-padding w3-white w3-card-2 navbar-fixed-top" style="margin-top: 4%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">Active Clients</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Details</div>
    </a>
  </div>

  </div>
  <div class="col-md-2 w3-right">
      <a href="Notifications.aspx"><span class="fa fa-bell" style="font-size:24px; padding-right: 20px ; margin-top: 5%"></span></a>
      <a href="Settings.aspx"><span class="fa fa-cog" style="font-size:24px; margin-top: 5%"></span></a>
  </div>
</div>

  	<div id="1" class="container taby w3-padding" style="margin-top: 10%">

	<h3>Showing the list of all the Active Clients</h3>
	<hr>

	<div class="w3-row well">
		<asp:TextBox ID="txtSearch" class="w3-input w3-third" placeholder="Search here for username" runat="server" />
		<asp:Button Text="Search" runat="server" class="w3-btn w3-blue" OnClick="Search"></asp:Button>
	</div>
    
  <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding" AllowPaging="true" OnPageIndexChanging="OnPaging" PageSize="10"> 
  	<AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="First Name">  
             <ItemTemplate>  
                 <asp:Label ID="FirstName" runat="server" Text='<%#Bind("FirstName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Last Name">  
             <ItemTemplate>  
                 <asp:Label ID="LastName" runat="server" Text='<%#Bind("LastName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="User Name">  
             <ItemTemplate>  
                 <asp:Label ID="UserName" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Mobile Number">  
             <ItemTemplate>  
                 <asp:Label ID="MobileNum" runat="server" Text='<%#Bind("MobileNum") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Email">  
             <ItemTemplate>  
                 <asp:Label ID="Email" runat="server" Text='<%#Bind("Email") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Aadhaar ID">  
             <ItemTemplate>  
                 <asp:Label ID="Aadhaar" runat="server" Text='<%#Bind("Aadhaar") %>'></asp:Label>  
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
</asp:Content>