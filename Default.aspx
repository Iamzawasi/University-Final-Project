<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title></title>
    <link href="Entryform.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 48px;
        }
        .style4
        {
            height: 29px;
        }
        .style5
        {
            height: 48px;
            width: 237px;
        }
        .style7
        {
            height: 29px;
            width: 237px;
        }
        .style8
        {
            width: 237px;
        }
        .style9
        {
            height: 48px;
            width: 116px;
        }
        .style11
        {
            height: 29px;
            width: 116px;
            color: #99FF33;
            font-size: x-large;
        }
        .style16
        {
            height: 41px;
            width: 237px;
        }
        .style17
        {
            height: 41px;
            width: 116px;
        }
        .style18
        {
            height: 41px;
        }
        .style20
        {
            height: 29px;
            color: #99FF33;
            font-size: x-large;
            width: 325px;
        }
        .style22
        {
            width: 116px;
            color: #99FF33;
            font-size: larger;
            height: 32px;
        }
        .style23
        {
            height: 32px;
            width: 237px;
        }
        .style24
        {
            height: 32px;
        }
        .style25
        {
            height: 35px;
            width: 237px;
        }
        .style26
        {
            width: 116px;
            color: #99FF33;
            font-size: larger;
            height: 35px;
        }
        .style27
        {
            height: 35px;
        }
        .style28
        {
            width: 116px;
            color: #99FF33;
            font-size: large;
        }
        .style33
        {
            height: 48px;
            width: 325px;
        }
        .style34
        {
            height: 41px;
            width: 325px;
        }
        .style35
        {
            height: 32px;
            width: 325px;
        }
        .style36
        {
            height: 35px;
            width: 325px;
        }
        .style37
        {
            width: 325px;
        }
        .style39
        {
            height: 178px;
            width: 237px;
        }
        .style40
        {
            height: 178px;
            width: 116px;
        }
        .style41
        {
            height: 178px;
            width: 325px;
        }
        .style42
        {
            height: 178px;
        }
        .style43
        {
            height: 38px;
            width: 237px;
        }
        .style44
        {
            height: 38px;
            width: 116px;
        }
        .style45
        {
            height: 38px;
            width: 325px;
        }
        .style46
        {
            height: 38px;
        }
        .style47
        {
            height: 48px;
            width: 206px;
        }
        .style48
        {
            height: 41px;
            width: 206px;
        }
        .style49
        {
            height: 29px;
            width: 206px;
        }
        .style50
        {
            height: 32px;
            width: 206px;
        }
        .style51
        {
            height: 35px;
            width: 206px;
        }
        .style52
        {
            width: 206px;
        }
        .style53
        {
            height: 38px;
            width: 206px;
        }
        .style54
        {
            height: 178px;
            width: 206px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="Pagewrapper">
        <div id="Menu"> </div>
        <div id="MainContent">
            <table class="style1">
                <tr>
                    <td class="style5">
                    </td>
                    <td class="style9">
                    </td>
                    <td class="style33">
                    </td>
                    <td class="style47">
                        &nbsp;</td>
                    <td class="style2">
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        &nbsp;</td>
                    <td class="style17">
                        &nbsp;</td>
                    <td class="style34">
                    </td>
                    <td class="style48">
                        &nbsp;</td>
                    <td class="style18">
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                    </td>
                    <td class="style11">
                        <strong>Enter ID</strong></td>
                    <td class="style20">
                        <strong>&nbsp; &amp; Password</strong></td>
                    <td class="style49">
                        &nbsp;</td>
                    <td class="style4">
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                    </td>
                    <td class="style22">
                    </td>
                    <td class="style35">
                        <asp:Label ID="incrolbl" runat="server" 
                            style="color: #FF0000; font-weight: 700"></asp:Label>
                    </td>
                    <td class="style50">
                        &nbsp;</td>
                    <td class="style24">
                    </td>
                </tr>
                <tr>
                    <td class="style25">
                    </td>
                    <td class="style26">
                        <strong>User ID</strong></td>
                    <td class="style36">
                        <asp:TextBox ID="Usrtxtbx" runat="server" BorderStyle="Solid" Width="158px"></asp:TextBox>
                    </td>
                    <td class="style51">
                        &nbsp;</td>
                    <td class="style27">
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style28">
                        <strong>Password</strong></td>
                    <td class="style37">
                        <asp:TextBox ID="Passtxtbx" runat="server" BorderStyle="Solid" 
                            TextMode="Password" Width="158px"></asp:TextBox>
                    </td>
                    <td class="style52">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style43">
                    </td>
                    <td class="style44">
                    </td>
                    <td class="style45">
                        <asp:Button ID="Loginbtn" runat="server" BackColor="Silver" 
                            BorderColor="#339966" BorderStyle="Solid" BorderWidth="2px" Height="28px" 
                            Text="Log in" Width="87px" />
                    </td>
                    <td class="style53">
                        &nbsp;</td>
                    <td class="style46">
                    </td>
                </tr>
                <tr>
                    <td class="style39">
                    </td>
                    <td class="style40">
                    </td>
                    <td class="style41">
                    </td>
                    <td class="style54">
                        &nbsp;</td>
                    <td class="style42">
                        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                    </td>
                </tr>
            </table>
        </div>
        <div id="footer"></div>
    </div>
    </form>
 
</body>
</html>
