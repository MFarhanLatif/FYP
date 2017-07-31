<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="VechalStore.aspx.cs" Inherits="Final6s.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
        width: 341px;
    }
    .auto-style4 {
        width: 341px;
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
            <td class="auto-style3">
                <asp:TextBox ID="VspName" Placeholder="Name"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="VspName" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:TextBox ID="VspType"  Placeholder="Type" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="VspType" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="VspQuantity" Placeholder="Quantity"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="VspQuantity" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="VspCost"  Placeholder="Cost" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="VspCost" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:TextBox ID="VspPrice"  Placeholder="Price" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="VspPrice" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Addvsp" runat="server"  Text="Add" Width="99px" OnClick="Addvsp_Click" ValidationGroup="add" />
                <asp:Button ID="Editvsp" runat="server" Text="Edit" Width="98px"  />
                <asp:Button ID="Deletevsp" runat="server"  Text="Delete"  Width="99px" OnClick="Deletevsp_Click" ValidationGroup="Delete" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="DPId" placeholder="Enter Product Id To Delete" runat="server" Width="287px" ValidationGroup="delete"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="?" ForeColor="Red" SetFocusOnError="True" ValidationGroup="delete" ControlToValidate="DPId"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style2">
         <tr>
             <td>
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PId" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                     <Columns>
                         <asp:BoundField DataField="PId" HeaderText="PId" InsertVisible="False" ReadOnly="True" SortExpression="PId" />
                         <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                         <asp:BoundField DataField="PType" HeaderText="PType" SortExpression="PType" />
                         <asp:BoundField DataField="PQuantity" HeaderText="PQuantity" SortExpression="PQuantity" />
                         <asp:BoundField DataField="PCost" HeaderText="PCost" SortExpression="PCost" />
                         <asp:BoundField DataField="PPrice" HeaderText="PPrice" SortExpression="PPrice" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:s6finalConnectionString2 %>" SelectCommand="SELECT * FROM [VechalStore]"></asp:SqlDataSource>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
         </tr>
     </table>
</asp:Content>
