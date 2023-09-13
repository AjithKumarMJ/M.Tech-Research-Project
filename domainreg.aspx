<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="domainreg.aspx.cs" Inherits="domainreg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Height="325px">
    <table style="width: 100%; height: 326px;">
        <tr>
            <td colspan="4" 
                
                style="height: 26px; font-family: 'Times New Roman', Times, serif; font-size: large; text-align: center">
                Domain Name Register</td>
        </tr>
        <tr>
            <td style="width: 209px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
            <td style="width: 89px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; text-align: center">
                I want to Register a Domain</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 209px; font-family: 'Times New Roman', Times, serif; font-size: medium">
                <span style="font-family: 'Times New Roman', Times, serif; font-size: medium">
                </span>
            </td>
            <td style="height: 26px; width: 11px; color: #000000">
                <span style="color: #FFFFFF">www</span>.</span></td>
            <td style="height: 26px; width: 89px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <span style="font-family: 'Times New Roman', Times, serif">
                <span style="font-size: medium">
                <span style="font-family: 'Times New Roman', Times, serif">
                <span style="font-size: medium">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>.com</asp:ListItem>
                    <asp:ListItem>.co.in</asp:ListItem>
                    <asp:ListItem>.in</asp:ListItem>
                    <asp:ListItem>.me</asp:ListItem>
                    <asp:ListItem>.uk</asp:ListItem>
                    <asp:ListItem>co.nr</asp:ListItem>
                </asp:DropDownList>
                </span></span></span></span>
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
            <td style="width: 89px; text-align: center">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Search Domain" Width="112px" style="height: 26px" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="#009900" Text="Label" 
                    Visible="False"></asp:Label>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
            <td style="width: 89px">
                <asp:Button ID="Button2" runat="server" Height="26px" onclick="Button2_Click" 
                    Text="Register" Width="114px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Panel>
    </form>
</asp:Content>

