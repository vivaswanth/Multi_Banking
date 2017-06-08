<%@ Page Title="Dashboard" Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Client_Dashboard" %>

<asp:content id="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="w3-row w3-padding w3-white w3-card-2 navbar-fixed-top" style="margin-top: 4%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">Profile</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Edit Information</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '3');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Upload ID / Files</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '4');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Change Password</div>
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
    <h2>Your Profile Information & Details Here...</h2><br>
    
    <div class="container">
    <table class="w3-table w3-border w3-striped w3-white w3-bordered">
    <tr>
      <th>Category</th>
      <th>Value</th>
    </tr>
    <tr>
      <td>First Name </td>
      <td><asp:label runat="server" ID="FirstName"></asp:label></td>
    </tr>
    <tr>
      <td>Last Name </td>
      <td><asp:label runat="server" ID="LastName"></asp:label></td>
    </tr>
    <tr>
      <td>User Name </td>
      <td><asp:label runat="server" ID="UserName"></asp:label></td>
    </tr>
    <tr>
      <td>Father's Name </td>
      <td><asp:label runat="server" ID="FatherName"></asp:label></td>
    </tr>
    <tr>
      <td>Mobile Number </td>
      <td><asp:label runat="server" ID="MobileNum"></asp:label></td>
    </tr>
    <tr>
      <td>Email ID </td>
      <td><asp:label runat="server" ID="Email"></asp:label></td>
    </tr>
    <tr>
      <td>Address </td>
      <td><asp:label runat="server" ID="Address"></asp:label></td>
    </tr>
    <tr>
      <td>Aadhaar </td>
      <td><asp:label runat="server" ID="Aadhaar"></asp:label></td>
    </tr>
  </table>
  </div>

  </div>

  <div id="2" class="w3-container taby" style="display:none">
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

    <div class="form">
    	<div class="form-group col-md-6">
        	<asp:Label runat="server" AssociatedControlID="Aadhaar2" CssClass="col-md-3 control-label">Change Aadhaar</asp:Label>
        	<div class="col-md-8">
            	<asp:TextBox runat="server" ID="Aadhaar2" CssClass="form-control" />
        	</div>
        	<div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="UpdateUser_Click_Aadhaar" Text="Change" CssClass="btn btn-primary" />
            </div>
            <asp:label class="col-md-offset-2 col-md-10" ID="result2" runat="server" Text="result"></asp:label>
        </div>
    	</div> 
    </div>
  </div>

  <div id="3" class="w3-container taby" style="display:none">
    <h2>Edit / Upload ID</h2>
    <p>You didnt have any transactions.</p>
  </div>

  <div id="4" class="w3-container taby" style="display:none">
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

</asp:content>