<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
  <asp:Panel ID="Panel2" runat="server" Width="693px">
        <script type="text/javascript">

            function isNumericKey(e) {

                var key = e.which ? e.which : e.keyCode;
                //enter key  //backspace //tabkey      //escape key                  
                if ((key >= 48 && key <= 57) || key == 13 || key == 8 || key == 9 || key == 27||key==47) {
                    return true;
                }
                else {
                    alert("Please Enter Number Only");
                    return false;
                }

            }
</script>

        <table style="width:652px; height: 443px;">
            <tr>
                <td style="width: 401px; height: 39px;">
                    <asp:Label ID="lblUserName" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Web hosting plan" 
                        Width="137px"></asp:Label>
                </td>
                <td style="width: 383px; height: 39px;">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="--select--"></asp:ListItem>
                        <asp:ListItem>3000 Rupees</asp:ListItem>
                        <asp:ListItem Value="2000 Rupees"></asp:ListItem>
                        <asp:ListItem Value="1000 Rupees"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 39px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 401px">
                    <asp:Label ID="lblPassword" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Domain Name" Width="83px"></asp:Label>
                </td>
                <td style="width: 383px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 401px">
                    <asp:Label ID="lblLimitation0" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Payment Type" Width="83px"></asp:Label>
                </td>
                <td style="text-align: left; width: 383px;">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="16px">
                        <asp:ListItem Value="--select--">--select--</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
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
                                Font-Names="Palatino Linotype" Text="card number" 
                    Width="111px"></asp:Label>
                </td>
                <td style="width: 383px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 401px">
                    <asp:Label ID="lblAddress0" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="card expire date (mm/yy)" 
                    Width="165px"></asp:Label>
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
                                Font-Names="Palatino Linotype" Text="CVV2/CID" Width="106px"></asp:Label>
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
                &nbsp;</td>
                <td style="width: 383px">
                    <asp:Button ID="btnSubmit" runat="Server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" OnClick="btnSubmit_Click" style="height: 28px" 
                                Text="Submit" Width="75px" />
                    &nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True" 
                        Font-Names="Palatino Linotype" onclick="Button1_Click" Text="cancel" 
                        Width="71px" CausesValidation="false" />
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

