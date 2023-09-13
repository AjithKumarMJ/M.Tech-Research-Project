<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="userdetails.aspx.cs" Inherits="userdetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <table style="width: 100%">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-size: x-large">
                <b>User Details</b></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                    ForeColor="Black" GridLines="Vertical" Height="157px" Width="541px">
                    <RowStyle BackColor="#F7F7DE" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                        <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" 
                            SortExpression="mobile" />
                         <asp:BoundField DataField="mobile" HeaderText="mobile" 
                            SortExpression="mobile" />
                         <asp:BoundField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                         
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:dynamicConnectionString3 %>" 
                    
                    SelectCommand="SELECT [id], [name], [gender], [dob], [mail], [mobile],Status FROM [signup]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>

</asp:Content>

