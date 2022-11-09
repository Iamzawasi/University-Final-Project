<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AccountDetails2.aspx.vb" Inherits="AccountDetails2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style17
    {
        width: 100%;
    }
    .style18
    {
        width: 157px;
    }
    .style19
    {
        width: 148px;
    }
        .style20
        {
            width: 984px;
        }
        .style21
        {
            width: 100px;
        }
        .style22
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style20">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style20">
            <table class="style17">
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style19">
                        <asp:Label ID="achname" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="currlbl" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        Enter Account Number</td>
                    <td class="style19">
                        <asp:TextBox ID="acntxtb" runat="server" Width="137px" MaxLength="8"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" style="margin-left: 21px" 
                            Text="Display Details" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style19">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style20">
            <table class="style17">
                <tr>
                    <td class="style21">
                        <asp:DetailsView ID="DetailsView2" runat="server" CellPadding="4" 
                            CssClass="style22" ForeColor="#333333" GridLines="None" Height="50px" 
                            Width="125px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        </asp:DetailsView>
                    </td>
                    <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" 
                            CssClass="style22" ForeColor="#333333" GridLines="None" Height="50px" 
                            Width="125px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        </asp:DetailsView>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

