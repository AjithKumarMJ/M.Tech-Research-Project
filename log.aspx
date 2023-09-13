<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="log.aspx.cs" Inherits="log" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
 <asp:Panel ID="Panel2" runat="server" Height="425px">
    <p style="text-align: center; font-size: medium" align="center">Migration History
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
            GridLines="Horizontal" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="migratefrom" HeaderText="migratefrom" 
                SortExpression="migratefrom" />
            <asp:BoundField DataField="migrateinto" HeaderText="migrateinto" 
                SortExpression="migrateinto" />
            <asp:BoundField DataField="createdon" HeaderText="createdon" 
                SortExpression="createdon" />
            <asp:BoundField DataField="reason" HeaderText="reason" 
                SortExpression="reason" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:BoundField DataField="vmname" HeaderText="vmname" 
                SortExpression="vmname" />
        </Columns>
      
       
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dynamicConnectionString3 %>" 
            SelectCommand="SELECT * FROM [log]"></asp:SqlDataSource>
        </p>
    </asp:Panel>
    </form>
</asp:Content>

