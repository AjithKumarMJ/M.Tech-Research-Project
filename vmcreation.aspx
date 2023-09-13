<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="vmcreation.aspx.cs" Inherits="vmcreation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
 <asp:Panel ID="Panel2" runat="server" Height="404px">
        <table style="width: 100%; height: 399px;">
            <tr>
                <td colspan="2" 
                    
                    style="height: 73px; text-align: center; font-size: medium; color: #000000">
                    Create Virtual Machhine</td>
            </tr>
            <tr>
                <td style="width: 313px; height: 56px">
                    Enter the Virtual machine Name</td>
                <td style="height: 56px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px; text-align: left">
                    Size</td>
                <td style="height: 40px; text-align: left">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="135px" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>choose</asp:ListItem>
                        <asp:ListItem Value="50">small 50GB</asp:ListItem>
                        <asp:ListItem Value="100">medium 100GB</asp:ListItem>
                        <asp:ListItem Value="150">large 150GB</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="height: 40px; text-align: left">
                    Choose PM</td>
                <td style="height: 40px; text-align: left">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="pmname" DataValueField="pmname" 
                        Height="16px" Width="135px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:dynamicConnectionString3 %>" 
                        SelectCommand="SELECT [pmname] FROM [pm]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 313px; height: 65px;">
                    </td>
                <td style="height: 65px">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="height: 26px" Text="Create" Width="74px" />
                </td>
            </tr>
            <tr>
                <td style="width: 313px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</asp:Content>

