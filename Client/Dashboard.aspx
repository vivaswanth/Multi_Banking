<%@ Page Title="Dashboard" Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Client_Dashboard" %>

<asp:content id="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="w3-row w3-padding w3-white w3-card-2 navbar-static-top" style="margin-top: -2%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">Profile</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Upload ID / Files</div>
    </a>
  </div>

  </div>
</div>


<div class="w3-container">
  
  <div id="1" class="w3-container taby">
    <h2>Your Profile Information & Details Here...</h2><br>
    
    <div class="container">
      <legend>Profile Information</legend>
      <table class="w3-table w3-border w3-striped w3-white table-bordered">
        <tr>
          <th class="col-md-3">First Name</th>
          <th class="col-md-3">Last Name</th>
          <th class="col-md-3">User Name</th>
          <th class="col-md-3">Father Name</th>
        </tr>
        <tr>    
          <td class="col-md-3"><asp:label runat="server" ID="FirstName"></asp:label></td>
          <td class="col-md-3"><asp:label runat="server" ID="LastName"></asp:label></td>
          <td class="col-md-3"><asp:label runat="server" ID="UserName"></asp:label></td>
          <td class="col-md-3"><asp:label runat="server" ID="FatherName"></asp:label></td>
        </tr>
    </table>
    <br>
    <legend>Personal Information</legend>
    <table class="w3-table w3-border w3-striped w3-white table-bordered">
        <tr>
          <th class="col-md-3">Date of Birth</th>
          <th class="col-md-3">Gender</th>
          <th class="col-md-3">Mobile Number</th>
          <th class="col-md-3">Email ID</th>
        </tr>
        <tr>    
          <td class="col-md-3"><asp:label runat="server" ID="DOB"></asp:label></td>
          <td class="col-md-3"><asp:label runat="server" ID="Sex"></asp:label></td>
          <td class="col-md-3"><asp:label runat="server" ID="MobileNum"></asp:label></td>
          <td class="col-md-3"><asp:label runat="server" ID="Email"></asp:label></td>
        </tr>
    </table>
    <br>
    <legend>Address Information</legend>
    <table class="w3-table w3-border w3-striped w3-white table-bordered">
        <tr>
          <th class="col-md-3">Address</th>
          <th class="col-md-3">City</th>
          <th class="col-md-3">State</th>
          <th class="col-md-3">Pin Code</th>
        </tr>
        <tr>    
          <td class="col-md-3"><asp:label runat="server" ID="Address"></asp:label></td>
          <td class="col-md-3"><asp:label runat="server" ID="City"></asp:label></td>
          <td class="col-md-3"><asp:label runat="server" ID="State"></asp:label></td>
          <td class="col-md-3"><asp:label runat="server" ID="PinCode"></asp:label></td>
        </tr>
    </table>
  </div>
</div>
  <div id="2" class="w3-container taby" style="display:none">
    <h2>Edit / Upload ID</h2>
    <p>Upload your photo id here</p>
    <asp:FileUpload ID="FileUpload1" runat="server" /><br>
    <asp:Button ID="btnUpload" CssClass="w3-btn w3-green" runat="server" Text="Upload" OnClick="Upload"/>


  </div>
</div>
</asp:content>