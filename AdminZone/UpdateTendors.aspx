
<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateTendors.aspx.cs" Inherits="AdminZone_UpdateTendors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #wrapper {
            width: 700px;
            height: 700px;
            border: solid black 1px;
            overflow: scroll;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Update Tendors
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <div id="wrapper">
        Heading:
        <asp:TextBox ID="TxtHeading" runat="server" placeholder="Tendor Subject" Height="27px" Width="526px"></asp:TextBox>
        <br />
        <br />
        <br />
        Detail:
        <asp:TextBox ID="TxtDetails" runat="server"  placeholder="Tendor Details" Height="27px" Width="526px"></asp:TextBox>
        <br />
        <asp:Button ID="Btn" runat="server" Text="Add Notification" OnClick="Btn_Click" />
        <br />
        <br />


        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="tendorID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="tendorID" HeaderText="tendorID" ReadOnly="True" SortExpression="tendorID" />
                <asp:BoundField DataField="tendorHeading" HeaderText="tendorHeading" SortExpression="tendorHeading" />
                <asp:BoundField DataField="tendorDetails" HeaderText="tendorDetails" SortExpression="tendorDetails" />
                <asp:BoundField DataField="tendorUDT" HeaderText="tendorUDT" SortExpression="tendorUDT" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstring %>" DeleteCommand="DELETE FROM [Tbl_Tendor] WHERE [tendorID] = @tendorID" InsertCommand="INSERT INTO [Tbl_Tendor] ([tendorHeading], [tendorDetails], [tendorUDT]) VALUES (@tendorHeading, @tendorDetails, @tendorUDT)" ProviderName="<%$ ConnectionStrings:myconstring.ProviderName %>" SelectCommand="SELECT [tendorID], [tendorHeading], [tendorDetails], [tendorUDT] FROM [Tbl_Tendor]" UpdateCommand="UPDATE [Tbl_Tendor] SET [tendorHeading] = @tendorHeading, [tendorDetails] = @tendorDetails, [tendorUDT] = @tendorUDT WHERE [tendorID] = @tendorID">
            <DeleteParameters>
                <asp:Parameter Name="tendorID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tendorHeading" Type="String" />
                <asp:Parameter Name="tendorDetails" Type="String" />
                <asp:Parameter Name="tendorUDT" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tendorHeading" Type="String" />
                <asp:Parameter Name="tendorDetails" Type="String" />
                <asp:Parameter Name="tendorUDT" Type="String" />
                <asp:Parameter Name="tendorID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </div>
</asp:Content>

