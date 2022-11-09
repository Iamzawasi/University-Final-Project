<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StatementPrint.aspx.vb" Inherits="StatementPrint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 102%;
        }
        .style2
        {
            width: 29px;
        }
        .style3
        {
            width: 780px;
        }
        .style5
        {
            width: 825px;
            height: 101px;
            margin-left: 0px;
        }
        .style6
        {
            width: 216px;
        }
        .style7
        {
            width: 216px;
            height: 23px;
        }
        .style8
        {
            height: 23px;
        }
        .style11
        {
            width: 88px;
            font-size: small;
        }
        .style12
        {
            height: 23px;
            width: 88px;
            font-size: small;
        }
        .style13
        {
            font-size: small;
        }
        .style16
        {
            width: 216px;
            font-size: small;
        }
        .style17
        {
            width: 112px;
            font-size: small;
        }
        .style18
        {
            height: 23px;
            width: 112px;
            font-size: small;
        }
        .style19
        {
            width: 171px;
        }
        .style20
        {
            width: 171px;
            height: 23px;
        }
        .style21
        {
            height: 21px;
            width: 112px;
            font-size: small;
        }
        .style22
        {
            width: 216px;
            height: 21px;
        }
        .style23
        {
            width: 171px;
            height: 21px;
        }
        .style24
        {
            height: 21px;
            width: 88px;
            font-size: small;
        }
        .style25
        {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <img alt="Logo" class="style5" src="minibanklogoforstatment.jpg" 
                    style="border-style: solid" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" style="border-style: dashed">
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
                <table class="style1">
                    <tr>
                        <td class="style17" 
                            style="border-top-style: dotted; border-right-style: dotted; border-left-style: dotted;">
                            Name
                        </td>
                        <td class="style6" 
                            style="border-top-style: dotted; border-right-style: dotted; border-left-style: dotted;">
                            <asp:Label ID="achname" runat="server" CssClass="style13"></asp:Label>
                        </td>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style11">
                            E-Mail</td>
                        <td>
                            <asp:Label ID="email" runat="server" CssClass="style13"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18" 
                            style="border-left-style: dotted; border-right-style: dotted">
                            Account #</td>
                        <td class="style7" 
                            style="border-left-style: dotted; border-right-style: dotted">
                            <asp:Label ID="ac" runat="server" CssClass="style13"></asp:Label>
                        </td>
                        <td class="style20">
                        </td>
                        <td class="style12">
                            Telephone #</td>
                        <td class="style8">
                            <asp:Label ID="tele" runat="server" CssClass="style13"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style21" 
                            style="border-right-style: dotted; border-left-style: dotted">
                            Currency</td>
                        <td class="style22" 
                            style="border-right-style: dotted; border-left-style: dotted">
                            <asp:Label ID="currency" runat="server" CssClass="style13"></asp:Label>
                        </td>
                        <td class="style23">
                        </td>
                        <td class="style24">
                            Mobile #</td>
                        <td class="style25">
                            <asp:Label ID="mobile" runat="server" CssClass="style13"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17" 
                            style="border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted">
                            Amount Available</td>
                        <td class="style16" 
                            style="border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted">
                            <asp:Label ID="amount" runat="server" CssClass="style13"></asp:Label>
                        </td>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style11">
                            Address</td>
                        <td>
                            <asp:Label ID="add" runat="server" CssClass="style13"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="txtlbl1" runat="server" style="font-size: small" 
                    Text="Statement period from "></asp:Label>
                <asp:Label ID="fromd" runat="server" CssClass="style13"></asp:Label>
                <span class="style13">&nbsp;
                <asp:Label ID="tolbl" runat="server" Text="to"></asp:Label>
&nbsp; </span>
                <asp:Label ID="todat" runat="server" CssClass="style13"></asp:Label>
                <span class="style13">&nbsp;. </span>
                <asp:Label ID="text" runat="server" style="font-size: small" 
                    Text="Print Date "></asp:Label>
&nbsp;<asp:Label ID="sysdate" runat="server" style="font-size: small"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:GridView ID="GridView1" runat="server" BorderColor="Black" 
                    BorderStyle="Ridge" CellPadding="4" ForeColor="#333333" GridLines="None" 
                    ViewStateMode="Enabled" Width="817px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
