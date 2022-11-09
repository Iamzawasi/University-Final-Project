<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Changepassword.aspx.vb" Inherits="Changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style16
    {
        width: 100%;
    }
    .style17
    {
        width: 275px;
    }
    .style18
    {
        width: 275px;
        height: 23px;
    }
    .style19
    {
        height: 23px;
    }
    .style20
    {
        width: 168px;
    }
    .style21
    {
        width: 168px;
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style20">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
            &nbsp;</td>
        <td class="style21">
            User ID</td>
        <td class="style19">
            <asp:TextBox ID="usridtxt" runat="server" MaxLength="15" Enabled="False" 
                Height="20px" Width="130px"></asp:TextBox>
            <asp:Label ID="USERNAME" runat="server"></asp:Label>
        </td>
        <td class="style19">
        </td>
        <td class="style19">
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style20">
            Old Password</td>
        <td>
            <asp:TextBox ID="oldpswdtxtb" runat="server" MaxLength="15" TextMode="Password" 
                Height="20px" Width="130px"></asp:TextBox>
            <asp:Label ID="wronglblold" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style20">
            New Password</td>
        <td>
            <asp:TextBox ID="nwpwdtxtb" runat="server" MaxLength="15" TextMode="Password" 
                Height="20px" Width="130px"></asp:TextBox>
            <asp:Label ID="notmatchlbl" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style20">
            Retype New Password</td>
        <td>
            <asp:TextBox ID="rnwpwdtxtb" runat="server" MaxLength="15" TextMode="Password" 
                Height="20px" Width="130px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style20">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnchngpas" runat="server" Text="Change Password" 
                Width="130px" Height="25px" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

