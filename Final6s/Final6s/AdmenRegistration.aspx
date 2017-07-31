<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="AdmenRegistration.aspx.cs" Inherits="Final6s.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <table class="auto-style10">
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="Signup"  Placeholder="Name"  runat="server" Text="Sign-up"></asp:Label>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="AdName"  Placeholder="Name" runat="server"  Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AdName" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="AdCnic"  Placeholder="Cnic Number" runat="server" Width="210px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AdCnic" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="AdCnic" Display="Dynamic" ErrorMessage="Incorrect Expression" SetFocusOnError="True" ValidationExpression="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$" ForeColor="Red" ValidationGroup="signup"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="AdEmail"  Placeholder="Email"  runat="server" Width="208px" OnTextChanged="AdEmail_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AdEmail" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="AdEmail" Display="Dynamic" ErrorMessage="@_mail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="signup"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="AdPhone"  Placeholder="Phone Number" runat="server" Width="209px" OnTextChanged="AdPhone_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="AdPhone" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="AdPassword"  Placeholder="Password" runat="server" Width="208px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style14"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="AdPassword" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:TextBox ID="AdAddress"  Placeholder="Address" runat="server" Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style14"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ADAddress" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">

                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GotoStore" Width="141px" />

                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Adsignup" runat="server" Text="Sign-up" Height="33px" Width="85px" OnClick="Adsignup_Click" ValidationGroup="signup" />
                    </td>
                </tr>
            </table>

</asp:Content>
