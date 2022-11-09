<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="welcome.aspx.vb" Inherits="welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style3
    {
        color: #0000FF;
        font-size: medium;
    }
    .style2
    {
        color: #0000FF;
    }
        .style16
        {
            width: 100%;
            height: 240px;
        }
        .style19
        {
            height: 21px;
        }
        .style20
        {
            width: 100%;
        }
        .style21
        {
            width: 172px;
        }
        .style23
        {
            width: 172px;
            height: 22px;
        }
        .style25
        {
            height: 22px;
        }
        .style26
        {
            width: 172px;
            height: 17px;
        }
        .style27
        {
            height: 17px;
        }
        .style28
        {
            width: 315px;
        }
        .style29
        {
            width: 315px;
            height: 17px;
        }
        .style30
        {
            width: 315px;
            height: 22px;
        }
        .style31
        {
            width: 7px;
        }
        .style32
        {
            width: 7px;
            height: 17px;
        }
        .style33
        {
            width: 7px;
            height: 22px;
        }
        .style34
        {
            color: #009933;
            font-weight: bold;
        }
        .style35
        {
            width: 172px;
            height: 25px;
        }
        .style36
        {
            width: 7px;
            height: 25px;
        }
        .style37
        {
            width: 315px;
            height: 25px;
        }
        .style38
        {
            height: 25px;
        }
        .style39
        {
            width: 154px;
            height: 25px;
            font-weight: bold;
            font-size: medium;
        }
        .style40
        {
            width: 154px;
            height: 17px;
            font-weight: bold;
            font-size: medium;
        }
        .style41
        {
            width: 154px;
        }
        .style42
        {
            width: 154px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="#CDE871" 
    BorderStyle="Dotted" ClientIDMode="Static" 
    style="margin-left: 18px; margin-right: 32px; margin-top: 0px">
    <p class="style3">
        <strong>Welcome to&nbsp; MiniBank</strong></p>
    <p class="style1">
        <strong>&nbsp;</strong><span 
        class="style4">This a computerize system in case of any problem please contact 
        the System Administrator Ahmad Zia Stanekzai at +93789866232 / +93774598727,&nbsp;&nbsp;&nbsp; 
        Please change your User&#39;s Password as you log in for the first time.&nbsp; The 
        responsibility of the user is upon you, each Employee is given separate user, 
        When you leave your computer for security reasons log Out your User,&nbsp; Please 
        monthly change your user&#39;s password.</span></p>
</asp:Panel>
<p class="style2">
    &nbsp;</p>
<p>
    &nbsp;</p>
    <table class="style16">
        <tr>
            <td class="style19">
            </td>
            <td class="style19">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                    Text="Check Account Balance" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <table class="style20">
                    <tr>
                        <td class="style35">
                            <asp:TextBox ID="acntxtb" runat="server" MaxLength="8" Visible="False" 
                                Width="138px"></asp:TextBox>
                        </td>
                        <td class="style36">
                        </td>
                        <td class="style37">
                            <asp:Label ID="ccurrencylbl" runat="server" Enabled="False" 
                                style="color: #009999; font-weight: 700"></asp:Label>
                        </td>
                        <td class="style39">
                            &nbsp;</td>
                        <td class="style38">
                            &nbsp;</td>
                        <td class="style38">
                        </td>
                    </tr>
                    <tr>
                        <td class="style26">
                            <asp:Label ID="namelbl" runat="server" Enabled="False" Text="NAME" 
                                Visible="False"></asp:Label>
                        </td>
                        <td class="style32">
                            &nbsp;</td>
                        <td class="style29">
                            <asp:Label ID="cnamelbl" runat="server" CssClass="style34" Enabled="False"></asp:Label>
                        </td>
                        <td class="style40">
                            &nbsp;</td>
                        <td class="style27">
                            &nbsp;</td>
                        <td class="style27">
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            <asp:Label ID="fnamelbl" runat="server" Enabled="False" Text="FATHER NAME" 
                                Visible="False"></asp:Label>
                        </td>
                        <td class="style31">
                            &nbsp;</td>
                        <td class="style28">
                            <asp:Label ID="cfnamelbl" runat="server" CssClass="style34" Enabled="False"></asp:Label>
                        </td>
                        <td class="style41">
                            <strong>Currency</strong></td>
                        <td>
                            <strong>USD</strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style23">
                            <asp:Label ID="acopenlbl" runat="server" Enabled="False" Text="A/C OPEN DATE" 
                                Visible="False"></asp:Label>
                        </td>
                        <td class="style33">
                            &nbsp;</td>
                        <td class="style30">
                            <asp:Label ID="cacopenlbl" runat="server" CssClass="style34" Enabled="False"></asp:Label>
                        </td>
                        <td class="style39">
                            Total Available</td>
                        <td class="style38">
                            <asp:Label ID="availlbl" runat="server" 
                                style="color: #00CC00; font-weight: 700; font-size: medium"></asp:Label>
                        </td>
                        <td class="style25">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style23">
                            <asp:Label ID="contactn0" runat="server" Enabled="False" Text="MOBILE NUMBER" 
                                Visible="False"></asp:Label>
                        </td>
                        <td class="style33">
                            &nbsp;</td>
                        <td class="style30">
                            <asp:Label ID="ccontnblb" runat="server" CssClass="style34" Enabled="False"></asp:Label>
                        </td>
                        <td class="style40">
                            Total Balances</td>
                        <td class="style27">
                            <asp:Label ID="ballbl" runat="server" style="font-weight: 700; color: #FF0000" 
                                Text="balalbl"></asp:Label>
                        </td>
                        <td class="style25">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style23">
                            <asp:Label ID="contactn" runat="server" Enabled="False" Text="TELEPHONE NUMBER" 
                                Visible="False"></asp:Label>
                        </td>
                        <td class="style33">
                            &nbsp;</td>
                        <td class="style30">
                            <asp:Label ID="cmcontnblb" runat="server" CssClass="style34" Enabled="False"></asp:Label>
                        </td>
                        <td class="style42">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style25">
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            <asp:Label ID="acballbl" runat="server" Enabled="False" Text="ACCOUNT BALANCE" 
                                Visible="False"></asp:Label>
                        </td>
                        <td class="style31">
                            &nbsp;</td>
                        <td class="style28">
                            <asp:Label ID="cacbala" runat="server" Enabled="False" 
                                style="font-weight: 700; color: #0000FF"></asp:Label>
                        </td>
                        <td class="style41">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="style31">
                            &nbsp;</td>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style41">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="style31">
                            &nbsp;</td>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style41">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="style31">
                            &nbsp;</td>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style41">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

