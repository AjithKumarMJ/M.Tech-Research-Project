<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="vmstatus.aspx.cs" Inherits="vmstatus" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" Height="347px">
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" 
                Height="346px" Width="698px">
                <Titles>
                    <asp:Title Name="virtual machine">
                    </asp:Title>
                    <asp:Title Name="count">
                    </asp:Title>
                </Titles>
                <Series>
                    <asp:Series Name="Series1" XValueMember="vm" YValueMembers="hitcount">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:dynamicConnectionString3 %>" 
                
                SelectCommand="SELECT DISTINCT [vm], [hitcount] FROM [domain] WHERE ([vm] &lt;&gt; @vm)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="&quot;&quot;" Name="vm" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
</asp:Content>

