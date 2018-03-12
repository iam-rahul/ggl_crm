<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="GasbookingUpdates.aspx.cs" Inherits="AdminZone_GasbookingUpdates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Gas Booking Updates
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <div style="margin:0px auto;">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="bookingNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="bookingNo" HeaderText="bookingNo" ReadOnly="True" SortExpression="bookingNo" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                <asp:BoundField DataField="bookingDate" HeaderText="bookingDate" SortExpression="bookingDate" />
                <asp:BoundField DataField="ApxDelivaryDate" HeaderText="ApxDelivaryDate" SortExpression="ApxDelivaryDate" />
                <asp:BoundField DataField="GasType" HeaderText="GasType" SortExpression="GasType" />
                <asp:BoundField DataField="GasQuantity" HeaderText="GasQuantity" SortExpression="GasQuantity" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="atatus" HeaderText="atatus" SortExpression="atatus" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstring %>" DeleteCommand="DELETE FROM [Tbl_GasBooking] WHERE [bookingNo] = @bookingNo" InsertCommand="INSERT INTO [Tbl_GasBooking] ([UserID], [bookingDate], [ApxDelivaryDate], [GasType], [GasQuantity], [Amount], [atatus]) VALUES (@UserID, @bookingDate, @ApxDelivaryDate, @GasType, @GasQuantity, @Amount, @atatus)" ProviderName="<%$ ConnectionStrings:myconstring.ProviderName %>" SelectCommand="SELECT [bookingNo], [UserID], [bookingDate], [ApxDelivaryDate], [GasType], [GasQuantity], [Amount], [atatus] FROM [Tbl_GasBooking]" UpdateCommand="UPDATE [Tbl_GasBooking] SET [UserID] = @UserID, [bookingDate] = @bookingDate, [ApxDelivaryDate] = @ApxDelivaryDate, [GasType] = @GasType, [GasQuantity] = @GasQuantity, [Amount] = @Amount, [atatus] = @atatus WHERE [bookingNo] = @bookingNo">
            <DeleteParameters>
                <asp:Parameter Name="bookingNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserID" Type="String" />
                <asp:Parameter Name="bookingDate" Type="String" />
                <asp:Parameter Name="ApxDelivaryDate" Type="String" />
                <asp:Parameter Name="GasType" Type="String" />
                <asp:Parameter Name="GasQuantity" Type="String" />
                <asp:Parameter Name="Amount" Type="Double" />
                <asp:Parameter Name="atatus" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserID" Type="String" />
                <asp:Parameter Name="bookingDate" Type="String" />
                <asp:Parameter Name="ApxDelivaryDate" Type="String" />
                <asp:Parameter Name="GasType" Type="String" />
                <asp:Parameter Name="GasQuantity" Type="String" />
                <asp:Parameter Name="Amount" Type="Double" />
                <asp:Parameter Name="atatus" Type="String" />
                <asp:Parameter Name="bookingNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

