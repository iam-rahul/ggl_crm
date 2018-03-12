<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="PumpLists.aspx.cs" Inherits="ConsumerZone_PumpLists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHPageHead" Runat="Server">
    <style>
        #wrapper {
            width: 600px;
            min-height: 300px;
            height: auto;
            border: solid black 1px;
            padding:20px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" Runat="Server">
    Pump List
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="wrapper">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="Horizontal" Width="100%" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="pump_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="pump_id" HeaderText="pump_id" InsertVisible="False" ReadOnly="True" SortExpression="pump_id" />
                                <asp:BoundField DataField="pumpNname" HeaderText="pumpNname" SortExpression="pumpNname" />
                                <asp:BoundField DataField="pumpLocation" HeaderText="pumpLocation" SortExpression="pumpLocation" />
                                <asp:BoundField DataField="pumpAddress" HeaderText="pumpAddress" SortExpression="pumpAddress" />
                                <asp:BoundField DataField="helpLine" HeaderText="helpLine" SortExpression="helpLine" />
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gglmainConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Tbl_PumpList] ORDER BY [pump_id] DESC"></asp:SqlDataSource>
        <br />
</div>
</asp:Content>

