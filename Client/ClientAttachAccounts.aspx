<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterClient.master" 
CodeFile="ClientAttachAccounts.aspx.cs" Inherits="Client_ClientAttachAccounts" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="w3-row w3-padding w3-white w3-card-2 navbar-fixed-top" style="margin-top: 4%">
  <div class="col-md-10">
    <div class="w3-row">
    <a href="javascript:void(0)" onclick="openTab(event, '1');">
      <div class="w3-quarter tablink w3-bottombar w3-border-blue w3-text-blue w3-padding">Attach Accounts</div>
    </a>
    <a href="javascript:void(0)" onclick="openTab(event, '2');">
      <div class="w3-quarter tablink w3-bottombar w3-hover-light-grey w3-padding">Attached Accounts</div>
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
  	<h2>Attach Accounts</h2>

  	<div class="form-horizontal">
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
                <asp:Label runat="server" AssociatedControlID="TUserName" CssClass="col-md-3 control-label">Enter User Name of destination Account</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="TUserName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TUserName"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Remarks" CssClass="col-md-3 control-label">Enter Remarks If any</asp:Label>
                <div class="col-md-8">
                    <asp:TextBox runat="server" ID="Remarks" CssClass="form-control" />
                </div>
            </div>
            <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Attach Account" OnClick="Attach_Accounts" CssClass="btn btn-default" />
            </div>
        	</div>
  		</div>
  		<asp:label runat="server" ID="result" Text="please enter valid account numbers" />
  	</div>
  </div>

  <div id="2" class="w3-container taby">
  		<h3>Showing the list of all the Attached Accounts</h3>
	<hr>

	<div class="w3-row well">
		<asp:TextBox ID="txtSearch" class="w3-input w3-third" placeholder="Search here for username" runat="server" />
		<asp:Button Text="Search" runat="server" class="w3-btn w3-blue" OnClick="Search"></asp:Button>
	</div>
    
  <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding" AllowPaging="true" OnPageIndexChanging="OnPaging" PageSize="10"> 
  	<AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="User Name">  
             <ItemTemplate>  
                 <asp:Label ID="UserName" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Attached account Holder">  
             <ItemTemplate>  
                 <asp:Label ID="AttachedUserName" runat="server" Text='<%#Bind("AttachedUserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Your Account Number">  
             <ItemTemplate>  
                 <asp:Label ID="AccountNum" runat="server" Text='<%#Bind("AccountNum") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Attached Account Number">  
             <ItemTemplate>  
                 <asp:Label ID="AttachedAccountNum" runat="server" Text='<%#Bind("AttachedAccountNum") %>'></asp:Label>  
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
         <asp:TemplateField HeaderText="Attachment ID">  
             <ItemTemplate>  
                 <asp:Label ID="AttachmentID" runat="server" Text='<%#Bind("AttachmentID") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
     </columns>  

  </asp:GridView>
  </div>
</div>
</asp:Content>