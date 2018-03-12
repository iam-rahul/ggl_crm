<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="complain.aspx.cs" Inherits="AdminZone_complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #wrapper {
            width: 1000px;
            height: auto;
            background-color: #b6ff00;
            margin: 0px auto;
        }
        .divo {
            margin: 5px auto;
            border: solid black 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Complain Details
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <div id="wrapper">
        <div id="first" class="divo"><h2>Consumer complains</h2>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="complain_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="complain_ID" HeaderText="complain_ID" ReadOnly="True" SortExpression="complain_ID" />
                    <asp:BoundField DataField="user_ID" HeaderText="user_ID" SortExpression="user_ID" />
                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                    <asp:BoundField DataField="detail" HeaderText="detail" SortExpression="detail" />
                    <asp:BoundField DataField="complainDT" HeaderText="complainDT" SortExpression="complainDT" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstring %>" DeleteCommand="DELETE FROM [Tbl_Complain] WHERE [complain_ID] = @complain_ID" InsertCommand="INSERT INTO [Tbl_Complain] ([user_ID], [subject], [detail], [complainDT], [status]) VALUES (@user_ID, @subject, @detail, @complainDT, @status)" ProviderName="<%$ ConnectionStrings:myconstring.ProviderName %>" SelectCommand="SELECT [complain_ID], [user_ID], [subject], [detail], [complainDT], [status] FROM [Tbl_Complain]" UpdateCommand="UPDATE [Tbl_Complain] SET [user_ID] = @user_ID, [subject] = @subject, [detail] = @detail, [complainDT] = @complainDT, [status] = @status WHERE [complain_ID] = @complain_ID">
                <DeleteParameters>
                    <asp:Parameter Name="complain_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_ID" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="detail" Type="String" />
                    <asp:Parameter Name="complainDT" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_ID" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="detail" Type="String" />
                    <asp:Parameter Name="complainDT" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="complain_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br /><hr />

        </div>
        <div id="second" class="divo"><h2>Vendor complains</h2>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="complain_ID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="complain_ID" HeaderText="complain_ID" ReadOnly="True" SortExpression="complain_ID" />
                    <asp:BoundField DataField="user_ID" HeaderText="user_ID" SortExpression="user_ID" />
                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                    <asp:BoundField DataField="detail" HeaderText="detail" SortExpression="detail" />
                    <asp:BoundField DataField="complainDT" HeaderText="complainDT" SortExpression="complainDT" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myconstring %>" DeleteCommand="DELETE FROM [Tbl_vendorComplain] WHERE [complain_ID] = @complain_ID" InsertCommand="INSERT INTO [Tbl_vendorComplain] ([user_ID], [subject], [detail], [complainDT], [status]) VALUES (@user_ID, @subject, @detail, @complainDT, @status)" ProviderName="<%$ ConnectionStrings:myconstring.ProviderName %>" SelectCommand="SELECT [complain_ID], [user_ID], [subject], [detail], [complainDT], [status] FROM [Tbl_vendorComplain]" UpdateCommand="UPDATE [Tbl_vendorComplain] SET [user_ID] = @user_ID, [subject] = @subject, [detail] = @detail, [complainDT] = @complainDT, [status] = @status WHERE [complain_ID] = @complain_ID">
                <DeleteParameters>
                    <asp:Parameter Name="complain_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_ID" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="detail" Type="String" />
                    <asp:Parameter Name="complainDT" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_ID" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="detail" Type="String" />
                    <asp:Parameter Name="complainDT" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="complain_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br /><hr />

        </div>
    </div>
</asp:Content>

