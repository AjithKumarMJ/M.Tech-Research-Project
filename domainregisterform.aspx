<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="domainregisterform.aspx.cs" Inherits="domainregisterform" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Width="693px">
    <table style="width:652px; height: 443px;">
        <tr>
            <td style="width: 401px; height: 39px;">
                <asp:Label ID="lblUserName" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="User Name" Width="137px"></asp:Label>
            </td>
            <td style="width: 383px; height: 39px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="height: 39px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 401px">
                <asp:Label ID="lblPassword" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Domain Name" Width="83px"></asp:Label>
            </td>
            <td style="width: 383px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 401px">
                <asp:Label ID="lblLimitation0" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="SLA Plan" Width="83px"></asp:Label>
            </td>
            <td style="text-align: left; width: 383px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="148px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>3 Month</asp:ListItem>
                    <asp:ListItem>6 Month</asp:ListItem>
                    <asp:ListItem>1 Year</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
            </td>
            <caption>
            </caption>
             <caption>
            </caption>
        </tr>
        <tr>
            <td style="width: 401px">
                <asp:Label ID="lbldob" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Choose Memory" 
                    Width="111px"></asp:Label>
            </td>
            <td style="width: 383px">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="18px" Width="148px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="10 ">10 Kb</asp:ListItem>
                    <asp:ListItem Value="20 ">20 KB</asp:ListItem>
                    <asp:ListItem Value="30 ">30 Kb</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 401px">
                <asp:Label ID="lblAddress0" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Street Address" 
                    Width="83px"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 383px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 401px">
                <asp:Label ID="lblAddress1" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="City" Width="106px"></asp:Label>
            </td>
            <td style="width: 383px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 401px">
                <asp:Label ID="lblcountry" runat="server" Font-Bold="True" 
                    Font-Names="Palatino Linotype" Text="Country" Width="106px"></asp:Label>
            </td>
            <td style="width: 383px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 401px">
                <asp:Label ID="lblAddress" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Mobile No" Width="83px"></asp:Label>
            </td>
            <td style="width: 383px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 401px">
                &nbsp;</td>
            <td style="width: 383px">
                <asp:Button ID="btnSubmit" runat="Server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" OnClick="btnSubmit_Click" style="height: 28px" 
                                Text="Submit" Width="75px" />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                    Font-Names="Palatino Linotype" onclick="Button1_Click" Text="cancel" 
                    Width="71px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 401px">
                &nbsp;</td>
            <td style="width: 383px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 401px">
                &nbsp;</td>
            <td style="width: 383px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 401px; text-align: center;">
                &nbsp;</td>
            <td style="width: 383px">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Panel>
    </form>
</asp:Content>

