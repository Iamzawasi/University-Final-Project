<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Withdrawal.aspx.vb" Inherits="Withdrawal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">

        .style1
        {
            width: 99%;
            height: 535px;
        }
        .style49
        {
            width: 885px;
        height: 39px;
    }
        .style2
        {
            width: 562px;
            height: 178px;
        }
        .style57
    {
        width: 2422px;
        font-size: small;
        color: #0000FF;
        height: 22px;
    }
        .style11
        {
            width: 1873px;
            font-size: x-large;
        height: 10px;
    }
        .style70
    {
        width: 1129px;
        height: 33px;
    }
    .style61
    {
        width: 2422px;
        height: 33px;
    }
        .style52
        {
            height: 1px;
        }
        .style18
        {
            width: 98%;
            height: 315px;
        }
        .style20
        {
            width: 605px;
            font-size: medium;
        height: 17px;
    }
        .style33
        {
            width: 96px;
            font-size: medium;
        height: 17px;
    }
        .style23
        {
            width: 40px;
        }
        .style24
        {
            width: 62px;
            font-size: medium;
        height: 17px;
    }
        .style29
        {
            width: 9px;
        height: 17px;
    }
        .style40
        {
            width: 29px;
            font-size: medium;
        height: 17px;
    }
        .style51
        {
            font-size: medium;
        height: 17px;
    }
        .style42
        {
            width: 605px;
        }
        .style25
        {
            width: 62px;
            font-size: large;
        }
        .style30
        {
            width: 9px;
            font-size: large;
        }
        .style41
        {
            width: 29px;
        }
        .style43
        {
            width: 96px;
        }
        .style71
    {
        width: 531px;
        font-size: small;
        height: 12px;
    }
    .style73
    {
        font-size: medium;
        width: 187px;
        height: 12px;
            font-weight: bold;
        }
    .style74
    {
        font-size: medium;
        width: 105px;
        height: 12px;
    }
    .style77
    {
        width: 531px;
        height: 20px;
    }
    .style78
    {
        width: 96px;
        height: 20px;
    }
    .style79
    {
        width: 40px;
        height: 20px;
    }
    .style80
    {
        width: 62px;
        font-size: large;
        height: 20px;
    }
    .style82
    {
        width: 29px;
        height: 20px;
    }
    .style83
    {
        height: 20px;
    }
    .style84
    {
        width: 187px;
        height: 20px;
    }
    .style85
    {
        width: 105px;
        height: 20px;
    }
    .style98
    {
        width: 605px;
        height: 12px;
    }
    .style99
    {
        width: 96px;
        height: 12px;
    }
    .style100
    {
        width: 40px;
        height: 12px;
    }
    .style101
    {
        width: 62px;
        font-size: large;
        height: 12px;
    }
    .style102
    {
        width: 9px;
        font-size: large;
        height: 12px;
    }
    .style103
    {
        width: 29px;
        height: 12px;
    }
    .style104
    {
        height: 12px;
    }
    .style106
    {
        width: 2422px;
        height: 13px;
    }
    .style109
    {
        width: 1129px;
        height: 13px;
    }
    .style110
    {
        width: 1129px;
        height: 16px;
    }
    .style123
    {
        width: 531px;
        height: 1px;
    }
    .style124
    {
        width: 96px;
        font-size: large;
        height: 1px;
    }
    .style125
    {
        width: 40px;
        font-size: large;
        height: 1px;
    }
    .style126
    {
        width: 62px;
        font-size: large;
        height: 1px;
    }
    .style128
    {
        width: 29px;
        height: 1px;
    }
    .style130
    {
            width: 187px;
            height: 1px;
        }
    .style131
    {
        width: 105px;
        height: 1px;
    }
    .style132
    {
        width: 96px;
        font-size: medium;
        height: 12px;
            font-weight: bold;
        }
    .style134
    {
        font-size: medium;
            font-weight: bold;
        }
    .style136
    {
        width: 29px;
        font-size: medium;
        height: 12px;
            font-weight: bold;
        }
    .style138
    {
        width: 96px;
        height: 1px;
    }
    .style139
    {
        width: 40px;
        height: 1px;
    }
    .style140
    {
        width: 531px;
        height: 12px;
    }
    .style147
    {
        width: 187px;
        height: 12px;
    }
    .style148
    {
        width: 105px;
        height: 12px;
    }
    .style149
    {
        width: 531px;
        height: 9px;
    }
    .style150
    {
        width: 96px;
        height: 9px;
    }
    .style151
    {
        width: 40px;
        height: 9px;
    }
    .style152
    {
        width: 62px;
        font-size: large;
        height: 9px;
    }
    .style154
    {
        width: 29px;
        height: 9px;
    }
    .style155
    {
        height: 9px;
    }
    .style156
    {
        width: 187px;
        height: 9px;
    }
    .style157
    {
        width: 105px;
        height: 9px;
    }
    .style158
    {
        width: 531px;
        height: 5px;
    }
    .style159
    {
        width: 96px;
        height: 5px;
    }
    .style160
    {
        width: 40px;
        height: 5px;
    }
    .style161
    {
        width: 62px;
        font-size: large;
        height: 5px;
    }
    .style163
    {
        width: 29px;
        height: 5px;
    }
    .style164
    {
        height: 5px;
    }
    .style165
    {
        width: 187px;
        height: 5px;
    }
    .style166
    {
        width: 105px;
        height: 5px;
    }
    .style167
    {
        width: 531px;
        height: 7px;
    }
    .style168
    {
        width: 96px;
        height: 7px;
    }
    .style169
    {
        width: 40px;
        height: 7px;
    }
    .style170
    {
        width: 62px;
        font-size: large;
        height: 7px;
    }
    .style171
    {
        width: 9px;
        font-size: large;
        height: 7px;
    }
    .style172
    {
        width: 29px;
        height: 7px;
    }
    .style173
    {
        height: 7px;
    }
    .style174
    {
        width: 187px;
        height: 7px;
    }
    .style175
    {
        width: 105px;
        height: 7px;
    }
    .style176
    {
        width: 531px;
        height: 21px;
    }
    .style177
    {
        width: 96px;
        height: 21px;
    }
    .style178
    {
        width: 40px;
        height: 21px;
    }
    .style179
    {
        width: 62px;
        font-size: large;
        height: 21px;
    }
    .style181
    {
        width: 29px;
        height: 21px;
    }
    .style182
    {
        height: 21px;
    }
    .style183
    {
        width: 187px;
        height: 21px;
    }
    .style184
    {
        width: 105px;
        height: 21px;
    }
    .style195
    {
        width: 40px;
        height: 17px;
    }
    .style196
    {
        height: 17px;
    }
    .style198
    {
        width: 62px;
        font-size: large;
        height: 13px;
    }
    .style200
    {
        width: 29px;
        height: 13px;
    }
    .style201
    {
        height: 13px;
    }
    .style209
    {
        width: 605px;
        height: 3px;
    }
    .style210
    {
        width: 96px;
        height: 3px;
    }
    .style211
    {
        width: 40px;
        height: 3px;
    }
    .style212
    {
        width: 62px;
        font-size: large;
        height: 3px;
    }
    .style213
    {
        width: 9px;
        font-size: large;
        height: 3px;
    }
    .style214
    {
        width: 29px;
        height: 3px;
    }
    .style215
    {
        height: 3px;
    }
    .style216
    {
        width: 96px;
        height: 15px;
    }
    .style217
    {
        width: 40px;
        height: 15px;
    }
    .style218
    {
        width: 605px;
        height: 15px;
    }
    .style219
    {
        width: 62px;
        font-size: large;
        height: 15px;
    }
    .style220
    {
        width: 9px;
        font-size: large;
        height: 15px;
    }
    .style221
    {
        width: 29px;
        height: 15px;
    }
    .style222
    {
        height: 15px;
    }
    .style223
    {
        width: 605px;
        height: 26px;
    }
    .style224
    {
        width: 96px;
        height: 26px;
    }
    .style225
    {
        width: 40px;
        height: 26px;
    }
    .style226
    {
        width: 62px;
        font-size: large;
        height: 26px;
    }
    .style227
    {
        width: 9px;
        font-size: large;
        height: 26px;
    }
    .style228
    {
        width: 29px;
        height: 26px;
    }
    .style229
    {
        height: 26px;
    }
    .style230
    {
        width: 605px;
        height: 11px;
    }
    .style231
    {
        width: 96px;
        height: 11px;
    }
    .style232
    {
        width: 40px;
        height: 11px;
    }
    .style233
    {
        width: 62px;
        font-size: large;
        height: 11px;
    }
    .style234
    {
        width: 9px;
        font-size: large;
        height: 11px;
    }
    .style235
    {
        width: 29px;
        height: 11px;
    }
    .style236
    {
        height: 11px;
    }
    .style240
    {
        width: 605px;
        height: 7px;
    }
    .style241
    {
        width: 605px;
        height: 4px;
    }
    .style242
    {
        width: 96px;
        height: 4px;
    }
    .style243
    {
        width: 40px;
        height: 4px;
    }
    .style244
    {
        width: 62px;
        font-size: large;
        height: 4px;
    }
    .style245
    {
        width: 9px;
        font-size: large;
        height: 4px;
    }
    .style246
    {
        width: 29px;
        height: 4px;
    }
    .style247
    {
        height: 4px;
    }
    .style248
    {
        width: 531px;
        height: 4px;
    }
    .style255
    {
        width: 187px;
        height: 4px;
    }
    .style256
    {
        width: 105px;
        height: 4px;
    }
    .style257
    {
        width: 531px;
        height: 13px;
    }
    .style264
    {
        width: 187px;
        height: 13px;
    }
    .style265
    {
        width: 105px;
        height: 13px;
    }
    .style266
    {
        width: 96px;
        height: 13px;
    }
    .style267
    {
        width: 40px;
        height: 13px;
    }
    .style268
    {
        width: 531px;
    }
    .style269
    {
        width: 187px;
    }
    .style270
    {
        width: 105px;
    }
    .style271
    {
        width: 885px;
        height: 62px;
    }
    .style272
    {
        height: 62px;
        width: 26px;
    }
    .style275
    {
        width: 26px;
        height: 39px;
    }
    .style278
    {
        width: 2422px;
        height: 5px;
    }
    .style281
    {
        width: 1129px;
        height: 5px;
    }
    .style282
    {
        width: 2422px;
        }
    .style285
    {
        width: 1129px;
        }
    .style286
    {
        color: #FF0000;
    }
        .style287
        {
            width: 1551px;
            font-size: small;
            height: 22px;
        }
        .style298
        {
            width: 101px;
            height: 12px;
        }
        .style299
        {
            width: 101px;
            height: 7px;
        }
        .style300
        {
            width: 101px;
            height: 4px;
        }
        .style301
        {
            width: 101px;
        }
        .style302
        {
            font-size: small;
        }
    .style304
    {
        width: 26px;
        }
    .style309
    {
        width: 885px;
        }
    .style310
    {
        width: 1551px;
        height: 13px;
    }
    .style312
    {
        width: 1551px;
        height: 5px;
    }
    .style313
    {
        width: 1551px;
        color: #0000FF;
    }
    .style314
    {
        width: 1551px;
        height: 33px;
    }
    .style315
    {
        width: 2422px;
        height: 16px;
    }
    .style317
    {
        width: 1551px;
        height: 16px;
    }
    .style318
    {
        width: 1569%;
        height: 189px;
    }
    .style320
    {
        height: 11px;
        width: 200px;
    }
    .style321
    {
        width: 200px;
    }
    .style322
    {
        width: 425px;
        font-size: small;
        color: #0000FF;
        height: 22px;
    }
    .style323
    {
        width: 425px;
        height: 13px;
    }
    .style324
    {
        width: 425px;
        height: 16px;
    }
    .style325
    {
        width: 425px;
        height: 5px;
    }
    .style326
    {
        width: 425px;
    }
    .style327
    {
        width: 425px;
        height: 33px;
    }
    .style328
    {
        width: 1129px;
        height: 22px;
    }
        .style329
        {
            width: 425px;
            height: 4px;
        }
        .style330
        {
            width: 2422px;
            height: 4px;
        }
        .style331
        {
            width: 1551px;
            height: 4px;
        }
        .style332
        {
            width: 1129px;
            height: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" frame="box" 
        style="border-style: solid; border-width: thin; width: 100%;">
    <tr>
        <td class="style309">
                        <strong>
                            <asp:Label ID="Remark" runat="server" 
                            style="color: #FF0000; font-weight: 700" CssClass="style302"></asp:Label>
                        </strong>
        </td>
        <td class="style304">
        </td>
    </tr>
    <tr>
        <td class="style49">
            <table class="style2">
                <tr>
                    <td class="style322">
                        <strong>Withdrawal </strong></td>
                    <td class="style57">
                        <strong>Windows</strong></td>
                    <td class="style287">
                        <strong>Select Currency</strong></td>
                    <td class="style328">
                        <strong>
                            <asp:DropDownList ID="CurrencySelectordrplst" runat="server" Height="21px" 
                                style="margin-left: 0px" Width="67px" AutoPostBack="True" 
                            CssClass="style302">
                                <asp:ListItem Value="1">Select</asp:ListItem>
                                <asp:ListItem Value="10">USD</asp:ListItem>
                                <asp:ListItem Value="20">AFN</asp:ListItem>
                                <asp:ListItem Value="30">PKR</asp:ListItem>
                                <asp:ListItem Value="40">EUR</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="savcuid" runat="server" Visible="False" CssClass="style302"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="style323">
                        Operator</td>
                    <td class="style106">
                        <asp:Label ID="Operatorlbl" runat="server"></asp:Label>
                        <asp:Label ID="oprid" runat="server"></asp:Label>
                    </td>
                    <td class="style310">
                        Customer ID</td>
                    <td class="style109">
                        <asp:Label ID="CUSTID" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style329">
                        Trans ID</td>
                    <td class="style330">
                        <asp:Label ID="tranidlabel" runat="server"></asp:Label>
                    </td>
                    <td class="style331">
                        <strong>&nbsp;</strong></td>
                    <td class="style332">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text=" Is A/C Holder" 
                            AutoPostBack="True" />
                    </td>
                </tr>
                <tr>
                    <td class="style324">
                        <asp:Label ID="depdatelbl" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td class="style315">
                        <asp:Label ID="datelbl" runat="server"></asp:Label>
                    </td>
                    <td class="style317">
                        Holder Name</td>
                    <td class="style110">
                        <asp:Label ID="achname" runat="server" Enabled="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style325">
                        Telephone</td>
                    <td class="style278">
                        <asp:Label ID="teleplbl" runat="server"></asp:Label>
                    </td>
                    <td class="style312">
                        Account No</td>
                    <td class="style281">
                        <asp:TextBox ID="acntxtb" runat="server" Height="18px" Width="108px"  
                            onkeypress="return isonlyNumber(event);" MaxLength="8" AutoPostBack="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style326">
                        Contact #&nbsp;
                        </td>
                    <td class="style282">
                        <asp:Label ID="contactlbl" runat="server"></asp:Label>
                        </td>
                    <td class="style313">
                        <strong>W-Amount</strong></td>
                    <td class="style285">
                        <strong><asp:TextBox 
                            ID="withamnttxtb" runat="server" Width="84px" CssClass="style286" 
                            AutoPostBack="True" Height="18px" AutoCompleteType="Disabled" 
                            onkeypress="return amount(event);" MaxLength="14" ></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="amntlbl" runat="server"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="style327">
                        Currency:
                        </td>
                    <td class="style61">
                        <asp:Label ID="currlbl" runat="server"></asp:Label>
                    </td>
                    <td class="style314">
                        Particular</td>
                    <td class="style70">
                        <strong>
                        <asp:TextBox ID="savparttxtb" runat="server" 
                                Width="197px" Height="18px" 
                            onkeypress="return isparticularNumber(event)"></asp:TextBox>
                        </strong>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style275">
            <table class="style318">
                <tr>
                    <td class="style320">
                        Photo
                    </td>
                    <td class="style236">
                        Signature</td>
                </tr>
                <tr>
                    <td class="style321">
                        <asp:Image ID="Image3" runat="server" Height="151px" Width="194px" />
                    </td>
                    <td>
                        <asp:Image ID="Image4" runat="server" Height="151px" Width="194px" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style271">
            <table class="style18">
                <tr>
                    <td class="style71" bgcolor="Aqua">
                        Transaction 
                        Denomination</td>
                    <td class="style132" bgcolor="Aqua">
                            Note
                        </td>
                    <td class="style100" bgcolor="Aqua">
                    </td>
                    <td class="style134" bgcolor="Aqua">
                            Bundle</td>
                    <td class="style136" bgcolor="Aqua">
                            Notes</td>
                    <td class="style104" bgcolor="Aqua">
                    </td>
                    <td class="style73" bgcolor="Aqua">
                            Amount</td>
                    <td class="style74">
                        </td>
                </tr>
                <tr>
                    <td class="style123">
                        &nbsp;</td>
                    <td class="style124" bgcolor="#66FFCC">
                            5000
                        </td>
                    <td class="style125" bgcolor="#66FFCC">
                            X</td>
                    <td class="style126" bgcolor="#66FFCC">
                        <asp:TextBox ID="ftbtxt" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style128" bgcolor="#66FFCC">
                        <asp:TextBox ID="ftntxt" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" AutoCompleteType="Disabled" TabIndex="1" 
                            onkeypress="return isNumber(event)" MaxLength="5" /></asp:TextBox>
                    </td>
                    <td class="style52" bgcolor="#66FFCC">
                            =</td>
                    <td class="style130" bgcolor="#66FFCC">
                        <asp:TextBox ID="ftttxt" runat="server" Width="86px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style131">
                        </td>
                </tr>
                <tr>
                    <td class="style123">
                        &nbsp;</td>
                    <td class="style138" bgcolor="#66FFCC">
                            1000
                        </td>
                    <td class="style139" bgcolor="#66FFCC">
                            X</td>
                    <td class="style126" bgcolor="#66FFCC">
                        <asp:TextBox ID="otbtxtb" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style128" bgcolor="#66FFCC">
                        <asp:TextBox ID="otntxtb" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" AutoCompleteType="Disabled" TabIndex="2" Enabled="False" 
                            onkeypress="return isNumber(event)" MaxLength="6" /></asp:TextBox>
                    </td>
                    <td class="style52" bgcolor="#66FFCC">
                            =</td>
                    <td class="style130" bgcolor="#66FFCC">
                        <asp:TextBox ID="otttxtb" runat="server" Width="86px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style131">
                        </td>
                </tr>
                <tr>
                    <td class="style77">
                        &nbsp;</td>
                    <td class="style78" bgcolor="#66FFCC">
                            500
                        </td>
                    <td class="style79" bgcolor="#66FFCC">
                            X</td>
                    <td class="style80" bgcolor="#66FFCC">
                        <asp:TextBox ID="fhbtxtb" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style82" bgcolor="#66FFCC">
                        <asp:TextBox ID="fhntxtb" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" TabIndex="3" Enabled="False" 
                            onkeypress="return isNumber(event);" MaxLength="6" ></asp:TextBox>
                    </td>
                    <td class="style83" bgcolor="#66FFCC">
                            =</td>
                    <td class="style84" bgcolor="#66FFCC">
                        <asp:TextBox ID="fhttxtb" runat="server" Width="86px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style85">
                        </td>
                </tr>
                <tr>
                    <td class="style140">
                        &nbsp;</td>
                    <td class="style99" bgcolor="#66FFCC">
                            100</td>
                    <td class="style100" bgcolor="#66FFCC">
                            X</td>
                    <td class="style101" bgcolor="#66FFCC">
                        <asp:TextBox ID="hbtxtb" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style103" bgcolor="#66FFCC">
                        <asp:TextBox ID="hntxtbo" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" TabIndex="4" AutoCompleteType="Disabled" Enabled="False" 
                            onkeypress="return isNumber(event);" MaxLength="6"></asp:TextBox>
                    </td>
                    <td class="style104" bgcolor="#66FFCC">
                            =</td>
                    <td class="style147" bgcolor="#66FFCC">
                        <asp:TextBox ID="httxtb" runat="server" Width="86px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style148">
                        </td>
                </tr>
                <tr>
                    <td class="style149">
                        &nbsp;</td>
                    <td class="style150" bgcolor="#66FFCC">
                            50</td>
                    <td class="style151" bgcolor="#66FFCC">
                            X</td>
                    <td class="style152" bgcolor="#66FFCC">
                        <asp:TextBox ID="fybtxtb" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style154" bgcolor="#66FFCC">
                        <asp:TextBox ID="fyntxtb" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" TabIndex="5" AutoCompleteType="Disabled" Enabled="False" 
                            onkeypress="return isNumber(event);" MaxLength="6"></asp:TextBox>
                    </td>
                    <td class="style155" bgcolor="#66FFCC">
                            =</td>
                    <td class="style156" bgcolor="#66FFCC">
                        <asp:TextBox ID="fyttxtb" runat="server" Width="86px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style157">
                        </td>
                </tr>
                <tr>
                    <td class="style158">
                        &nbsp;</td>
                    <td class="style159" bgcolor="#66FFCC">
                            20</td>
                    <td class="style160" bgcolor="#66FFCC">
                            X</td>
                    <td class="style161" bgcolor="#66FFCC">
                        <asp:TextBox ID="twbtxtb" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style163" bgcolor="#66FFCC">
                        <asp:TextBox ID="twntxtb" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" TabIndex="6" AutoCompleteType="Disabled" Enabled="False" 
                            onkeypress="return isNumber(event);" MaxLength="7"></asp:TextBox>
                    </td>
                    <td class="style164" bgcolor="#66FFCC">
                            =</td>
                    <td class="style165" bgcolor="#66FFCC">
                        <asp:TextBox ID="twttxtb" runat="server" Width="86px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style166">
                        </td>
                </tr>
                <tr>
                    <td class="style123">
                        &nbsp;</td>
                    <td class="style138" bgcolor="#66FFCC">
                            10</td>
                    <td class="style139" bgcolor="#66FFCC">
                            X</td>
                    <td class="style126" bgcolor="#66FFCC">
                        <asp:TextBox ID="tnbtxtb" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style128" bgcolor="#66FFCC">
                        <asp:TextBox ID="tnntxtb" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" TabIndex="7" AutoCompleteType="Disabled" Enabled="False" 
                            onkeypress="return isNumber(event);" MaxLength="7"></asp:TextBox>
                    </td>
                    <td class="style52" bgcolor="#66FFCC">
                            =</td>
                    <td class="style130" bgcolor="#66FFCC">
                        <asp:TextBox ID="tnttxtb" runat="server" Width="86px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style131">
                        </td>
                </tr>
                <tr>
                    <td class="style167">
                        &nbsp;</td>
                    <td class="style168" bgcolor="#66FFCC">
                            5</td>
                    <td class="style169" bgcolor="#66FFCC">
                            X</td>
                    <td class="style170" bgcolor="#66FFCC">
                        <asp:TextBox ID="fvbtxtb" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style172" bgcolor="#66FFCC">
                        <asp:TextBox ID="fvntxtb" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" TabIndex="8" AutoCompleteType="Disabled" Enabled="False" 
                            onkeypress="return isNumber(event);" MaxLength="7"></asp:TextBox>
                    </td>
                    <td class="style173" bgcolor="#66FFCC">
                            =</td>
                    <td class="style174" bgcolor="#66FFCC">
                        <asp:TextBox ID="fvttxtb" runat="server" Width="86px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style175">
                        </td>
                </tr>
                <tr>
                    <td class="style176">
                        &nbsp;</td>
                    <td class="style177" bgcolor="#66FFCC">
                            2</td>
                    <td class="style178" bgcolor="#66FFCC">
                            X</td>
                    <td class="style179" bgcolor="#66FFCC">
                        <asp:TextBox ID="twobtxtb" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style181" bgcolor="#66FFCC">
                        <asp:TextBox ID="twontxtb" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" TabIndex="9" AutoCompleteType="Disabled" Enabled="False" 
                            onkeypress="return isNumber(event);" MaxLength="7"></asp:TextBox>
                    </td>
                    <td class="style182" bgcolor="#66FFCC">
                            =</td>
                    <td class="style183" bgcolor="#66FFCC">
                        <asp:TextBox ID="twottxtb" runat="server" Width="86px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style184">
                        </td>
                </tr>
                <tr>
                    <td class="style257">
                        &nbsp;</td>
                    <td class="style266" bgcolor="#66FFCC">
                            1</td>
                    <td class="style267" bgcolor="#66FFCC">
                            X</td>
                    <td class="style198" bgcolor="#66FFCC">
                        <asp:TextBox ID="onebtxtb" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style200" bgcolor="#66FFCC">
                        <asp:TextBox ID="onentxtb" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" TabIndex="10" AutoCompleteType="Disabled" Enabled="False" 
                            onkeypress="return isNumber(event);" MaxLength="7"></asp:TextBox>
                    </td>
                    <td class="style201" bgcolor="#66FFCC">
                            =</td>
                    <td class="style264" bgcolor="#66FFCC">
                        <asp:TextBox ID="onettxtb" runat="server" Width="86px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style265">
                        </td>
                </tr>
                <tr>
                    <td class="style248">
                        <strong>Overall Total</strong></td>
                    <td class="style242" bgcolor="#66FFCC">
                            Cents</td>
                    <td class="style243" bgcolor="#66FFCC">
                    </td>
                    <td class="style244" bgcolor="#66FFCC">
                        <asp:TextBox ID="cbtxtb" runat="server" Width="57px" Enabled="False" 
                            AutoPostBack="True" Height="17px"></asp:TextBox>
                    </td>
                    <td class="style246" bgcolor="#66FFCC">
                        <asp:TextBox ID="cntxtb" runat="server" Width="57px" AutoPostBack="True" 
                            Height="17px" TabIndex="11" AutoCompleteType="Disabled" Enabled="False" 
                            onkeypress="return isNumber(event);" MaxLength="4"></asp:TextBox>
                    </td>
                    <td class="style247" bgcolor="#66FFCC">
                        =</td>
                    <td class="style255" bgcolor="#66FFCC">
                        <asp:TextBox ID="cttxtb" runat="server" Height="17px" Width="86px" 
                            Enabled="False" AutoPostBack="True"></asp:TextBox>
                    </td>
                    <td class="style256">
                    </td>
                </tr>
                <tr>
                    <td class="style268">
                        <asp:TextBox ID="transtotal" runat="server" Width="127px" Enabled="False" 
                            AutoPostBack="True" CssClass="style134" Height="18px"></asp:TextBox>
                    </td>
                    <td class="style43">
                    </td>
                    <td class="style23">
                    </td>
                    <td class="style25">
                        <asp:Button ID="Button1" runat="server" Text="Cancel" Width="59px" />
                    </td>
                    <td class="style41">
                        <asp:Button ID="withbtn" runat="server" Text="Save" Width="62px" 
                            Enabled="False" TabIndex="12" />
                    </td>
                    <td>
                    </td>
                    <td class="style269">
                        <asp:Button ID="print" runat="server" Text="Print" Width="59px" OnClientClick = "SetTarget();"  />
                    </td>
                    <td class="style270">
                    </td>
                </tr>
            </table>
        </td>
        <td class="style272">
            <table class="style18">
                <tr>
                        <td class="style20">
                            Denomination</td>
                        <td class="style33">
                            Note
                        </td>
                        <td class="style195">
                        </td>
                        <td class="style24">
                            Bundle</td>
                        <td class="style29">
                        </td>
                        <td class="style40">
                            Notes</td>
                        <td class="style196">
                        </td>
                        <td class="style51">
                            Total</td>
                    </tr>
                <tr>
                        <td class="style209">
                            History</td>
                        <td class="style210">
                            5000</td>
                        <td class="style211">
                            X</td>
                        <td class="style212">
                            <asp:TextBox ID="B5000" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style213">
                            &nbsp;</td>
                        <td class="style214">
                            <asp:TextBox ID="N5000" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style215">
                            &nbsp;</td>
                        <td class="style215">
                            <asp:TextBox ID="T5000" runat="server" Width="86px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                        <td class="style209">
                            &nbsp;</td>
                        <td class="style210">
                            1000
                        </td>
                        <td class="style211">
                            X</td>
                        <td class="style212">
                            <asp:TextBox ID="b1000" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style213">
                            &nbsp;</td>
                        <td class="style214">
                            <asp:TextBox ID="n1000" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style215">
                            =</td>
                        <td class="style215">
                            <asp:TextBox ID="t1000" runat="server" Width="86px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                        <td class="style209">
                        </td>
                        <td class="style210">
                            500
                        </td>
                        <td class="style211">
                            X</td>
                        <td class="style212">
                            <asp:TextBox ID="b500" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style213">
                            &nbsp;</td>
                        <td class="style214">
                            <asp:TextBox ID="n500" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style215">
                            =</td>
                        <td class="style215">
                            <asp:TextBox ID="t500" runat="server" Width="86px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                        <td class="style218">
                        </td>
                        <td class="style216">
                            100</td>
                        <td class="style217">
                            X</td>
                        <td class="style219">
                            <asp:TextBox ID="b100" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style220">
                            &nbsp;</td>
                        <td class="style221">
                            <asp:TextBox ID="n100" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style222">
                            =</td>
                        <td class="style222">
                            <asp:TextBox ID="t100" runat="server" Width="86px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                        <td class="style223">
                        </td>
                        <td class="style224">
                            50</td>
                        <td class="style225">
                            X</td>
                        <td class="style226">
                            <asp:TextBox ID="b50" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style227">
                            &nbsp;</td>
                        <td class="style228">
                            <asp:TextBox ID="n50" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style229">
                            =</td>
                        <td class="style229">
                            <asp:TextBox ID="t50" runat="server" Width="86px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                        <td class="style230">
                        </td>
                        <td class="style231">
                            20</td>
                        <td class="style232">
                            X</td>
                        <td class="style233">
                            <asp:TextBox ID="b20" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style234">
                            &nbsp;</td>
                        <td class="style235">
                            <asp:TextBox ID="n20" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style236">
                            =</td>
                        <td class="style236">
                            <asp:TextBox ID="t20" runat="server" Width="86px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                        <td class="style98">
                        </td>
                        <td class="style298">
                            10</td>
                        <td class="style100">
                            X</td>
                        <td class="style101">
                            <asp:TextBox ID="b10" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style102">
                            &nbsp;</td>
                        <td class="style103">
                            <asp:TextBox ID="n10" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style104">
                            =</td>
                        <td class="style104">
                            <asp:TextBox ID="t10" runat="server" Width="86px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                        <td class="style240">
                            &nbsp;</td>
                        <td class="style299">
                            5</td>
                        <td class="style169">
                            X</td>
                        <td class="style170">
                            <asp:TextBox ID="b5" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style171">
                            &nbsp;</td>
                        <td class="style172">
                            <asp:TextBox ID="n5" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style173">
                            =</td>
                        <td class="style173">
                            <asp:TextBox ID="t5" runat="server" Width="86px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                        <td class="style241">
                            &nbsp;</td>
                        <td class="style300">
                            2</td>
                        <td class="style243">
                            X</td>
                        <td class="style244">
                            <asp:TextBox ID="b2" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style245">
                            &nbsp;</td>
                        <td class="style246">
                            <asp:TextBox ID="n2" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style247">
                            =</td>
                        <td class="style247">
                            <asp:TextBox ID="t2" runat="server" Width="86px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                        <td class="style230">
                            &nbsp;</td>
                        <td class="style231">
                            1</td>
                        <td class="style232">
                            X</td>
                        <td class="style233">
                            <asp:TextBox ID="b1" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style234">
                            &nbsp;</td>
                        <td class="style235">
                            <asp:TextBox ID="n1" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style236">
                            =</td>
                        <td class="style236">
                            <asp:TextBox ID="t1" runat="server" Width="86px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                        <td class="style42">
                            &nbsp;</td>
                        <td class="style301">
                            Cents</td>
                        <td class="style23">
                        </td>
                        <td class="style25">
                            <asp:TextBox ID="bc" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style30">
                        </td>
                        <td class="style41">
                            <asp:TextBox ID="nc" runat="server" Width="57px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                        <td>
                            <asp:TextBox ID="tc" runat="server" Height="17px" Width="83px" 
                            Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                </table>
        </td>
    </tr>
</table>
</asp:Content>

