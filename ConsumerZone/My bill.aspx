<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="My bill.aspx.cs" Inherits="ConsumerZone_My_bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHPageHead" Runat="Server">
    <style>
        #wrapper{
            width: auto;
            margin: 0px auto;
            padding: 20px;
        }
        #innerdiv {
            background-color:rgba(182, 255, 0, 0.70);
            height:600px;
            margin:0px auto;
            width: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" Runat="Server">
    My Bill
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="wrapper">
        <div id="innerdiv">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="bookingNo" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="bookingNo" HeaderText="bookingNo" InsertVisible="False" ReadOnly="True" SortExpression="bookingNo" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gglmainConnectionString %>" SelectCommand="SELECT * FROM [Tbl_GasBooking] WHERE ([UserID] = @UserID) ORDER BY [bookingNo] DESC">
                <SelectParameters>
                    <asp:SessionParameter Name="UserID" SessionField="uid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

    </div>

</asp:Content>

