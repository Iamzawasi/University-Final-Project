<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="TransferExchange.aspx.vb" Inherits="TransferExchange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
    {
        width: 695px;
        height: 460px;
    }
    .style14
    {
        color: #006600;
        width: 204px;
    }
    .style15
    {
        width: 204px;
    }
    .style22
    {
            width: 1431px;
        }
    .style30
    {
        width: 3081px;
        height: 147px;
    }
    .style31
    {
        width: 1431px;
        height: 147px;
    }
    .style34
    {
        width: 3081px;
        height: 29px;
    }
    .style35
    {
        width: 1431px;
        height: 29px;
    }
    .style39
    {
            width: 3081px;
        }
    .style40
    {
        color: #006600;
        width: 3081px;
            font-size: small;
        }
    .style45
    {
            width: 3081px;
            height: 6px;
        }
    .style46
    {
            width: 1431px;
            height: 6px;
        }
    .style49
    {
        width: 340px;
    }
    .style50
    {
        width: 340px;
        height: 6px;
    }
    .style51
    {
        width: 340px;
        height: 147px;
    }
    .style52
    {
        width: 340px;
        height: 29px;
    }
        .style53
        {
            width: 3081px;
            height: 30px;
        }
        .style54
        {
            width: 1431px;
            height: 30px;
        }
        .style56
        {
            width: 340px;
            height: 30px;
        }
        .style59
        {
            width: 678px;
            height: 6px;
        }
        .style60
        {
            width: 678px;
            height: 30px;
        }
        .style61
        {
            width: 678px;
            height: 147px;
        }
        .style62
        {
            width: 678px;
            height: 29px;
        }
        .style63
        {
            width: 3081px;
            height: 3px;
        }
        .style64
        {
            width: 1431px;
            height: 3px;
        }
        .style65
        {
            width: 678px;
            height: 3px;
        }
        .style66
        {
            width: 340px;
            height: 3px;
        }
        .style67
        {
            width: 678px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style13">
    <tr>
        <td class="style40">
            <strong>Transfer/Exchange Windows</strong></td>
        <td class="style22">
            <asp:Label ID="Label2" runat="server" Text="Operator"></asp:Label>
            :-
                        <asp:Label ID="Operatorlbl" runat="server"></asp:Label>
                        <asp:Label ID="oprid" runat="server"></asp:Label>
        </td>
        <td class="style67">
            Date</td>
        <td class="style49">
            <asp:Label ID="datelbl" runat="server" style="direction: ltr"></asp:Label>
            </td>
    </tr>
    <tr>
        <td class="style39">
            Batch ID
        </td>
        <td class="style22">
            <asp:Label ID="Batchlbl" runat="server"></asp:Label>
        </td>
        <td class="style67">
            Transaction ID</td>
        <td class="style49">
            <asp:Label ID="tranidlabel" runat="server" style="direction: ltr"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style39">
            Currency</td>
        <td class="style22">
            <asp:Label ID="currlbl" runat="server"></asp:Label>
        </td>
        <td class="style67">
            Mobile Number</td>
        <td class="style49">
            <asp:Label ID="contactlbl" runat="server" style="direction: ltr"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style45">
            Debit Account here<asp:Label ID="currlbl1" runat="server"></asp:Label>
        </td>
        <td class="style46">
            <asp:TextBox ID="acntxtb" runat="server" Width="97px" 
                onkeypress="return isonlyNumber(event);" MaxLength="8" AutoPostBack="True"></asp:TextBox>
            <asp:Label ID="achname" runat="server"></asp:Label>
        </td>
        <td class="style59">
            Telephone </td>
        <td class="style50">
            <asp:Label ID="teleplbl" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style45">
            Particular</td>
        <td class="style46">
            <asp:TextBox ID="savparttxtb" runat="server" Width="474px" 
                onkeypress="return isparticularNumber(event)" MaxLength="75"></asp:TextBox>
        </td>
        <td class="style59">
            Customer ID</td>
        <td class="style50">
            <asp:Label ID="custid" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style53">
            Debit Amount</td>
        <td class="style54">
            <asp:TextBox ID="drtxtbamount" runat="server" AutoPostBack="True" Width="99px" 
                onkeypress="return amount(event);" MaxLength="14"></asp:TextBox>
&nbsp;<asp:Label ID="amntlbl" runat="server"></asp:Label>
        </td>
        <td class="style60">
            <asp:Button ID="debupbtn" runat="server" Text="Save/Update" Width="106px" />
        </td>
        <td class="style56">
            </td>
    </tr>
    <tr>
        <td class="style39">
            Photo</td>
        <td class="style22">
            Signature</td>
        <td class="style67">
        </td>
        <td class="style49">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style30">
            <asp:Image ID="Image1" runat="server" Height="146px" Width="198px" />
        </td>
        <td class="style31">
            <asp:Image ID="Image2" runat="server" Height="146px" Width="176px" />
        </td>
        <td class="style61">
            </td>
        <td class="style51">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style39">
            <asp:CheckBox ID="chkbxexchange" runat="server" AutoPostBack="True" 
                Text="Exchange" />
        </td>
        <td class="style22">
        </td>
        <td class="style67">
        </td>
        <td class="style49">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style39">
            <asp:Label ID="lblexchange" runat="server" Text="Enter Exchange Rate" 
                Visible="False"></asp:Label>
        </td>
        <td class="style22">
            <asp:TextBox ID="exchangtxtb" runat="server" AutoPostBack="True" 
                Visible="False" Width="43px" onkeypress="return amount(event);"></asp:TextBox>
        </td>
        <td class="style67">
        </td>
        <td class="style49">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style63">
        </td>
        <td class="style64">
        </td>
        <td class="style65">
        </td>
        <td class="style66">
            </td>
    </tr>
    <tr>
        <td class="style39">
            Currency</td>
        <td class="style22">
            <asp:Label ID="currlbl0" runat="server"></asp:Label>
        </td>
        <td class="style67">
            Transaction ID</td>
        <td class="style49">
            <asp:Label ID="tranidlabel0" runat="server" style="direction: ltr"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style39">
            Credit Account Here</td>
        <td class="style22">
            <asp:TextBox ID="acntxtb0" runat="server" AutoPostBack="True" Enabled="False" 
                Width="97px" onkeypress="return isonlyNumber(event);" MaxLength="8"></asp:TextBox>
            <asp:Label ID="achname0" runat="server"></asp:Label>
        </td>
        <td class="style67">
            Mobile Number</td>
        <td class="style49">
            <asp:Label ID="contactlbl0" runat="server" style="direction: ltr"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style39">
            Particular</td>
        <td class="style22">
            <asp:TextBox ID="parttxtb0" runat="server" AutoPostBack="True" Enabled="False" 
                Width="454px" onkeypress="return isparticularNumber(event)" MaxLength="75"></asp:TextBox>
        </td>
        <td class="style67">
            Telephone</td>
        <td class="style49">
            <asp:Label ID="teleplbl0" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style39">
            Credit Amount</td>
        <td class="style22">
            <asp:TextBox ID="creamttxtb" runat="server" AutoPostBack="True" Enabled="False" 
                Width="95px" onkeypress="return amount(event);" MaxLength="14"></asp:TextBox>
            <asp:Label ID="amntlbl0" runat="server"></asp:Label>
        </td>
        <td class="style67">
            <asp:Button ID="crsavupbtn" runat="server" Text="Save/Update" Width="103px" />
        </td>
        <td class="style49">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style34">
            <asp:Button ID="trfdsavebtn" runat="server" Text="Save" Width="94px" 
                Enabled="False" />
        </td>
        <td class="style35">
            <asp:Button ID="Button2" runat="server" Text="Cancel" Width="94px" />
            <asp:Button ID="prntbtn" runat="server" Text="Print" Width="94px" OnClientClick = "SetTarget()"/>
        </td>
        <td class="style62">
        </td>
        <td class="style52">
            <asp:Label ID="deplbl" runat="server" Enabled="False" EnableTheming="True" 
                Visible="False"></asp:Label>
            <asp:Label ID="withlbl" runat="server" Enabled="False" EnableTheming="True" 
                Visible="False"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

