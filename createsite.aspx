<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="createsite.aspx.cs" Inherits="createsite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
 <table style="width: 100%; height: 241px;">
            <tr>
                <td 
                    
                    style="height: 26px; font-size: medium; color: #000000; text-align: center; width: 176px;">
                    &nbsp;</td>
                <td colspan="2" 
                    style="height: 26px; font-size: medium; text-align: center;">
                    Create site</td>
            </tr>
            <tr>
                <td style="width: 176px; font-size: small; color: #000000;">
                    &nbsp;</td>
                <td style="width: 187px; font-size: small; ">
                    Site Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 176px; font-size: small; color: #000000;">
                    &nbsp;</td>
                <td style="width: 187px; font-size: small; ">
                    Browse File</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    &nbsp;<span 
                        style="font-size: medium; border-left-color: #A0A0A0; border-right-color: #C0C0C0; border-top-color: #A0A0A0; border-bottom-color: #C0C0C0; padding: 1px">upload 
                    only html files</span></td>
            </tr>
            <tr>
                <td style="width: 176px">
                    &nbsp;</td>
                <td style="width: 187px">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" 
                        Height="26px" />
                    &nbsp;&nbsp;
                    <asp:Label ID="statuslabel" runat="server" Text="Label" 
                        style="font-size: medium"></asp:Label>
                </td>
            </tr>
        </table>
</form>
</asp:Content>

