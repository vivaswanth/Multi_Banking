﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterBankAdmin.Master" CodeFile="BankAdminQueries.aspx.cs" Inherits="Bank_Admin_BankAdminQueries" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	
<div class="w3-row w3-padding w3-white w3-card-2 navbar-static-top" style="margin-top: -2%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">Queries</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Past Queries</div>
    </a>
  </div>
  </div>
</div>


<div class="w3-container">

  <div id="1" class="w3-container taby">
  	<h2>Send Your Emails Here!</h2>
    <p>Please specify the destination username...</p>
  	<div class="form-horizontal well">
  		<asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
  		<div class="w3-row">
  			<div class="form-group">
                <asp:Label ID="Label1" runat="server" AssociatedControlID="Destination" CssClass="col-md-5 control-label">Enter UserName</asp:Label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="Destination" CssClass="form-control" Placeholder="Username"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Destination"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" AssociatedControlID="Query" CssClass="col-md-5 control-label">Subject Of The Message</asp:Label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="Query" CssClass="form-control"  Placeholder="Subject"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Query"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" AssociatedControlID="Message" CssClass="col-md-5 control-label">Body Of The Message</asp:Label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="Message" CssClass="form-control" TextMode="MultiLine" Placeholder="Message" Rows="3"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Message"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
           
            <div class="form-group">
            <div class="w3-center col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-default" />
            </div>
        </div>
  		</div>
  	</div>
  </div>

  <div id="2" class="w3-container taby">
  </div>

</div>


</asp:Content>