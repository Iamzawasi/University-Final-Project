<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SpecificMonthStatment.aspx.vb" Inherits="SpecificMonthStatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style17
    {
        width: 634px;
    }
    .style16
    {
        width: 110%;
    }
    .style19
    {
        width: 139px;
    }
    .style24
    {
        width: 139px;
        height: 13px;
    }
    .style25
    {
        height: 13px;
            width: 1px;
        }
        .style30
        {
            width: 325px;
        }
        .style31
        {
            height: 13px;
            width: 325px;
        }
        .style32
        {
            width: 139px;
            font-weight: bold;
            font-size: medium;
            height: 15px;
        }
        .style33
        {
            width: 325px;
            font-weight: bold;
            font-size: medium;
            height: 15px;
        }
        .style34
        {
            width: 387px;
            height: 15px;
        }
        .style35
        {
            height: 15px;
            width: 1px;
        }
        .style36
        {
            width: 1px;
        }
        .style37
        {
            width: 387px;
        }
        .style38
        {
            height: 13px;
            width: 387px;
        }
        .style39
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
    <tr>
        <td class="style17">
            <table class="style16">
                <tr>
                    <td class="style33">
                        Specific Period Statment</td>
                    <td class="style32">
                        &nbsp;</td>
                    <td class="style34">
                        Please Select Period from</td>
                    <td class="style35">
                    </td>
                </tr>
                <tr>
                    <td class="style30">
                        <asp:Label ID="achname" runat="server"></asp:Label>
                    </td>
                    <td class="style19">
                        <asp:Label ID="currlbl" runat="server"></asp:Label>
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
                    <td class="style36">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style30">
                        Enter Account Number</td>
                    <td class="style19">
                        <asp:TextBox ID="acntxtb" runat="server" MaxLength="8" Width="115px"></asp:TextBox>
                    </td>
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
                    <td class="style36">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style31">
                        Contact Number</td>
                    <td class="style24">
                        <asp:Label ID="teleplbl" runat="server"></asp:Label>
                    </td>
                    <td class="style38">
                        <asp:Button ID="Button1" runat="server" Text="Display Statment" Width="153px" />
                        <asp:Button ID="Button2" runat="server" Text="Print Statment" Width="153px" OnClientClick = "SetTarget();" />
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                </tr>
                </table>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
                ForeColor="#333333" GridLines="None" PageSize="9" style="font-size: small">
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

