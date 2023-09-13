<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="sitestatus.aspx.cs" Inherits="sitestatus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Height="583px">
       <center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
               CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
               GridLines="Horizontal">
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
           </Columns>
           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
           <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
           <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        </asp:GridView></center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dynamicConnectionString3 %>" 
            
            
            
            SelectCommand="SELECT id, domainname, memory, createdon, status FROM domain ORDER BY id">
        </asp:SqlDataSource>
    </asp:Panel>
    </form>
</asp:Content>

