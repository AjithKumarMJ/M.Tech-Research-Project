
<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="pmconfig.aspx.cs" Inherits="pmconfig" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
 <asp:Panel ID="Panel2" runat="server" Height="607px">
        <table style="width: 100%; height: 176px;">
            <tr>
                <td style="text-align: center; width: 118px; height: 10px;">
                    </td>
                <td colspan="2" 
                    
                    style="text-align: center; font-family: 'Segoe UI Symbol'; font-size: small; height: 10px;">
                    Physical Machine Congifuration</td>
            </tr>
            <tr>
                <td style="width: 118px; height: 16px;">
                    </td>
                <td style="width: 185px; font-family: 'Segoe UI Symbol'; font-size: small; height: 16px;">
                    Choose pm</td>
                <td style="height: 16px">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="pmname" 
                        DataValueField="pmname">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 118px; height: 52px;">
                    </td>
                <td style="width: 185px; font-family: 'Segoe UI Symbol'; font-size: small; height: 52px;">
                </td>
                <td style="height: 52px">
                    <asp:Button ID="Button1" runat="server" Text="submit" Width="78px" 
                        onclick="Button1_Click" 
                        style="font-family: 'Segoe UI Symbol'; font-size: small" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 52px;">
                    <table ID="tblconfig" runat="server" style="width: 693px; height: 317px">
                        <tr>
                            <td style="width: 119px">
                                &nbsp;</td>
                            <td style="width: 185px; font-size: small;">
                                <span style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label1" runat="server" Text="Physical machine name"></asp:Label>
                                </span>
                            </td>
                            <td style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 119px">
                                &nbsp;</td>
                            <td style="width: 185px; font-size: small;">
                                <span style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label3" runat="server" Text="Hard Disk Size"></asp:Label>
                                </span>
                            </td>
                            <td style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                </span>
                                &nbsp;GB</td>
                        </tr>
                        <tr>
                            <td style="width: 119px">
                                &nbsp;</td>
                            <td style="width: 185px; font-size: small;">
                                <span style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label5" runat="server" Text="Cold Threshold"></asp:Label>
                                </span>
                            </td>
                            <td style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                </span>
                                &nbsp;GB</td>
                        </tr>
                        <tr>
                            <td style="width: 119px">
                                &nbsp;</td>
                            <td style="width: 185px; font-size: small;">
                                <span style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label7" runat="server" Text="Hot Threshold"></asp:Label>
                                </span>
                            </td>
                            <td style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                </span>
                                &nbsp;GB</td>
                        </tr>
                        <tr>
                            <td style="width: 119px">
                                &nbsp;</td>
                            <td style="width: 185px; font-size: small;">
                                <span style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label9" runat="server" Text="Processor"></asp:Label>
                                </span>
                            </td>
                            <td style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 119px">
                                &nbsp;</td>
                            <td style="width: 185px">
                                <span style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label11" runat="server" Text="Ram Memory"></asp:Label>
                                </span>
                            </td>
                            <td>
                                <span style="font-family: 'Segoe UI Symbol'; font-size: small">
                                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                &nbsp;GB</span></td>
                        </tr>
                        <tr>
                            <td style="width: 119px; height: 25px;">
                            </td>
                            <td style="width: 185px; height: 25px;">
                            </td>
                            <td style="height: 25px">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>


    </asp:Panel>
</form>
</asp:Content>

