<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="hostsite.aspx.cs" Inherits="hostsitet" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<asp:Panel ID="Panel2" runat="server" Height="370px">
        <table style="width: 100%">
            <tr>
                <td colspan="2" 
                    style="font-size: medium; color: #222222; text-align: center; height: 22px;">
                    Hosted site</td>
            </tr>
            <tr>
                <td style="width: 337px; font-size: medium; color: #222222">
                    <span style="color: #FFFFFF"><b>S</b></span><span 
                        style="color: #FFFFFF; font-weight: 700">ite Name</span></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 337px; font-size: medium; color: #FFFFFF; height: 61px;">
                    <b>Add Physical machine </b>
                </td>
                <td style="height: 61px">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        Height="22px" onselectedindexchanged="DropDownList2_SelectedIndexChanged1" 
                        Width="117px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 337px; font-size: medium; color: #FFFFFF">
                    <b>Add Virtual machine </b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        Height="18px" Width="120px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 337px; height: 49px">
                </td>
                <td style="height: 49px">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Host" 
                        Width="100px" style="height: 26px; margin-top: 0px;" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</asp:Content>

