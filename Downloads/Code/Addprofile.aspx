<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addprofile.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center">
<tr><td align="center" style="height: 26px; width: 250px;">
<i>Teaching&nbsp;</i></td></tr>
<tr><td align="right" style="height: 26px; width: 250px;">
<i>UserID&nbsp;</i>
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
</td></tr>
<tr><td align="right" style="width: 250px">
<i>Firstname&nbsp;</i>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</td></tr>
<tr><td align="right" style="height: 26px; width: 250px;">
<i>Lastname&nbsp;</i>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</td></tr>
<tr><td align="right" style="width: 250px">
<i>Department&nbsp;</i>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</td></tr>
<tr><td align="right" style="width: 250px">
<i>Date of Birth&nbsp;</i>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</td></tr>
<tr><td align="right" style="width: 250px">
<i>Date of Join&nbsp;</i>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
</td></tr>
<tr>
<td style="width: 250px">
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
    <asp:Button ID="Button2" runat="server" Text="clear" Width="99px" OnClick="Button2_Click" /></td>
    </tr>
</table>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
        ErrorMessage="U must enter the ID" Style="left: 605px; position: relative; top: -194px"></asp:RequiredFieldValidator>
</asp:Content>

