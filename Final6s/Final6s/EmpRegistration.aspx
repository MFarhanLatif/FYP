<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="EmpRegistration.aspx.cs" Inherits="Final6s.WebForm1" %>
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
         .auto-style16 {
             width: 206px;
         }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>   <table class="auto-style2">
    <tr>
        <td class="auto-style9">
            <asp:TextBox ID="UserName"   Placeholder="UserName"  runat="server" Width="218px"></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:TextBox ID="Password"  Placeholder="Password"   runat="server" Width="214px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style13">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
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
                    <td class="auto-style16">
                        <asp:Label ID="Signup"  Placeholder="Name"  runat="server" Text="Sign-up"></asp:Label>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="EmpName"  Placeholder="Name" runat="server"  Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmpName" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="EmpCnic"  Placeholder="Cnic Number" runat="server" Width="210px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmpCnic" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmpCnic" Display="Dynamic" ErrorMessage="Incorrect Expression" SetFocusOnError="True" ValidationExpression="^/d{5}-\d{7}-\d{1}" ForeColor="Red" ValidationGroup="signup"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="EmpEmail"  Placeholder="Email"  runat="server" Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="EmpEmail" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmpEmail" Display="Dynamic" ErrorMessage="@_mail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="signup"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="EmpPhone"  Placeholder="Phone Number" runat="server" Width="209px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="EmpPhone" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="EmpPassword"  Placeholder="Password" runat="server" Width="208px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="EmpPassword" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="EmpAddress"  Placeholder="Address" runat="server" Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="EmpAddress" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">

                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Empsignup" runat="server" Text="Sign-up" Height="33px" Width="85px" OnClick="Empsignup_Click" ValidationGroup="signup" />
                    </td>
                </tr>
            </table>

    
        
</asp:Content>
