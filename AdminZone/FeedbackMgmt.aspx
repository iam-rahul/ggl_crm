<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="FeedbackMgmt.aspx.cs" Inherits="AdminZone_FeedbackMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            background-color: rgba(160, 237, 99, 0.64);
        }
        #cover {
            width: auto;
            height: 900px;
            border: solid black 1px;
            margin: 5px auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Feedback Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
<div id="cover">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="feedbackID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="feedbackID" HeaderText="feedbackID" ReadOnly="True" SortExpression="feedbackID" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
            <asp:BoundField DataField="feedbackDT" HeaderText="feedbackDT" SortExpression="feedbackDT" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstring %>" DeleteCommand="DELETE FROM [Tbl_feedback] WHERE [feedbackID] = @feedbackID" InsertCommand="INSERT INTO [Tbl_feedback] ([user_id], [message], [feedbackDT]) VALUES (@user_id, @message, @feedbackDT)" ProviderName="<%$ ConnectionStrings:myconstring.ProviderName %>" SelectCommand="SELECT [feedbackID], [user_id], [message], [feedbackDT] FROM [Tbl_feedback]" UpdateCommand="UPDATE [Tbl_feedback] SET [user_id] = @user_id, [message] = @message, [feedbackDT] = @feedbackDT WHERE [feedbackID] = @feedbackID">
        <DeleteParameters>
            <asp:Parameter Name="feedbackID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="feedbackDT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="feedbackDT" Type="String" />
            <asp:Parameter Name="feedbackID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

