<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="PumpList.aspx.cs" Inherits="AdminZone_PumpList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #wrapper {
            width: 1000px;
            height: auto;
            background-color: #b6ff00;
            padding: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Pump List
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <div id="wrapper">
        <div>
            <table style="width: 80%;">
                <tr>
                    <td>Pump Name</td>
                    <td>
                        <asp:TextBox ID="TxtPName" runat="server" Width="187px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Pump Location</td>
                    <td>
                        <asp:TextBox ID="TxtPLocation" runat="server" Width="187px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Pump Address</td>
                    <td>
                        <asp:TextBox ID="TxtAddress" runat="server" Width="187px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Help Line</td>
                    <td>
                        <asp:TextBox ID="TxtHelpLisne" runat="server" Width="187px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <asp:TextBox ID="TxtCity" runat="server" Width="187px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
        <asp:Button ID="BtnPump" runat="server" Text="Pump List" OnClick="BtnPump_Click" style="margin-left: 167px" Width="250px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="pump_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="pump_id" HeaderText="pump_id" InsertVisible="False" ReadOnly="True" SortExpression="pump_id" />
                    <asp:BoundField DataField="pumpNname" HeaderText="pumpNname" SortExpression="pumpNname" />
                    <asp:BoundField DataField="pumpLocation" HeaderText="pumpLocation" SortExpression="pumpLocation" />
                    <asp:BoundField DataField="pumpAddress" HeaderText="pumpAddress" SortExpression="pumpAddress" />
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
        <br />
        <br />
        <br />
        </div>

    </div>
</asp:Content>

