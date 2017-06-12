<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterAdmin.Master" CodeFile="AdminQueries.aspx.cs" Inherits="Admin_AdminQueries" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	
	<div class="w3-row w3-padding w3-white w3-card-2 navbar-fixed-top" style="margin-top: 4%">
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
  <div class="col-md-2 w3-right">
      <a href="Notifications.aspx"><span class="fa fa-bell" style="font-size:24px; padding-right: 20px ; margin-top: 5%"></span></a>
      <a href="Settings.aspx"><span class="fa fa-cog" style="font-size:24px; margin-top: 5%"></span></a>
  </div>
</div>


<div class="w3-container" style="margin-top: 10%">

  <div id="1" class="w3-container taby">
  	<h2>Ask Your Queries Here!</h2>

  	<div class="form-horizontal">
  		<asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
  		<div class="w3-row">
  			<div class="form-group">
                <asp:Label ID="Label1" runat="server" AssociatedControlID="Destination" CssClass="col-md-3 control-label">UserName</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="Destination" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Destination"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" AssociatedControlID="Query" CssClass="col-md-3 control-label">Subject Of The Message</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="Query" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Query"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" AssociatedControlID="Message" CssClass="col-md-3 control-label">Body Of The Message</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="Message" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Message"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
           
            <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button1" runat="server"  Text="SUBMIT" CssClass="btn btn-default" />
            </div>
        </div>
  		</div>
  	</div>
  </div>

  <div id="2" class="w3-container taby">
  </div>

</div>


</asp:Content>