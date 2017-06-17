<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterBankAdmin.Master" CodeFile="BankAdminNotifications.aspx.cs" Inherits="Bank_Admin_BankAdminNotifications" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<div class="container">
		<h2>Notifications</h2>
		<hr>
    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding"> 
    <AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="From">  
             <ItemTemplate>  
                 <asp:Label ID="UserName" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Addressed to">  
             <ItemTemplate>  
                 <asp:Label ID="Destination" runat="server" Text='<%#Bind("Destination") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Query">  
             <ItemTemplate>  
                 <asp:Label ID="Query" runat="server" Text='<%#Bind("Query") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Message">  
             <ItemTemplate>  
                 <asp:Label ID="Message" runat="server" Text='<%#Bind("Message") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Status">  
             <ItemTemplate>  
                 <asp:Label ID="Status" runat="server" Text='<%#Bind("Status") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
     </columns>  

  </asp:GridView>
	</div>

</asp:Content>