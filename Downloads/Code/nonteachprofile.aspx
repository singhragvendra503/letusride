<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="nonteachprofile.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center">
<tr><td align="center" style="height: 26px">
<i>Non-Teaching&nbsp;</i></td></tr>
<tr><td align="right" style="height: 26px">
<i>UserID&nbsp;</i>
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
</td></tr>
<tr><td align="right">
<i>Firstname&nbsp;</i>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</td></tr>
<tr><td align="right" style="height: 26px">
<i>Lastname&nbsp;</i>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</td></tr>
<tr><td align="right">
<i>Department&nbsp;</i>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</td></tr>
<tr><td align="right">
<i>Date of Birth&nbsp;</i>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</td></tr>
<tr><td align="right">
<i>Date of Join&nbsp;</i>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
</td></tr>
<tr>
<td>
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Width="109px"/>
    <asp:Button ID="Button2" runat="server" Text="clear" Width="99px" OnClick="Button2_Click" /></td>
    </tr>
</table>
</asp:Content>

