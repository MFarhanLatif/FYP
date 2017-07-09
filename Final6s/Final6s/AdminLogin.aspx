<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Final6s.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 310px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style3">
            <asp:TextBox ID="UserName" placeholder="UserName" runat ="server" Width="286px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:TextBox ID="Password" placeholder="Password" runat="server" Width="285px" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="?" SetFocusOnError="True" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="Adminlogin" runat="server" Height="33px" Text="Login" Width="82px" ValidationGroup="login" />
        </td>
    </tr>
</table>
</asp:Content>
