<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="OverallReport.aspx.vb" Inherits="OverallReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style18
        {
            width: 88px;
            color: #0066CC;
            height: 23px;
            font-weight: bold;
            font-size: large;
        }
        .style20
        {
            width: 139px;
            height: 23px;
            font-size: large;
            color: #0066CC;
        }
        .style21
        {
            height: 23px;
        width: 262px;
    }
        .style19
        {
            width: 139px;
        }
        .style22
    {
        width: 262px;
    }
        .style37
        {
            width: 387px;
        }
        .style39
        {
            font-size: small;
        }
        .style40
        {
            width: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td class="style18">
                <strong>&nbsp;Report </strong></td>
            <td class="style20">
                <strong>Section</strong></td>
            <td class="style21">
                        Please Select Period from</td>
        </tr>
        <tr>
            <td class="style40">
                <asp:CheckBox ID="Deposit" runat="server" Text="Deposit" AutoPostBack="True" 
                    style="font-size: small" />
            </td>
            <td class="style19">
                <asp:CheckBox ID="trfdexch" runat="server" Text="Transfer &amp; Exchange" 
                    AutoPostBack="True" style="font-size: small" />
            </td>
                    <td class="style37">
                                <asp:DropDownList ID="dropdnmonth0" runat="server" AutoPostBack="True" 
                                    Height="22px" Width="50px">
                                    <asp:ListItem> </asp:ListItem>
                                    <asp:ListItem Value="1">Jan</asp:ListItem>
                                    <asp:ListItem Value="2">Feb</asp:ListItem>
                                    <asp:ListItem Value="3">Mar</asp:ListItem>
                                    <asp:ListItem Value="4">Apr</asp:ListItem>
                                    <asp:ListItem Value="5">May</asp:ListItem>
                                    <asp:ListItem Value="6">Jun</asp:ListItem>
                                    <asp:ListItem Value="7">Jul</asp:ListItem>
                                    <asp:ListItem Value="8">Aug</asp:ListItem>
                                    <asp:ListItem Value="9">Sep</asp:ListItem>
                                    <asp:ListItem Value="10">Oct</asp:ListItem>
                                    <asp:ListItem Value="11">Nov</asp:ListItem>
                                    <asp:ListItem Value="12">Dec</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="Dropdnday0" runat="server" AutoPostBack="True" 
                                    Height="22px" Width="40px" AppendDataBoundItems="True">
                                    <asp:ListItem> </asp:ListItem>
                                    <asp:ListItem>01</asp:ListItem>
                                    <asp:ListItem>02</asp:ListItem>
                                    <asp:ListItem>03</asp:ListItem>
                                    <asp:ListItem>04</asp:ListItem>
                                    <asp:ListItem>05</asp:ListItem>
                                    <asp:ListItem>06</asp:ListItem>
                                    <asp:ListItem>07</asp:ListItem>
                                    <asp:ListItem>08</asp:ListItem>
                                    <asp:ListItem>09</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="dropdnyear0" runat="server" AutoPostBack="True" 
                                    Height="22px" Width="60px" style="margin-right: 14px">
                                    <asp:ListItem> </asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="fromdate" runat="server" CssClass="style39"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="style40">
                <asp:CheckBox ID="Withdrawal" runat="server" Text="Withdrawal" 
                    AutoPostBack="True" style="font-size: small" />
            </td>
            <td class="style19">
                &nbsp;</td>
                    <td class="style37">
                                <asp:DropDownList ID="dropdnmonth" runat="server" AutoPostBack="True" 
                                    Height="22px" Width="50px">
                                    <asp:ListItem> </asp:ListItem>
                                    <asp:ListItem Value="1">Jan</asp:ListItem>
                                    <asp:ListItem Value="2">Feb</asp:ListItem>
                                    <asp:ListItem Value="3">Mar</asp:ListItem>
                                    <asp:ListItem Value="4">Apr</asp:ListItem>
                                    <asp:ListItem Value="5">May</asp:ListItem>
                                    <asp:ListItem Value="6">Jun</asp:ListItem>
                                    <asp:ListItem Value="7">Jul</asp:ListItem>
                                    <asp:ListItem Value="8">Aug</asp:ListItem>
                                    <asp:ListItem Value="9">Sep</asp:ListItem>
                                    <asp:ListItem Value="10">Oct</asp:ListItem>
                                    <asp:ListItem Value="11">Nov</asp:ListItem>
                                    <asp:ListItem Value="12">Dec</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="Dropdnday" runat="server" AutoPostBack="True" 
                                    Height="22px" Width="40px" AppendDataBoundItems="True">
                                    <asp:ListItem> </asp:ListItem>
                                    <asp:ListItem>01</asp:ListItem>
                                    <asp:ListItem>02</asp:ListItem>
                                    <asp:ListItem>03</asp:ListItem>
                                    <asp:ListItem>04</asp:ListItem>
                                    <asp:ListItem>05</asp:ListItem>
                                    <asp:ListItem>06</asp:ListItem>
                                    <asp:ListItem>07</asp:ListItem>
                                    <asp:ListItem>08</asp:ListItem>
                                    <asp:ListItem>09</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="dropdnyear" runat="server" AutoPostBack="True" 
                                    Height="22px" Width="60px" style="margin-right: 14px">
                                    <asp:ListItem> </asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="todate" runat="server" CssClass="style39"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style19">
                <asp:Button ID="Display" runat="server" Text="Display" Width="125px" />
            </td>
            <td class="style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style22">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" PageSize="11" 
                    style="font-size: small; margin-left: 0px; margin-right: 3px;" 
                    Width="762px">
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
        </tr>
    </table>
</asp:Content>

