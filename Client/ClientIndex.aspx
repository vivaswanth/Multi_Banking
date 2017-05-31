<%@ Page Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="ClientIndex.aspx.cs" Inherits="Client_ClientIndex" %>

<asp:content id="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="well well-sm" style="margin-top: 4%">
	<h2>Welcome <asp:label runat="server" ID="name"></asp:label> </h2>
</div>

<div class="w3-container">
  <h2>Manage Your Activites</h2>

  <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-third tablink w3-bottombar w3-border-blue w3-text-blue w3-hover-light-grey w3-padding">Recent logins</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Attached Accounts</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '3');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">My Recent Transactions</div>
    </a>
  </div>

  <div id="1" class="w3-container taby">
    <h2>Recent Logins</h2>
    <p>Your recent logins will be displayed here.</p>
  </div>

  <div id="2" class="w3-container taby" style="display:none">
    <h2>Attached Accounts</h2>
    <p>You havent attached any accounts.</p> 
  </div>

  <div id="3" class="w3-container taby" style="display:none">
    <h2>Recent Transactions</h2>
    <p>You didnt have any transactions.</p>
  </div>
</div>

</asp:content>