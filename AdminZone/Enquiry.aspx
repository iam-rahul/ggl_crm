<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="AdminZone_Enquiry" %>

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
    Enquiry Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
 <div id="cover">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="enquiry_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="enquiry_id" HeaderText="enquiry_id" ReadOnly="True" SortExpression="enquiry_id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" SortExpression="Contact_No" />
            <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            <asp:BoundField DataField="Enquiry_DT" HeaderText="Enquiry_DT" SortExpression="Enquiry_DT" />
            <asp:HyperLinkField DataNavigateUrlFields="Email_ID" DataNavigateUrlFormatString="SendEmail.aspx?email={0}" HeaderText="Send Email" Text="Go">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:HyperLinkField>
            <asp:HyperLinkField DataNavigateUrlFields="Contact_No" DataNavigateUrlFormatString="SendSMS.aspx?mobno={0}" HeaderText="Send SMS" Text="Go">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:HyperLinkField>
        </Columns>
         <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstring %>" DeleteCommand="DELETE FROM [Tbl_enquiry] WHERE [enquiry_id] = @enquiry_id" InsertCommand="INSERT INTO [Tbl_enquiry] ([Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (@Name, @Contact_No, @Email_ID, @Message, @Enquiry_DT)" ProviderName="<%$ ConnectionStrings:myconstring.ProviderName %>" SelectCommand="SELECT [enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT] FROM [Tbl_enquiry]" UpdateCommand="UPDATE [Tbl_enquiry] SET [Name] = @Name, [Contact_No] = @Contact_No, [Email_ID] = @Email_ID, [Message] = @Message, [Enquiry_DT] = @Enquiry_DT WHERE [enquiry_id] = @enquiry_id">
    </asp:SqlDataSource>
 </div>
</asp:Content>

