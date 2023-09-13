<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="domainalolocation.aspx.cs" Inherits="domainalolocation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Height="733px">
    <p style="text-align: center; font-family: Tahoma; font-size: medium; color: #000000">
        Hosted Sites<asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
            Height="371px" Width="666px">
            <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="domainname" HeaderText="domainname" 
                    SortExpression="domainname" />
                <asp:BoundField DataField="memory" HeaderText="memory" 
                    SortExpression="memory" />
                <asp:BoundField DataField="createdon" HeaderText="createdon" 
                    SortExpression="createdon" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                <asp:HyperLinkField DataNavigateUrlFields="id,domainname" 
                    DataNavigateUrlFormatString="hostsite.aspx?id={0}&amp;domainname={1}" 
                    HeaderText="Add to VM" Text="Add to VM" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dynamicConnectionString3 %>" 
            
            
            
            SelectCommand="SELECT [id], [domainname], [memory], [createdon], [status] FROM [domain] WHERE ([htmlpath] IS NOT NULL) ORDER BY [id]">
        </asp:SqlDataSource>
        </p>
    </asp:Panel>
    </form>
</asp:Content>

