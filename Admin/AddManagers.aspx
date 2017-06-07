<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterAdmin.Master" CodeFile="AddManagers.aspx.cs" Inherits="Admin_AddManagers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	
	<div class="well well-sm" style="margin-top: 4%">
		<h2>Welcome <asp:label runat="server" ID="name"></asp:label> </h2>
	</div>

	<div class="container">
    
  <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding"> 
  	<AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="Username">  
             <ItemTemplate>  
                 <asp:Label ID="BAUserName" runat="server" Text='<%#Bind("BAUserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Bank Admin Name">  
             <ItemTemplate>  
                 <asp:Label ID="BAName" runat="server" Text='<%#Bind("BAName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Aadhaar ID">  
             <ItemTemplate>  
                 <asp:Label ID="BAAadhaar" runat="server" Text='<%#Bind("BAAadhaar") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Email ID">  
             <ItemTemplate>  
                 <asp:Label ID="BAEmail" runat="server" Text='<%#Bind("BAEmail") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Mobile Number">  
             <ItemTemplate>  
                 <asp:Label ID="BAMobileNum" runat="server" Text='<%#Bind("BAMobileNum") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="BAID">  
             <ItemTemplate>  
                 <asp:Label ID="BAID" runat="server" Text='<%#Bind("BAID") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Status">  
             <ItemTemplate>  
                 <asp:Label ID="Status" runat="server" Text='<%#Bind("Status") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="View Details">  
             <ItemTemplate>  
                 <asp:LinkButton runat="server" class="btn btn-success btn-sm" OnClick="ViewClick_Redirect" Text="View Details" CommandArgument='<%#Eval("BAUserName")%>'/>
             </ItemTemplate>  
         </asp:TemplateField>  
     </columns>  

  </asp:GridView>
		
	</div>

</asp:Content>