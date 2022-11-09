<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Voucher.aspx.vb" Inherits="Voucher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    
</script>
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
        .style3
        {
            width: 8px;
        }
        .style6
        {
            width: 268px;
        }
        .style7
        {
            width: 147px;
        }
        .style8
        {
            width: 119px;
        }
        .style9
        {
            width: 119px;
            font-size: small;
        }
        .style10
        {
            width: 147px;
            font-size: small;
        }
        .style11
        {
            width: 268px;
            font-size: small;
        }
        .style12
        {
            width: 104px;
            font-size: small;
        }
        .style13
        {
            width: 104px;
        }
        .style14
        {
            height: 66px;
        }
        .style16
        {
            width: 5px;
            height: 15px;
        }
        .style17
        {
            height: 15px;
            font-size: small;
        }
        .style18
        {
            width: 44px;
        }
        .style19
        {
            width: 42px;
        }
        .style20
        {
            width: 38px;
        }
        .style21
        {
            width: 40px;
        }
        .style22
        {
            width: 39px;
        }
        .style23
        {
            width: 36px;
        }
        .style26
        {
            width: 46px;
        }
        .style28
        {
            width: 33px;
        }
        .style29
        {
            width: 30px;
        }
        .style30
        {
            width: 121px;
        }
        .style31
        {
            width: 5px;
        }
        .style32
        {
            width: 7px;
        }
        .style33
        {
            width: 108px;
        }
        .style34
        {
            width: 108px;
            font-size: small;
        }
        .style35
        {
            width: 7px;
            font-size: small;
        }
        .style36
        {
            width: 171px;
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
        .style39
        {
            height: 23px;
        }
        .style41
        {
            height: 23px;
            width: 320px;
        }
        .style42
        {
            width: 320px;
        }
        .style44
        {
            width: 121px;
            height: 23px;
        }
        .style45
        {
            width: 81px;
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
        .style49
        {
            width: 171px;
            font-size: small;
        }
        .style50
        {
            font-size: medium;
        }
        .style51
        {
            width: 8px;
            height: 17px;
        }
        .style52
        {
            width: 104px;
            font-size: small;
            height: 17px;
        }
        .style53
        {
            width: 268px;
            font-size: small;
            height: 17px;
        }
        .style54
        {
            width: 147px;
            font-size: small;
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
    </style>
</head>
<body  style="font-size: small" >
<form id="form1" runat="server">
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
                            <td class="style12">
                                Account Name:-</td>
                            <td class="style11">
                                <asp:Label ID="acnamelbl" runat="server"></asp:Label>
                            </td>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style9">
                                Transaction ID:-</td>
                            <td>
                                <asp:Label ID="transidlbl" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style51">
                                </td>
                            <td class="style52">
                                Account No:-</td>
                            <td class="style53">
                                <asp:Label ID="acnolbl" runat="server"></asp:Label>
                            </td>
                            <td class="style54">
                                </td>
                            <td class="style55">
                                Transaction Date:-</td>
                            <td class="style56">
                                <asp:Label ID="transdatelbl" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style12">
                                Account Type:-</td>
                            <td class="style11">
                                Current Account</td>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style9">
                                Currency</td>
                            <td>
                                <asp:Label ID="currlbl" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style7">
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
                <td class="style14">
                    <table class="style1">
                        <tr>
                            <td class="style16">
                            </td>
                            <td class="style17">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                Transaction Denomination Details</td>
                        </tr>
                        <tr>
                            <td class="style31">
                                &nbsp;</td>
                            <td>
                                <table class="style1">
                                    <tr>
                                        <td class="style3">
                                            &nbsp;</td><Center>
                                        <td class="style18" style="border: thin dashed #000000;">
                                            5000</td>
                                        <td class="style19" style="border: thin dashed #000000;">
                                            1000</td>
                                        <td class="style20" style="border: thin dashed #000000;">
                                            500</td>
                                        <td class="style21" style="border: thin dashed #000000;">
                                            100</td>
                                        <td class="style22" style="border: thin dashed #000000;">
                                            50</td>
                                        <td class="style23" style="border: thin dashed #000000;">
                                            20</td>
                                        <td class="style21" style="border: thin dashed #000000;">
                                            10</td>
                                        <td class="style28" style="border: thin dashed #000000;">
                                            5</td>
                                        <td class="style22" style="border: thin dashed #000000;">
                                            2</td>
                                        <td class="style29" style="border: thin dashed #000000;">
                                            1</td>
                                        <td class="style26" style="border: thin dashed #000000;">
                                            Cents</td>
                                        <td class="style30" style="border: thin dashed #000000;">
                                            Overall Total</center></td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            &nbsp;</td>
                                        <td class="style18" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="ftlbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style19" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="ontlbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style20" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="fhlbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style21" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="ohlbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style22" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="flbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style23" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="twlbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style21" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="tlbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style28" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="fvlbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style22" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="twolbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style29" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="onlbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style26" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="centlbl" runat="server"></asp:Label>
                                        </td>
                                        <td class="style30" 
                                            style="border-color: #000000; border-width: thin; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed">
                                            <asp:Label ID="totalbl" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style34">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style32">
                                &nbsp;</td>
                            <td class="style33">
                                Particular:-</td>
                            <td>
                                <asp:Label ID="particularlbl" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style36">
                                &nbsp;</td>
                            <td class="style42">
                                &nbsp;</td>
                            <td class="style30">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style36">
                                &nbsp;</td>
                            <td class="style42">
                                &nbsp;</td>
                            <td class="style30">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
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
                        <tr>
                            <td class="style37">
                                &nbsp;</td>
                            <td class="style38">
                                &nbsp;</td>
                            <td class="style41">
                                &nbsp;</td>
                            <td class="style44">
                                &nbsp;</td>
                            <td class="style39">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
