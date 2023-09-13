<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="userprofile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Height="352px" 
        style="margin-bottom: 267px"><center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical" Width="528px">
            <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" 
                    SortExpression="mobile" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView></center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dynamicConnectionString3 %>" 
            
            
            SelectCommand="SELECT [id], [name], [gender], [mail], [mobile] FROM [signup] WHERE ([name] = @name)">
            <SelectParameters>
                <asp:SessionParameter Name="name" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    </form>
</asp:Content>

