<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 639px">
        <tr>
            <td align="right" style="width: 100px">
                </td>
            <td style="width: 100px" align="right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    ForeColor="#804040" Text="username"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFC0"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                </td>
            <td style="width: 100px" align="right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    ForeColor="#804040" Text="password"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFFC0" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" BackColor="#FFC080" OnClick="Button1_Click"
                    Text="submit" /></td>
        </tr>
    </table>
</asp:Content>

