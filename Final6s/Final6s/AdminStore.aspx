<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="AdminStore.aspx.cs" Inherits="Final6s.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
        width: 355px;
    }
        .auto-style4 {
            width: 355px;
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style2">
        <tr>
            <td class="auto-style4">
                <asp:TextBox ID="AspName" Placeholder="Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AspName" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="AspType" placeholder="Type" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AspType" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="AspQuantity" placeholder="Quantity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AspQuantity" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="AspCost" placeholder="Cost" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AspCost" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="AspPrice" placeholder="Price" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AspPrice" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="AddAsp" runat="server"  Text="Add" Width="99px" OnClick="AddAsp_Click" ValidationGroup="add"  />
                <asp:Button ID="EditAsp" runat="server" Text="Edit" Width="98px" ValidationGroup="add" />
                <asp:Button ID="DeletAvsp" runat="server" Text="Delete" Width="91px" ValidationGroup="delete" OnClick="DeletAvsp_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
               
                <asp:TextBox ID="DPId" runat="server" placeholder="Enter PId to Delete Product" ValidationGroup="delete" Width="340px"></asp:TextBox>
               
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
     <table class="auto-style2">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:s6finalConnectionString %>" SelectCommand="SELECT * FROM [AdmenStore]"></asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
</asp:Content>
