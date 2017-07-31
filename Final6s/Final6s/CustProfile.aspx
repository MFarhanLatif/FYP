<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="CustProfile.aspx.cs" Inherits="Final6s.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="CustLogout" runat="server" OnClick="CustLogout_Click" Text="Log-out" />
    <asp:Button ID="Custorder" runat="server" OnClick="Custorder_Click" Text="Order" Width="79px" />
    <asp:Label ID="lblSessionValue" runat="server"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="insert-Image" Width="152px" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <table class="auto-style2">
        <tr>
            <td>&nbsp;
               
            </td>
           
                           
          
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1"   runat="server">
                   
         
                        
                    

 
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
