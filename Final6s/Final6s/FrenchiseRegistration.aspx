<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="FrenchiseRegistration.aspx.cs" Inherits="Final6s.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">  
            .Gridview {  
                font-family: Verdana;  
                font-size: 10pt;  
                font-weight: normal;  
                color: black;  
            }  
        </style>  
        <script type="text/javascript">  
        </script>  
    
  
     <style type="text/css">

        .auto-style2 {
            width: 100%;
        }
    .auto-style3 {
             width: 121px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     


    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="FoName" Placeholder="Name"   runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FoName" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="FoCnic"  Placeholder="Cnic" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FoCnic" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FoCnic" Display="Dynamic" ErrorMessage="Incorrect Expression" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$" ValidationGroup="signup"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="FoEmail" Placeholder="Email" runat="server" OnTextChanged="FoEmail_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FoEmail" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="FoEmail" Display="Dynamic" ErrorMessage="@_mail.com" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="signup"></asp:RegularExpressionValidator>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="FoPhone" Placeholder="Phone" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FoPhone" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="FoPassword" Placeholder="Password" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FoPassword" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="FoCity" Placeholder="City" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FoCity" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="FoAddress"  Placeholder="Address" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FoAddress" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    
    
   
<table class="auto-style2">
    <tr>
        <td>
                <asp:Button ID="AddFo" runat="server" OnClick="AddFo_Click" Text="Add" Width="171px" Height="45px" ValidationGroup="signup" />
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FoId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="FoId" HeaderText="FoId" InsertVisible="False" ReadOnly="True" SortExpression="FoId" />
                    <asp:BoundField DataField="FoName" HeaderText="FoName" SortExpression="FoName" />
                    <asp:BoundField DataField="FoCnic" HeaderText="FoCnic" SortExpression="FoCnic" />
                    <asp:BoundField DataField="FoEmail" HeaderText="FoEmail" SortExpression="FoEmail" />
                    <asp:BoundField DataField="FoPhone" HeaderText="FoPhone" SortExpression="FoPhone" />
                    <asp:BoundField DataField="FoPassword" HeaderText="FoPassword" SortExpression="FoPassword" />
                    <asp:BoundField DataField="FoCity" HeaderText="FoCity" SortExpression="FoCity" />
                    <asp:BoundField DataField="FoAddress" HeaderText="FoAddress" SortExpression="FoAddress" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:s6finalConnectionString %>" SelectCommand="SELECT * FROM [FrenchiseRegistration]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
    
    
   
</asp:Content>