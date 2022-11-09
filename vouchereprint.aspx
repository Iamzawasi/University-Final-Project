<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="vouchereprint.aspx.vb" Inherits="vouchereprint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style17
    {
        width: 100%;
    }
    .style18
    {
        width: 195px;
    }
    .style19
    {
        width: 89px;
    }
    .style20
    {
        width: 195px;
        height: 23px;
    }
    .style21
    {
        width: 89px;
        height: 23px;
    }
    .style22
    {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17">
    <tr>
        <td>
            Cash&nbsp; Transfer and Exchange Voucher Reprint</td>
    </tr>
    <tr>
        <td>
            <table class="style17">
                <tr>
                    <td class="style20">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="style21">
                    </td>
                    <td class="style22">
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        Enter Voucher ID Here</td>
                    <td class="style19">
                        <asp:TextBox ID="TextBox1" runat="server" Width="80px" Height="18px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="vdrplist" runat="server" Height="24px" Width="137px" 
                            AutoPostBack="True">
                            <asp:ListItem Value="11">Cash</asp:ListItem>
                            <asp:ListItem Value="12">Transfer/Exchange</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style19">
                        <asp:Button ID="pre" runat="server" Text="Preview" Width="84px" />
                    </td>
                    <td>
                        <asp:Button ID="Print" runat="server" Text="Print" Width="135px" OnClientClick = "SetTarget()"/>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" style="font-size: small">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

