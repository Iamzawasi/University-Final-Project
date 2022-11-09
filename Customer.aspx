<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Customer.aspx.vb" Inherits="AccountOpen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            width: 100%;
            height: 509px;
        }
        .style17
        {
            height: 205px;
        }
        .style18
        {
            width: 100%;
            height: 282px;
        }
        .style21
        {
            width: 1123px;
        }
        .style22
        {
            width: 749px;
        }
        .style23
        {
            width: 546px;
            height: 243px;
        }
        .style24
        {
            height: 205px;
            width: 546px;
        }
        .style25
        {
            height: 243px;
        }
        .style35
        {
            width: 749px;
            height: 25px;
        }
        .style40
        {
            width: 1123px;
            height: 26px;
        }
        .style42
        {
            height: 25px;
            width: 1816px;
        }
        .style43
        {
            height: 22px;
            width: 1816px;
        }
        .style44
        {
            width: 749px;
            height: 22px;
        }
        .style45
        {
            width: 1816px;
            height: 28px;
        }
        .style46
        {
            width: 749px;
            height: 28px;
        }
        .style49
        {
            width: 100%;
            height: 243px;
        }
        .style51
        {
            height: 10px;
        }
        .style52
        {
            height: 10px;
            width: 273px;
        }
        .style53
        {
            width: 273px;
        }
        .style54
        {
            width: 100%;
            height: 229px;
        }
        .style55
        {
            height: 105px;
        }
        .style56
        {
            width: 116px;
        }
        .style57
        {
            height: 105px;
            width: 116px;
        }
    .style58
    {
        width: 1816px;
        height: 16px;
    }
        .style60
        {
            width: 1816px;
            height: 6px;
        }
        .style61
        {
            height: 6px;
            width: 749px;
        }
        .style62
        {
            height: 16px;
            width: 749px;
        }
        .style63
        {
            height: 17px;
            width: 1816px;
        }
        .style64
        {
            height: 17px;
            width: 749px;
        }
        .style66
        {
            width: 1816px;
            height: 12px;
        }
        .style67
        {
            height: 12px;
            width: 749px;
        }
        .style68
        {
            width: 116px;
            height: 10px;
        }
        .style69
        {
            width: 116px;
            height: 18px;
        }
        .style70
        {
            height: 18px;
        }
        .style72
        {
            height: 19px;
            width: 1123px;
        }
        .style73
        {
            height: 19px;
            width: 749px;
        }
        .style76
        {
            height: 10px;
            width: 1123px;
        }
        .style77
        {
            height: 10px;
            width: 749px;
        }
        .style78
        {
            height: 17px;
            width: 1123px;
        }
        .style79
        {
            width: 749px;
            height: 26px;
        }
        .style80
        {
            height: 11px;
            width: 1123px;
        }
        .style81
        {
            height: 11px;
            width: 749px;
        }
        .style82
        {
            height: 12px;
            width: 1123px;
        }
        .style83
        {
            height: 20px;
            width: 1123px;
        }
        .style84
        {
            width: 749px;
            height: 20px;
        }
        .style85
        {
            height: 14px;
            width: 1123px;
        }
        .style86
        {
            height: 14px;
            width: 749px;
        }
        .style87
        {
            width: 1816px;
            height: 18px;
        }
        .style88
        {
            height: 18px;
            width: 749px;
        }
        .style89
        {
            color: #FF0000;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table class="style16">
            <tr>
                <td class="style23">
                    <table class="style18">
                        <tr>
                            <td class="style63">
                                <strong>Please fill the bellow&nbsp; </strong>
                            </td>
                            <td class="style64">
                                <strong>details for Customer</strong></td>
                        </tr>
                        <tr>
                            <td class="style66">
                                Operator Name &amp; ID</td>
                            <td class="style67">
                                <asp:Label ID="Operatorlbl" runat="server"></asp:Label>
                                <asp:Label ID="oprid" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style66">
                                Please Select Gender</td>
                            <td class="style67">
                                <asp:DropDownList ID="drplistgender" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style43">
                                Name
                            </td>
                            <td class="style44">
                                <asp:TextBox ID="txtname" runat="server" Width="180px" 
                                    onkeypress="return isonlyName(event)" MaxLength="24"></asp:TextBox>
                                <span class="style89">*</span></td>
                        </tr>
                        <tr>
                            <td class="style42">
                                Father Name</td>
                            <td class="style35">
                                <asp:TextBox ID="txtfname" runat="server" Width="180px" 
                                    onkeypress="return isonlyName(event)" MaxLength="24"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style45">
                                Permanent Address</td>
                            <td class="style46">
                                <asp:TextBox ID="txtpadd" runat="server" Width="372px" 
                                    onkeypress="return isparticularNumber(event)" MaxLength="75"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style45">
                                Current Address</td>
                            <td class="style46">
                                <asp:TextBox ID="txtcadd" runat="server" Width="372px" 
                                    onkeypress="return isparticularNumber(event)" MaxLength="75"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style58">
                                </td>
                            <td class="style62">
                                &nbsp;Month - Day - Year</td>
                        </tr>
                        <tr>
                            <td class="style60">
                                Date of birth</td>
                            <td class="style61">
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
                                    Height="22px" Width="60px">
                                    <asp:ListItem> </asp:ListItem>
                                </asp:DropDownList>
                                <span class="style89">*<asp:Label ID="Label4" runat="server" 
                                    style="font-size: large"></asp:Label>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="style87">
                                E-Mail</td>
                            <td class="style88">
                                <asp:TextBox ID="txtbemail" runat="server" Width="180px" MaxLength="30" 
                                    ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtbemail" ErrorMessage="Wrong E-Mail...!!!" 
                                    ValidationExpression="[-0-9a-zA-Z.+_]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,4}"></asp:RegularExpressionValidator>
                                </td>
                        </tr>
                    </table>
                </td>
                <td class="style25">
                    <table class="style18">
                        <tr>
                            <td class="style72">
                                <strong>Other Details</strong></td>
                            <td class="style73">
                                <asp:Label ID="Label2" runat="server" Text="Customer_ID:- "></asp:Label>
                                <asp:Label ID="idlabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style80">
                                Tazkira Number</td>
                            <td class="style81">
                                <asp:TextBox ID="txtnid" runat="server" Width="94px" 
                                    onkeypress="return isparticularNumber(event)" MaxLength="12"></asp:TextBox>
                                <asp:Label ID="addidlbl" runat="server" Text="lbladdres" Visible="False"></asp:Label>
                                <asp:Label ID="occupidd" runat="server" Text="ocplbl" Visible="False"></asp:Label>
                                <asp:Label ID="addifroccup" runat="server" Text="oclblid" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                Mobile Number</td>
                            <td class="style79">
                                <asp:TextBox ID="Mobiletxtb" runat="server" Width="128px" MaxLength="15" 
                                    onkeypress="return isparticularNumber(event)"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="Mobiletxtb" ErrorMessage="Wrong Mobile Number" 
                                    ValidationExpression="^\+(?:[0-9]●?){6,14}[0-9]$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style78">
                                Telephone Number</td>
                            <td class="style64">
                                <asp:TextBox ID="Teletxtbox" runat="server" Width="126px" MaxLength="15" 
                                    onkeypress="return isparticularNumber(event)"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                    ControlToValidate="Teletxtbox" ErrorMessage="Wrong Mobile Number" 
                                    ValidationExpression="^\+(?:[0-9]●?){6,14}[0-9]$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style76">
                                <strong>Occupation Detail</strong></td>
                            <td class="style77">
                                </td>
                        </tr>
                        <tr>
                            <td class="style85">
                                Employer Name</td>
                            <td class="style86">
                                <asp:TextBox ID="txteplrname" runat="server" Width="254px" 
                                    onkeypress="return isonlyName(event)" MaxLength="30" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style78">
                                Employeer Address</td>
                            <td class="style64">
                                <asp:TextBox ID="txtplradd" runat="server" Width="251px" 
                                    onkeypress="return isparticularNumber(event)" MaxLength="75"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style83">
                                Employeer Telephone</td>
                            <td class="style84">
                                <asp:TextBox ID="txteplrtel" runat="server" Width="141px" MaxLength="15" 
                                    onkeypress="return isparticularNumber(event)"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style82">
                                Designation</td>
                            <td class="style67">
                                <asp:TextBox ID="txtplrdesign" runat="server" Width="141px" 
                                    onkeypress="return isonlyName(event)" MaxLength="20"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                Income Source<br />
                                Annual Income</td>
                            <td class="style22">
                                <asp:TextBox ID="txtincoms" runat="server" Width="138px" 
                                    onkeypress="return isonlyName(event)" MaxLength="20"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:TextBox ID="txtannl" runat="server" Width="140px" 
                                    onkeypress="return amount(event)" MaxLength="10"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style24">
                    <table class="style49">
                        <tr>
                            <td class="style52">
                                <asp:FileUpload ID="filephoto" runat="server" ClientIDMode="Static" 
                                    EnableTheming="False" EnableViewState="False" ViewStateMode="Disabled" />
&nbsp;Photo</td>
                            <td class="style51">
                                <asp:FileUpload ID="filesign" runat="server" />
&nbsp;Sign</td>
                        </tr>
                        <tr>
                            <td class="style53">
                                <asp:Image ID="Imagephoto" runat="server" Height="199px" Width="246px" />
                            </td>
                            <td>
                                <asp:Image ID="Imagesign" runat="server" Height="199px" Width="246px" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="style17">
                    <table class="style54">
                        <tr>
                            <td class="style68">
                                <asp:Button ID="Button3" runat="server" Text="Preveiw Photo" Width="110px" />
                            </td>
                            <td class="style51">
                                <asp:RegularExpressionValidator ID="validatefileuploaders0" runat="server" 
                                    ControlToValidate="filephoto" 
                                    ErrorMessage="Only Image Allowed .JPG , .GIF or .PNG" 
                                    ValidationExpression="^.*\.(jpg|JPG|gif|GIF|png|PNG)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style56">
                                &nbsp;</td>
                            <td>
                                <asp:RegularExpressionValidator ID="validatefileuploaders" runat="server" 
                                    ControlToValidate="filesign" 
                                    ErrorMessage="Only Image Allowed .JPG , .GIF or .PNG" 
                                    ValidationExpression="^.*\.(jpg|JPG|gif|GIF|png|PNG)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style57">
                                &nbsp;</td>
                            <td class="style55">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style56">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style69">
                                <asp:Button ID="Button1" runat="server" PostBackUrl="~/welcome.aspx" 
                                    Text="Cancel" Width="101px" />
                            </td>
                            <td class="style70">
                                <asp:Button ID="SAVE" runat="server" Text="Save" Width="101px" />
                            &nbsp;<asp:Button ID="updtbtn" runat="server" Text="Update" Width="101px" 
                                    Visible="False" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

</asp:Content>

