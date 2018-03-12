<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="NotificationMgmt.aspx.cs" Inherits="AdminZone_NotificationMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        body {
            background-color: rgba(160, 237, 99, 0.64);
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Notification Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <div>
        <asp:TextBox ID="TxtMessage" runat="server" Height="27px" Width="302px"></asp:TextBox>
        <br />
        <asp:Button ID="Btn" runat="server" Text="Add Notification" OnClick="Btn_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="notification_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="notification_ID" HeaderText="notification_ID" InsertVisible="False" ReadOnly="True" SortExpression="notification_ID" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gglmainConnectionString %>" DeleteCommand="DELETE FROM [Tbl_Notification] WHERE [notification_ID] = @notification_ID" InsertCommand="INSERT INTO [Tbl_Notification] ([message]) VALUES (@message)" SelectCommand="SELECT [notification_ID], [message] FROM [Tbl_Notification] ORDER BY [notification_ID] DESC" UpdateCommand="UPDATE [Tbl_Notification] SET [message] = @message WHERE [notification_ID] = @notification_ID">
            <DeleteParameters>
                <asp:Parameter Name="notification_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="message" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="notification_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

