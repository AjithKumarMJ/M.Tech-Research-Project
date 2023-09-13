<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="browse.aspx.cs" Inherits="browse" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Height="565px">
        <table style="width: 100%">
            <tr>
                <td colspan="2" style="text-align: center; font-size: medium; color: #000000">
                    Browse</td>
            </tr>
            <tr>
                <td style="width: 283px; text-align: center; color: #000000; font-size: small;">
                    Enter the domain name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 283px">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Browse" onclick="Button1_Click" />
                    
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel3" runat="server" Height="43px" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" 
                        style="text-align: center; color: #000000; font-size: medium;" Text="Label" 
                        Visible="False"></asp:Label>
                    </asp:Panel>
       
    </asp:Panel>
    </form>
</asp:Content>

