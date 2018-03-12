<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="StudentMgmt.aspx.cs" Inherits="AdminZone_StudentMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Consumer Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Emailid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ConType" HeaderText="ConType" SortExpression="ConType" />
            <asp:BoundField DataField="Emailid" HeaderText="Emailid" ReadOnly="True" SortExpression="Emailid" />
            <asp:BoundField DataField="PinCode" HeaderText="PinCode" SortExpression="PinCode" />
            <asp:BoundField DataField="RegDT" HeaderText="RegDT" SortExpression="RegDT" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
            <asp:HyperLinkField DataNavigateUrlFields="Emailid" DataNavigateUrlFormatString="FullDetail.aspx?email={0}" HeaderText="Full Detail" Text="View" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IT_16_ProjectDBConnectionString %>" DeleteCommand="DELETE FROM [Tbl_Registration] WHERE [Emailid] = @Emailid" InsertCommand="INSERT INTO [Tbl_Registration] ([Name], [ConType], [Emailid], [PinCode], [RegDT], [MobileNo]) VALUES (@Name, @ConType, @Emailid, @PinCode, @RegDT, @MobileNo)" SelectCommand="SELECT [Name], [ConType], [Emailid], [PinCode], [RegDT], [MobileNo] FROM [Tbl_Registration]" UpdateCommand="UPDATE [Tbl_Registration] SET [Name] = @Name, [ConType] = @ConType, [PinCode] = @PinCode, [RegDT] = @RegDT, [MobileNo] = @MobileNo WHERE [Emailid] = @Emailid">
        <DeleteParameters>
            <asp:Parameter Name="Emailid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ConType" Type="String" />
            <asp:Parameter Name="Emailid" Type="String" />
            <asp:Parameter Name="PinCode" Type="Int32" />
            <asp:Parameter Name="RegDT" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ConType" Type="String" />
            <asp:Parameter Name="PinCode" Type="Int32" />
            <asp:Parameter Name="RegDT" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="Emailid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

