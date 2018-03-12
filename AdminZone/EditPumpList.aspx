<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="EditPumpList.aspx.cs" Inherits="AdminZone_EditPumpList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #wrapper {
            width: 650px;
            min-height: 600px;
            height:auto;
            border: solid black 1px;
            overflow: scroll;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Edit Pump List
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <div id="wrapper">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="pump_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="pump_id" HeaderText="pump_id" ReadOnly="True" SortExpression="pump_id" />
                <asp:BoundField DataField="pumpNname" HeaderText="pumpNname" SortExpression="pumpNname" />
                <asp:BoundField DataField="pumpLlocation" HeaderText="pumpLlocation" SortExpression="pumpLlocation" />
                <asp:BoundField DataField="pumpAaddress" HeaderText="pumpAaddress" SortExpression="pumpAaddress" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gglmainConnectionString %>" SelectCommand="SELECT * FROM [Tbl_PumpList] ORDER BY [pump_id] DESC"></asp:SqlDataSource>
    </div>
</asp:Content>

