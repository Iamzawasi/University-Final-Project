<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Tvoucher.aspx.vb" Inherits="Tvoucher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 30px;
        }
        .style50
        {
            font-size: medium;
        }
        .style3
        {
            width: 8px;
        }
        .style9
        {
            width: 119px;
            font-size: small;
        }
        .style51
        {
            width: 8px;
            height: 17px;
        }
        .style55
        {
            width: 119px;
            font-size: small;
            height: 17px;
        }
        .style56
        {
            height: 17px;
        }
        .style8
        {
            width: 119px;
        }
        .style14
        {
            height: 66px;
        }
        .style31
        {
            width: 5px;
        }
        .style42
        {
            width: 320px;
        }
        .style49
        {
            width: 171px;
            font-size: small;
        }
        .style46
        {
            width: 121px;
            font-size: small;
        }
        .style47
        {
            width: 81px;
            font-size: small;
        }
        .style45
        {
            width: 81px;
        }
        .style37
        {
            width: 5px;
            height: 23px;
        }
        .style38
        {
            width: 171px;
            height: 23px;
        }
        .style41
        {
            height: 23px;
            width: 320px;
        }
        .style44
        {
            width: 121px;
            height: 23px;
        }
        .style39
        {
            height: 23px;
        }
        .style60
        {
            width: 404px;
            font-size: small;
        }
        .style61
        {
            width: 404px;
            font-size: small;
            height: 17px;
        }
        .style62
        {
            width: 404px;
        }
        .style63
        {
            width: 400px;
            font-size: small;
        }
        .style64
        {
            width: 400px;
            font-size: small;
            height: 17px;
        }
        .style65
        {
            width: 400px;
        }
        .style66
        {
            width: 88px;
            font-size: small;
        }
        .style67
        {
            width: 88px;
            font-size: small;
            height: 17px;
        }
        .style68
        {
            width: 88px;
        }
        .style69
        {
            width: 89px;
            font-size: small;
        }
        .style70
        {
            width: 89px;
            font-size: small;
            height: 17px;
        }
        .style71
        {
            width: 89px;
        }
    </style>
</head>
<body style="font-size: small">
<form id="form2" runat="server">
    <div>
    
        <table class="style1" style="border: thin dashed #000000">
            <tr>
                <td class="style2">
                    <Center style="border-style: dashed; border-width: thin" class="style50"> Mini-Bank</Center></td>
            </tr>
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style66">
                                Account Name:-</td>
                            <td class="style60">
                                <asp:Label ID="acnamelbl" runat="server"></asp:Label>
                            </td>
                            <td class="style9">
                                BatchID:-</td>
                            <td>
                                <asp:Label ID="transidlbl" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style51">
                                </td>
                            <td class="style67">
                                Account No:-</td>
                            <td class="style61">
                                <asp:Label ID="acnolbl" runat="server"></asp:Label>
                            </td>
                            <td class="style55">
                                Date:-</td>
                            <td class="style56">
                                <asp:Label ID="transdatelbl" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style66">
                                Account Type:-</td>
                            <td class="style60">
                                Current Account</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style68">
                                Currency</td>
                            <td class="style62">
                                <asp:Label ID="currlbl" runat="server"></asp:Label>
                            </td>
                            <td class="style8">
                                Debit Amount</td>
                            <td>
                                <asp:Label ID="debam" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style68">
                                Particular:-</td>
                            <td class="style62">
                                <asp:Label ID="particularlbl" runat="server"></asp:Label>
                            </td>
                            <td class="style8">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style68">
                                &nbsp;</td>
                            <td class="style62">
                                &nbsp;</td>
                            <td class="style8">
                                Exchange Rate</td>
                            <td>
                                <asp:Label ID="exclbl" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <table class="style1">
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style69">
                                Account Name:-</td>
                            <td class="style63">
                                <asp:Label ID="acnamelbl0" runat="server"></asp:Label>
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style51">
                                </td>
                            <td class="style70">
                                Account No:-</td>
                            <td class="style64">
                                <asp:Label ID="acnolbl0" runat="server"></asp:Label>
                            </td>
                            <td class="style55">
                                </td>
                            <td class="style56">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style69">
                                Account Type:-</td>
                            <td class="style63">
                                Current Account</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style71">
                                Currency</td>
                            <td class="style65">
                                <asp:Label ID="currlbl0" runat="server"></asp:Label>
                            </td>
                            <td class="style8">
                                Credit Amount</td>
                            <td>
                                <asp:Label ID="cream" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style71">
                                Particular:-</td>
                            <td class="style65">
                                <asp:Label ID="particularlbl0" runat="server"></asp:Label>
                            </td>
                            <td class="style8">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style71">
                                &nbsp;</td>
                            <td class="style65">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style49">
                                Customer Signature</td>
                            <td class="style42">
                                &nbsp;</td>
                            <td class="style46">
                                Official Signature</td>
                            <td>
                                <table class="style1">
                                    <tr>
                                        <td class="style47">
                                            Opreator ID</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style45">
                                            <asp:Label ID="opridlbl" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style37">
                            </td>
                            <td class="style38">
                            </td>
                            <td class="style41">
                            </td>
                            <td class="style44">
                            </td>
                            <td class="style39">
                            </td>
                        </tr>
                        </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
