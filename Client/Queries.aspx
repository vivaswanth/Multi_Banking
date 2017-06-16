<%@ Page Title="Queries" Language="C#" MasterPageFile="MasterClient.master" AutoEventWireup="true" CodeFile="Queries.aspx.cs" Inherits="Client_Queries" %>

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
  	<h2>Ask Your Queries Here!</h2>

  	<div class="form-horizontal well">
  		<div class="container">
  			<div class="form-group">
                <asp:Label ID="Label1" runat="server" AssociatedControlID="Destination" CssClass="col-md-5 control-label">Choose Destination</asp:Label>
                <div class="col-md-3">
                  <asp:DropDownList runat="server" ID="Destination" CssClass="form-control" AutoPostBack = "true" OnSelectedIndexChanged="Destination_SelectedIndexChanged"/>
                  <asp:RequiredFieldValidator runat="server" ControlToValidate="Destination"
                  CssClass="text-danger" ErrorMessage="The user name field is required." />
                </div>
            </div>
            <asp:Label ID="result" runat="server"/>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" AssociatedControlID="Query" CssClass="col-md-5 control-label">Subject Of The Message</asp:Label>
                <div class="col-md-5">
                    <asp:TextBox runat="server" ID="Query" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Query"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" AssociatedControlID="Message" CssClass="col-md-5 control-label">Body Of The Message</asp:Label>
                <div class="col-md-5">
                    <asp:TextBox runat="server" ID="Message" CssClass="form-control" TextMode="MultiLine" Rows="3"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Message"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                </div>
            </div>
           
            <div class="form-group">
            <div class="w3-center col-md-12">
                <asp:Button ID="Button1" runat="server" OnClick="Send_Query" Text="SUBMIT" CssClass="btn btn-default" />
            </div>
        </div>
  		</div>
  	</div>
  </div>

  <div id="2" class="w3-container taby" style="display: none">
    <h2>Showing all the query data, Click to enlarge</h2>
    <hr>
    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="14" class="w3-table w3-padding"> 
    <AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="From">  
             <ItemTemplate>  
                 <asp:Label ID="UserName" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Addressed to">  
             <ItemTemplate>  
                 <asp:Label ID="Destination" runat="server" Text='<%#Bind("Destination") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Query">  
             <ItemTemplate>  
                 <asp:Label ID="Query" runat="server" Text='<%#Bind("Query") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Message">  
             <ItemTemplate>  
                 <asp:Label ID="Message" runat="server" Text='<%#Bind("Message") %>'></asp:Label>  
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