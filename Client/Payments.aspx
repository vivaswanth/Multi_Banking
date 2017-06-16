<%@ Page Title="Transactions" Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="Payments.aspx.cs" Inherits="Client_Transactions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="w3-row w3-padding w3-white w3-card-2 navbar-static-top" style="margin-top: -2%">
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
</div>


<div class="w3-container">
	
    <div id="1" class="w3-container taby">
  	<h2>Money Transfer</h2>

  	<div class="form-horizontal well">  		
  		<div class="w3-row" style="margin-left: 10%">
  			<div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Account1" CssClass="col-md-5 control-label">Enter Your Account Number</asp:Label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="Account1" CssClass="form-control" Placeholder="Your Account Number"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Account1"

                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Account2" CssClass="col-md-5 control-label">Enter Destination Account Number</asp:Label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="Account2" CssClass="form-control" Placeholder="Destination Account Number"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Account2"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="TUserName" CssClass="col-md-5 control-label">Enter Destination User Name</asp:Label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="TUserName" CssClass="form-control" Placeholder="Destination User Name"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TUserName"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Amount" CssClass="col-md-5 control-label">Enter Amount to be Transferred</asp:Label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="Amount" TextMode="Number" CssClass="form-control" Placeholder="Amount to be transferred"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Amount"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Remarks" CssClass="col-md-5 control-label">Remarks If Any</asp:Label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="Remarks" CssClass="form-control" Placeholder="Remarks"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Remarks"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="TPassword" CssClass="col-md-5 control-label">Enter High Security Transaction Password</asp:Label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="TPassword" TextMode="Password" CssClass="form-control" Placeholder="High security password"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TPassword"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
                </div>
            </div>
            <div class="form-group">
            <div class="col-md-10 w3-center">
                <asp:Button runat="server" OnClick="MakeTransfer" Text="Make Transfer" CssClass="btn btn-default" />
            </div>
        </div>
        <asp:label runat="server" ID="result" Text="please enter valid account numbers" />
  		</div>
  	</div>
  </div>

  <div id="2" class="w3-container taby" style="display: none">
    <h2>Recent Transactions</h2>
    <hr>
    
  <asp:GridView ID="grid3" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding"> 
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

  <div id="3" class="w3-container taby" style="display: none">
  <asp:Button ID="printButton" runat="server" Text="Print" OnClientClick="javascript:window.print();" />
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
</asp:Content>