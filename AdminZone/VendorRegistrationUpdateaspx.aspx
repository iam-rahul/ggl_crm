<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="VendorRegistrationUpdateaspx.aspx.cs" Inherits="AdminZone_VendorRegistrationUpdateaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #wrapper {
            width: 1000px;
            height: auto;
            background-color: #b6ff00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Vendor Registration Updates
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <div id="wrapper">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="email_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="gener" HeaderText="gener" SortExpression="gener" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" ReadOnly="True" SortExpression="email_id" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
            <asp:BoundField DataField="mobile_No" HeaderText="mobile_No" SortExpression="mobile_No" />
            <asp:BoundField DataField="Yr_of_Experiance" HeaderText="Yr_of_Experiance" SortExpression="Yr_of_Experiance" />
            <asp:BoundField DataField="contracts_undergo" HeaderText="contracts_undergo" SortExpression="contracts_undergo" />
            <asp:BoundField DataField="photo_id" HeaderText="photo_id" SortExpression="photo_id" />
            <asp:BoundField DataField="id_proof" HeaderText="id_proof" SortExpression="id_proof" />
            <asp:BoundField DataField="passwd" HeaderText="passwd" SortExpression="passwd" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstring %>" DeleteCommand="DELETE FROM [Tbl_VenderRegistration] WHERE [email_id] = @email_id" InsertCommand="INSERT INTO [Tbl_VenderRegistration] ([name], [gener], [email_id], [address], [pincode], [mobile_No], [Yr_of_Experiance], [contracts_undergo], [photo_id], [id_proof], [passwd]) VALUES (@name, @gener, @email_id, @address, @pincode, @mobile_No, @Yr_of_Experiance, @contracts_undergo, @photo_id, @id_proof, @passwd)" ProviderName="<%$ ConnectionStrings:myconstring.ProviderName %>" SelectCommand="SELECT [name], [gener], [email_id], [address], [pincode], [mobile_No], [Yr_of_Experiance], [contracts_undergo], [photo_id], [id_proof], [passwd] FROM [Tbl_VenderRegistration]" UpdateCommand="UPDATE [Tbl_VenderRegistration] SET [name] = @name, [gener] = @gener, [address] = @address, [pincode] = @pincode, [mobile_No] = @mobile_No, [Yr_of_Experiance] = @Yr_of_Experiance, [contracts_undergo] = @contracts_undergo, [photo_id] = @photo_id, [id_proof] = @id_proof, [passwd] = @passwd WHERE [email_id] = @email_id">
        <DeleteParameters>
            <asp:Parameter Name="email_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gener" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="pincode" Type="Decimal" />
            <asp:Parameter Name="mobile_No" Type="Decimal" />
            <asp:Parameter Name="Yr_of_Experiance" Type="String" />
            <asp:Parameter Name="contracts_undergo" Type="String" />
            <asp:Parameter Name="photo_id" Type="String" />
            <asp:Parameter Name="id_proof" Type="String" />
            <asp:Parameter Name="passwd" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gener" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="pincode" Type="Decimal" />
            <asp:Parameter Name="mobile_No" Type="Decimal" />
            <asp:Parameter Name="Yr_of_Experiance" Type="String" />
            <asp:Parameter Name="contracts_undergo" Type="String" />
            <asp:Parameter Name="photo_id" Type="String" />
            <asp:Parameter Name="id_proof" Type="String" />
            <asp:Parameter Name="passwd" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </div>
</asp:Content>

