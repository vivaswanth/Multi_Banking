<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterAdmin.Master" CodeFile="AddBanks.aspx.cs" Inherits="Admin_AddBanks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<div class="w3-row w3-padding w3-white w3-card-2 navbar-fixed-top" style="margin-top: 4%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">Approved Banks</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">All Banks</div>
    </a>
  </div>

  </div>
</div>

	<div id="1" class="container taby w3-padding" style="margin-top: 10%">

	<h3>Showing the list of all the approved banks</h3>
    
  <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding"> 
  	<AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="BAID">  
             <ItemTemplate>  
                 <asp:Label ID="BAID" runat="server" Text='<%#Bind("BAID") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Bank Name">  
             <ItemTemplate>  
                 <asp:Label ID="BABankName" runat="server" Text='<%#Bind("BABankName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Bank Branch">  
             <ItemTemplate>  
                 <asp:Label ID="BABankBranch" runat="server" Text='<%#Bind("BABankBranch") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Bank IFSC Code">  
             <ItemTemplate>  
                 <asp:Label ID="BABankIFSC" runat="server" Text='<%#Bind("BABankIFSC") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Status">  
             <ItemTemplate>  
                 <asp:Label ID="BAStatus" runat="server" Text='<%#Bind("BAStatus") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="View Details">  
             <ItemTemplate>  
                 <asp:LinkButton runat="server" class="btn btn-success btn-sm" OnClick="ViewClick_Redirect" Text="View Details" CommandArgument='<%#Eval("BABankIFSC")%>'/>
             </ItemTemplate>  
         </asp:TemplateField>  
     </columns>  

  </asp:GridView>
		
	</div>

	<div id="2" class="container taby w3-padding" style="display:none; margin-top: 10%">

	<h3>Showing the list of all the applied banks</h3>
		
		<asp:GridView ID="grid2" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding"> 
  	<AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="BAID">  
             <ItemTemplate>  
                 <asp:Label ID="BAID" runat="server" Text='<%#Bind("BAID") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Bank Name">  
             <ItemTemplate>  
                 <asp:Label ID="BABankName" runat="server" Text='<%#Bind("BABankName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Bank Branch">  
             <ItemTemplate>  
                 <asp:Label ID="BABankBranch" runat="server" Text='<%#Bind("BABankBranch") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Bank IFSC Code">  
             <ItemTemplate>  
                 <asp:Label ID="BABankIFSC" runat="server" Text='<%#Bind("BABankIFSC") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Status">  
             <ItemTemplate>  
                 <asp:Label ID="BAStatus" runat="server" Text='<%#Bind("BAStatus") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="View Details">  
             <ItemTemplate>  
                 <asp:LinkButton runat="server" class="btn btn-success btn-sm" OnClick="ViewClick_Redirect" Text="View Details" CommandArgument='<%#Eval("BABankIFSC")%>'/>
             </ItemTemplate>  
         </asp:TemplateField>  
     </columns>  

  </asp:GridView>


	</div>


</asp:Content>
