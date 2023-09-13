<%@ Page Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel23" runat="server" Height="521px">
    <script type="text/javascript">

            function isNumericKey(e) {

                var key = e.which ? e.which : e.keyCode;
                //enter key  //backspace //tabkey      //escape key                  
                if ((key >= 48 && key <= 57) || key == 13 || key == 8 || key == 9 || key == 27) {
                    return true;
                }
                else {
                    alert("Please Enter Number Only");
                    return false;
                }

            }
</script>


<script type="text/javascript">
            function iNumericKey(e) {

                var key = e.which ? e.which : e.keyCode;
                //enter key  //backspace //tabkey      //escape key                  
                if ((key >= 48 && key <= 57) || key == 13 || key == 8 || key == 9 || key == 27 || key == 47) {
                    return true;
                }
                else {
                    alert("Please Enter Number Only");
                    return false;
                }

            }
</script>

    <table style="width:917px; height: 518px;">
        <tr>
            <td style="text-align: center; background-color: #3C6B94; color: #FFFFFF; font-size: large;">
                Cloud User Registration</td>
        </tr>
        <tr>
            <td>
                <table style="width:916px; height: 443px;">
                    <tr>
                        <td style="width: 401px; height: 39px;">
                            <asp:Label ID="lblUserName" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="User Name" Width="137px"></asp:Label>
                        </td>
                        <td style="height: 39px;">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 401px">
                            <asp:Label ID="lblPassword" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Password" Width="83px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 401px">
                            <asp:Label ID="lblLimitation0" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Gender" Width="83px"></asp:Label>
                        </td>
                        <td style="text-align: left; ">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="140px">
                                <asp:ListItem Value="--select--"></asp:ListItem>
                                <asp:ListItem Value="Male"></asp:ListItem>
                                <asp:ListItem Value="Female"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <caption>
                        </caption>
                    </tr>
                    <tr>
                        <td style="width: 401px">
                            <asp:Label ID="lbldob" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="DOB" Width="87px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            DD/MM/YY<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 401px">
                            <asp:Label ID="lblAddress0" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Mail Id" Width="83px"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="Invalid Mailid" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                SetFocusOnError="True"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 401px">
                            <asp:Label ID="lblAddress1" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Re-enter Mail Id" Width="106px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                                ErrorMessage="Mismatch" SetFocusOnError="True"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 401px">
                            <asp:Label ID="lblAddress" runat="server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" Text="Mobile No" Width="83px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 401px">
                            &nbsp;</td>
                        <td>
                            &nbsp;
                            <asp:Button ID="btnSubmit" runat="Server" Font-Bold="True" 
                                Font-Names="Palatino Linotype" OnClick="btnSubmit_Click" style="height: 28px" 
                                Text="Submit" Width="75px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input ID="Reset1" 
                                style="width: 74px; font-size: small; font-family: 'Plantagenet Cherokee'; font-weight: bold;" 
                                type="reset" value="Reset" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Panel>
</form>
</asp:Content>

