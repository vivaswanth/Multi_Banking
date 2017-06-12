<%@ Page Title="Dashboard" Language="C#" AutoEventWireup="true" MasterPageFile="MasterAdmin.Master" CodeFile="AdminDashboard.aspx.cs" Inherits="Admin_AdminDashboard" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="w3-row w3-padding w3-white w3-card-2 navbar-fixed-top" style="margin-top: 4%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">Profile</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Change / update info</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '3');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Change / update password</div>
    </a>
  </div>

  </div>
  <div class="col-md-2 w3-right">
      <a href="Notifications.aspx"><span class="fa fa-bell" style="font-size:24px; padding-right: 20px ; margin-top: 5%"></span></a>
      <a href="Settings.aspx"><span class="fa fa-cog" style="font-size:24px; margin-top: 5%"></span></a>
  </div>
</div>

  <div id="1" class="w3-container taby" style="margin-top: 10%">
    <h2>Your Profile Information & Details Here...</h2><br>
    
    
    <table class="w3-table w3-border w3-padding w3-bordered w3-striped">
    <tr>
    	<th>Full Name </th>
    	<th>User Name </th>
    	<th>Mobile Number </th>
    	<th>Email ID </th>
    </tr>    
    <tr>   
      <td><asp:label runat="server" ID="PAName"></asp:label></td>
      <td><asp:label runat="server" ID="PAUserName"></asp:label></td>
      <td><asp:label runat="server" ID="PAMobileNum"></asp:label></td>
      <td><asp:label runat="server" ID="PAEmail"></asp:label></td>
    </tr>
  </table>

  </div>

  <div id="2" class="w3-container taby" style="display:none;margin-top: 10%">
    <h2>Edit / Add Information</h2>
    <p>You havent attached any accounts.</p>

    <div class="form">
    	<div class="form-group col-md-6">
        	<asp:Label runat="server" AssociatedControlID="MobileNum2" CssClass="col-md-3 control-label">Edit Mobile Number</asp:Label>
        	<div class="col-md-8">
            	<asp:TextBox runat="server" ID="MobileNum2" CssClass="form-control" />
        	</div>
        	<div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="UpdateUser_Click_mobilenum" Text="Change" CssClass="btn btn-primary" />
            </div>
            <asp:label class="col-md-offset-2 col-md-10" ID="result1" runat="server" Text="result"></asp:label>
        </div>
    	</div>
    </div>
   </div>

  <div id="3" class="w3-container taby" style="display:none; margin-top: 10%">
    <h2>Change / Update Passwords</h2>
    <p>You didnt have any transactions.</p>
    <div class="form">
    	<div class="form-group col-md-6">
        	<asp:Label runat="server" AssociatedControlID="Password2" CssClass="col-md-3 control-label">Enter your New Password</asp:Label>
        	<div class="col-md-8">
            	<asp:TextBox runat="server" ID="Password2" CssClass="form-control" />
        	</div>
        	<asp:RequiredFieldValidator runat="server" ControlToValidate="Password2"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
    	</div>
    	<div class="form-group col-md-6">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword2" CssClass="col-md-3 control-label">Confirm password</asp:Label>
            <div class="col-md-8">
            <asp:TextBox runat="server" ID="ConfirmPassword2" TextMode="Password" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword2"
            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
            <asp:CompareValidator runat="server" ControlToCompare="Password2" ControlToValidate="ConfirmPassword2"
            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
        	</div>
    		<div class="form-group">
        		<div class="col-md-offset-2 col-md-10">
            		<asp:Button runat="server" OnClick="UpdateUser_Click_Password" Text="Change" CssClass="btn btn-primary" />
        		</div>
        		<asp:label class="col-md-offset-2 col-md-10" ID="result3" runat="server" Text="result"></asp:label>
        	</div>
    	</div>

  </div>
</div>

</div>
</asp:content>