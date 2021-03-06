﻿<%@ Page Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="ClientIndex.aspx.cs" Inherits="Client_ClientIndex" %>

<asp:content id="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="w3-row w3-padding w3-white w3-card-2 navbar-static-top" style="margin-top: -2%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">My Accounts</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">My Recent Transactions</div>
    </a>
  </div>

  </div>
</div>


<div class="w3-container">
  
  <div id="1" class="w3-container taby">
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

  <div id="2" class="w3-container taby" style="display:none">
    <h2>Recent Transactions</h2>
    <hr>
    
  <asp:GridView ID="grid2" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding"> 
    <AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="User Name">  
             <ItemTemplate>  
                 <asp:Label ID="UserName" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Account Number [yours]">  
             <ItemTemplate>  
                 <asp:Label ID="AccountNum1" runat="server" Text='<%#Bind("AccountNum1") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Dest Account Number">  
             <ItemTemplate>  
                 <asp:Label ID="AccountNum2" runat="server" Text='<%#Bind("AccountNum2") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Dest User Name">  
             <ItemTemplate>  
                 <asp:Label ID="TUserName" runat="server" Text='<%#Bind("TUserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Amount transferred">  
             <ItemTemplate>  
                 <asp:Label ID="Amount" runat="server" Text='<%#Bind("Amount") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Remarks">  
             <ItemTemplate>  
                 <asp:Label ID="Remarks" runat="server" Text='<%#Bind("Remarks") %>'></asp:Label>  
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
</div>

</asp:content>