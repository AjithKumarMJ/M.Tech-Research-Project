<%@ Page Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<asp:Panel ID="Panel1" runat="server" Height="339px">
        <table style="width: 100%; height: 337px;">
            <tr>
                <td colspan="2" 
                    style="height: 37px; font-family: Sylfaen; font-size: large; text-align: center;">
                    <b>&nbsp;Cloud User Login</b></td>
            </tr>
            <tr>
                <td style="width: 273px">
                    <asp:Image ID="Image1" runat="server" BorderStyle="Outset" Height="295px" 
                        ImageUrl="~/images/download (2).jpg" Width="368px" />
                </td>
                <td style="background-color: #FFFFFF;">
                    <table style="width: 101%; height: 167px">
                        <tr>
                            <td style="font-family: Sylfaen; font-size: medium; font-weight: bold; width: 115px; height: 41px; color: #000000;">
                                User<b> Name</b></td>
                            <td colspan="2" style="height: 41px">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: Sylfaen; font-size: medium; font-weight: bold; width: 115px; height: 40px; color: #000000;">
                                <b>Password</b></td>
                            <td colspan="2" style="height: 40px">
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 115px; height: 32px">
                            </td>
                            <td style="height: 32px">
                                <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
                                    Text="Login" Width="63px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="25px" 
                                    onclick="Button2_Click" Text="Clear" Width="60px" />
                            </td>
                            <td style="height: 32px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 115px">
                                &nbsp;</td>
                            <td colspan="2">
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Are 
                                you new user? click here</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</form>
</asp:Content>

