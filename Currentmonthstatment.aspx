<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Currentmonthstatment.aspx.vb" Inherits="Currentmonthstatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style16
    {
        width: 100%;
    }
    .style17
    {
        width: 634px;
    }
    .style18
    {
        width: 146px;
    }
    .style19
    {
        width: 139px;
    }
    .style23
    {
        width: 146px;
        height: 13px;
    }
    .style24
    {
        width: 139px;
        height: 13px;
    }
    .style25
    {
        height: 13px;
    }
        .style26
        {
            width: 146px;
            height: 26px;
        }
        .style27
        {
            width: 139px;
            height: 26px;
        }
        .style28
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
    <tr>
        <td class="style17">
            <table class="style16">
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style19">
                        <asp:Label ID="achname" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="teleplbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        Enter Account Number</td>
                    <td class="style27">
                        <asp:TextBox ID="acntxtb" runat="server" MaxLength="8" AutoPostBack="True"></asp:TextBox>
                    </td>
                    <td class="style28">
                        <asp:Label ID="currlbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                        </td>
                    <td class="style24">
                        <asp:Button ID="Button1" runat="server" Text="Display Statment" Width="128px" 
                            Enabled="False" />
                    </td>
                    <td class="style25">
                        <asp:Button ID="Print" runat="server" Text="Print" 
                            OnClientClick = "SetTarget();" Width="56px" />
                        </td>
                </tr>
                <tr>
                    <td class="style18">
                        </td>
                    <td class="style19">
                        </td>
                    <td>
                        </td>
                </tr>
            </table>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
                ForeColor="#333333" GridLines="None" PageSize="11" style="font-size: small">
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
</table>
</asp:Content>

