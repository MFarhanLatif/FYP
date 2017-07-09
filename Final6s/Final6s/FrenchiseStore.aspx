<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="FrenchiseStore.aspx.cs" Inherits="Final6s.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 338px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style3">
            <asp:TextBox ID="FspName" Placeholder="Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FspName" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:TextBox ID="FspType" Placeholder="Type" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FspType" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:TextBox ID="FspQuantity" Placeholder="Quantity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FspQuantity" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:TextBox ID="FspCost" Placeholder="Cost" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FspCost" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:TextBox ID="FspPrice" Placeholder="Price"  runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FspPrice" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Addfsp" runat="server" OnClick="Addfsp_Click" Text="Add" Width="99px" ValidationGroup="add" />
            <asp:Button ID="Editfsp" runat="server" Text="Edit" Width="98px" ValidationGroup="add" />
            <asp:Button ID="Deletefsp" runat="server" Text="Delete" Width="91px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="PId" HeaderText="PId" InsertVisible="False" ReadOnly="True" SortExpression="PId" />
                    <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                    <asp:BoundField DataField="PType" HeaderText="PType" SortExpression="PType" />
                    <asp:BoundField DataField="PQuantity" HeaderText="PQuantity" SortExpression="PQuantity" />
                    <asp:BoundField DataField="PCost" HeaderText="PCost" SortExpression="PCost" />
                    <asp:BoundField DataField="PPrice" HeaderText="PPrice" SortExpression="PPrice" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:s6finalConnectionString %>" SelectCommand="SELECT * FROM [FrenchizeStore]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
