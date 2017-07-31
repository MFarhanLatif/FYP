<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="CustRegistration.aspx.cs" Inherits="Final6s.CustRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 32%;
            height: 133px;
        }
    .auto-style8 {
        height: 26px;
        width: 208px;
    }
    .auto-style9 {
            width: 208px;
        }
        .auto-style10 {
            width: 33%;
            height: 461px;
        }
        .auto-style12 {
            width: 230px;
        }
        .auto-style13 {
            height: 26px;
            width: 230px;
        }
        .auto-style14 {
            width: 39px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>   <table class="auto-style2">
    <tr>
        <td class="auto-style9">
            <asp:TextBox ID="UserName"  Placeholder="UserName" runat="server" Width="218px"></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="login"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:TextBox ID="Password"  Placeholder="Password" runat="server" Width="214px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style13">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="login"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td class="auto-style9">
             <asp:Label ID="Label1"  placeholder=" " runat="server" ></asp:Label> 
            </td>
             <td class="auto-style12">
            <asp:Button ID="Login" runat="server" Height="33px" Text="Login" Width="85px" OnClick="Login_Click" ValidationGroup="login" />
        </td>
    </tr>
</table>
     </div>
    
            <table class="auto-style10">
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Signup" runat="server" Text="Sign-up"></asp:Label>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="CustName" Placeholder="Name" runat="server"  Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CustName" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="CustCnic" Placeholder="Cnic Number" runat="server" Width="210px" OnTextChanged="CustCnic_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CustCnic" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CustCnic" Display="Dynamic" ErrorMessage="Incorrect Expression" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$" ValidationGroup="signup"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label0" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="CustEmail" Placeholder="Emial" runat="server" Width="208px" OnTextChanged="CustEmail_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="CustEmail" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="CustEmail" Display="Dynamic" ErrorMessage="@_mail.com" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="signup"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="CustPhone" Placeholder="Phone Number" runat="server" Width="209px" OnTextChanged="CustPhone_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CustPhone" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="CustPassword" Placeholder="Password" runat="server" Width="208px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="CustPassword" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="CustAddress" Placeholder="Address" runat="server" Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CustAddress" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">

                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Custsignup" runat="server" Text="Sign-up" Height="33px" Width="85px" OnClick="Custsignup_Click" ValidationGroup="signup" />
                    </td>
                </tr>
            </table>
        
       
</asp:Content>
