<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Final6s.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td>
                <asp:TextBox ID="VehicleType" placeholder="VechileType" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="SessionIdValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="VehicleNumber" placeholder="VehicleNumber" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="SessionId" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="ServiceType" placeholder="ServiceType" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="Latituade" Placeholder="Latituade " runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="Longituade" placeholder="Longituade " runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="Discreption" placeholder="Discreption" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Order" runat="server" Height="34px" OnClick="Order_Click" Text="Order" Width="147px" />
            </td>
            <td>
                <a href="http://www.latlong.net/c/?lat=Latitude&long=Longitude" target="_blank">(Latitude, Longitude)</a>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
