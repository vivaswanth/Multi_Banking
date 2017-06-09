<%@ Page Title="Transactions" Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="Transactions.aspx.cs" Inherits="Client_Transactions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="w3-row w3-padding w3-white w3-card-2 navbar-fixed-top" style="margin-top: 4%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">Money Transfer</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Past Transactions</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '3');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Mini Statement</div>
    </a>
  </div>

  </div>
  <div class="col-md-2 w3-right">
      <a href="Notifications.aspx"><span class="fa fa-bell" style="font-size:24px; padding-right: 20px ; margin-top: 5%"></span></a>
      <a href="Settings.aspx"><span class="fa fa-cog" style="font-size:24px; margin-top: 5%"></span></a>
  </div>
</div>


<div class="w3-container" style="margin-top: 10%">
	
    <div id="1" class="w3-container taby">
  	<h2>Money Transfer</h2>

  	<div class="form-horizontal">
  		<asp:ValidationSummary runat="server" CssClass="text-danger" />
  		<div class="w3-row">
  			<div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Account1" CssClass="col-md-3 control-label">Enter Your Account Number</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="Account1" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Account1"

                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Account2" CssClass="col-md-3 control-label">Enter Destination Account Number</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="Account2" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Account2"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="TUserName" CssClass="col-md-3 control-label">Enter Destination User Name</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="TUserName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TUserName"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Amount" CssClass="col-md-3 control-label">Enter Amount to be Transferred</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="Amount" TextMode="Number" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Amount"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Remarks" CssClass="col-md-3 control-label">Remarks If Any</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="Remarks" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Remarks"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="TPassword" CssClass="col-md-3 control-label">Enter High Security Transaction Password</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="TPassword" TextMode="Password"  CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TPassword"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
                </div>
            </div>
            <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="MakeTransfer" Text="Make Transfer" CssClass="btn btn-default" />
            </div>
        </div>
        <asp:label runat="server" ID="result" Text="please enter valid account numbers" />
  		</div>
  	</div>
  </div>

  <div id="2" class="w3-container taby">
    
  </div>

  <div id="3" class="w3-container taby">
  </div>



</div>
</asp:Content>