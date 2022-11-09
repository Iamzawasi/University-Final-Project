<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="NewAccount.aspx.vb" Inherits="NewAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style16
        {
            width: 100%;
            height: 36px;
        }
        .style19
        {
        width: 116px;
    }
        .style22
        {
            width: 270px;
        }
        .style20
        {
            height: 13px;
            width: 116px;
        }
        .style23
        {
            height: 13px;
            width: 270px;
            color: #006600;
            font-size: large;
        }
        .style18
        {
            height: 13px;
        }
        .style34
    {
        width: 270px;
        color: #009933;
        font-size: x-large;
    }
    .style36
    {
        height: 26px;
        width: 270px;
    }
    .style37
    {
        height: 26px;
    }
    .style39
    {
        width: 270px;
        height: 10px;
    }
    .style40
    {
        height: 10px;
        width: 116px;
    }
    .style41
    {
        height: 10px;
    }
    .style42
    {
        width: 116px;
        height: 1px;
    }
    .style45
    {
        width: 116px;
        height: 3px;
    }
    .style46
    {
        width: 270px;
        height: 3px;
    }
    .style47
    {
        height: 3px;
    }
    .style49
    {
        width: 270px;
        height: 15px;
    }
    .style50
    {
        height: 15px;
        width: 116px;
    }
    .style51
    {
        height: 15px;
    }
        .style52
        {
            font-size: medium;
        }
        .style53
        {
            width: 116px;
            font-size: x-large;
        }
        .style54
        {
            height: 17px;
            width: 270px;
            color: #006600;
            font-size: large;
        }
        .style55
        {
            height: 17px;
            width: 116px;
        }
        .style56
        {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
    <tr>
        <td class="style53">
            &nbsp;</td>
        <td class="style34">
            <strong>New Account Windows</strong></td>
        <td class="style52">
                Operator Name &amp; ID:-<asp:Label ID="Operatorlbl" runat="server"></asp:Label>
                <asp:Label ID="oprid" runat="server" Text="oprid"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style20">
        </td>
        <td class="style23">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style55">
            </td>
        <td class="style54">
            <strong>Customer Name</strong></td>
        <td class="style56">
            <asp:Label ID="Custname" runat="server" 
                style="color: #006600; font-size: large; font-weight: 700"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="accountnumberlbl" runat="server" 
                style="color: #006600; font-size: large; font-weight: 700"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style40">
        </td>
        <td class="style36">
                            Customer_ID</td>
        <td class="style37">
            <asp:TextBox ID="cust_idtxtb" runat="server" Width="115px" Height="17px" 
                MaxLength="6"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style45">
        </td>
        <td class="style39">
            Account Currency</td>
        <td class="style41">
            <asp:DropDownList ID="drdlcurrencyselector" runat="server" Height="20px" 
                Width="121px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Value="10">USD</asp:ListItem>
                <asp:ListItem Value="20">AFN</asp:ListItem>
                <asp:ListItem Value="30">PKR</asp:ListItem>
                <asp:ListItem Value="40">EURO</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="Currencyfieldrequirement" runat="server" 
                ControlToValidate="drdlcurrencyselector" 
                ErrorMessage="Please Select Currency for Account"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style42">
        </td>
        <td class="style46">
            Account Type</td>
        <td class="style47">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="121px">
                <asp:ListItem>Current Account</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style19">
        </td>
        <td class="style22">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style50">
        </td>
        <td class="style49">
            <asp:Button ID="Button1" runat="server" Text="Cancel" Width="93px" />
        </td>
        <td class="style51">
            <asp:Button ID="acsavebtn" runat="server" Text="Save" Width="93px" 
                Enabled="False" />
        </td>
    </tr>
    <tr>
        <td class="style19">
            &nbsp;</td>
        <td class="style22">
            &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

