<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Searchprofile.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <tr>
    <td align="center"><i><b>ID:</b></i></td>
       <td>
           <asp:TextBox ID="txtFcode" runat="server" Width="150px"></asp:TextBox>
         </td>
        </tr>
        <tr>
        <td align="center" colspan="2" style="height: 24px">
            <asp:Button ID="Button1" runat="server" Text="SEARCH" Width="109px" BackColor="Blue" BorderColor="Silver" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva" ForeColor="Silver" OnClick="Button1_Click" /></td></tr>
        </table>
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        Style="left: 313px; position: relative; top: 12px" Width="413px">
    </asp:GridView>
</asp:Content>

