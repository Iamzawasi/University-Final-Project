<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Custcorrecton.aspx.vb" Inherits="Custcorrecton" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style16
        {
            width: 100%;
            height: 36px;
        }
        .style19
        {
            width: 399px;
        }
        .style22
        {
            width: 270px;
        }
        .style20
        {
            height: 13px;
            width: 399px;
        }
        .style23
        {
            height: 13px;
            width: 270px;
            color: #009933;
        }
        .style18
        {
            height: 13px;
        }
        .style21
        {
            height: 76px;
            width: 399px;
        }
        .style24
        {
            height: 76px;
            width: 270px;
        }
        .style25
        {
            width: 88px;
        }
        .style30
        {
            height: 27px;
            width: 89px;
        }
        .style26
        {
            height: 27px;
        }
        .style31
        {
            height: 43px;
            width: 89px;
        }
        .style27
        {
            height: 43px;
        }
        .style17
        {
            height: 76px;
        }
        .style32
    {
        height: 27px;
        width: 118px;
    }
    .style33
    {
        height: 43px;
        width: 118px;
    }
        .style34
        {
            width: 100%;
        }
        .style35
        {
            width: 19px;
        }
        .style36
        {
            width: 123px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td class="style19">
                Note: For Security reasons picture cannot be updated. </td>
            <td class="style22">
                <asp:Label ID="Remark" runat="server" style="color: #FF3300"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                <asp:CheckBox ID="searchchckbox" runat="server" AutoPostBack="True" 
                    Text="Search Customer" />
            </td>
            <td class="style23">
                <strong>Enter Customer ID For Modification</strong></td>
            <td class="style18">
            </td>
        </tr>
        <tr>
            <td class="style21">
                <table class="style34">
                    <tr>
                        <td class="style35">
                            &nbsp;</td>
                        <td class="style36">
                            <asp:Label ID="namelbl" runat="server" Text="Name" Visible="False"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="nametxtb" runat="server" Visible="False" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style35">
                            &nbsp;</td>
                        <td class="style36">
                            <asp:Label ID="fnamelbl" runat="server" Text="Father Name" Visible="False"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="fnametxtb" runat="server" Visible="False" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style35">
                            &nbsp;</td>
                        <td class="style36">
                            <asp:Label ID="pastazklbl" runat="server" Text="Passport/Tazkira" 
                                Visible="False"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="pastazktxtb" runat="server" Visible="False" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style35">
                            &nbsp;</td>
                        <td class="style36">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style35">
                            &nbsp;</td>
                        <td class="style36">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="searchbtn" runat="server" Text="Search" Visible="False" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style24">
                <table class="style16">
                    <tr>
                        <td class="style25">
                            Customer_ID</td>
                        <td>
                            <asp:TextBox ID="custidtxtb" runat="server" Width="104px" 
                                onkeypress="return isonlyNumber(event);" MaxLength="6"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table class="style16">
                    <tr>
                        <td class="style32">
                            <asp:Button ID="curbtn0" runat="server" Text="Cancel" Width="77px" 
                                PostBackUrl="~/welcome.aspx" />

                        </td>
                        <td class="style30">
                            <asp:Button ID="curbtn" runat="server" Text="Submit" Width="77px" />

                        </td>
                        <td class="style26">
                        </td>
                    </tr>
                    <tr>
                        <td class="style33">
                        </td>
                        <td class="style31">
                            &nbsp;</td>
                        <td class="style27">
                        </td>
                    </tr>
                </table>
                <br />
            </td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style19">
                <asp:GridView ID="GridView1" runat="server" CellPadding="2" CellSpacing="1" 
                    ForeColor="#000099" GridLines="None" Height="111px" PageSize="6" Width="393px">
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
            <td class="style22">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

