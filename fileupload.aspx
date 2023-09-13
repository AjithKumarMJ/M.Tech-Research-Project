<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="fileupload.aspx.cs" Inherits="fileupload" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
    <table style="width: 100%" bgcolor="Black">
    <tr>
        <td style="text-align: center;" bgcolor="Black" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; font-size: medium; width: 337px; height: 21px;">
            <b>User Name :</b></td>
        <td style="text-align: left; height: 21px;">
            <asp:Label ID="Label5" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 337px;">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Subject :"></asp:Label>
        </td>
        <td style="text-align: left;">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="129px">
                <asp:ListItem>----Select----</asp:ListItem>
                <asp:ListItem Value="General"></asp:ListItem>
                <asp:ListItem Value="Reference"></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 337px;">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Upload Medical Details :"></asp:Label>
        </td>
        <td style="text-align: left;">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="text-align: center;" bgcolor="Black" colspan="2">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                onclick="Button1_Click" Text="SUBMIT"  />
            <asp:Label ID="Lbl_msg" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

