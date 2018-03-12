<%@ Page Title="" Language="C#" MasterPageFile="~/VenderZone/VendorMasterPage.master" AutoEventWireup="true" CodeFile="ApplyForTender.aspx.cs" Inherits="VenderZone_ApplyForTender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #wrapper {
            width: 700px;
            height: auto;
            border: solid black 1px;
            padding: 10px;
            background-color: silver;
        }
        .auto-style1 {
            width: 150px;
            font-size: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" Runat="Server">
    Register for Tender
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="wrapper">
        <table style="width: 80%; background-color:rgba(231, 241, 225, 0.52); box-shadow: 0px 0px 20px 5px; margin: 10px auto; ">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Vendor Name</td>
                <td>
                    <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">User ID</td>
                <td>
                    <asp:Label ID="LblUID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;Tenders</td>
                <td>
                    <asp:DropDownList ID="DdlTender" runat="server">
                        <asp:ListItem>---select---</asp:ListItem>
                        <asp:ListItem>Aliganj CNG Pump</asp:ListItem>
                        <asp:ListItem>Hajarat ganj CNG Pump</asp:ListItem>
                        <asp:ListItem>GAIL PNG Work</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Work Experiance</td>
                <td>
                    <asp:TextBox ID="TxtWorkExp" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Amount at </td>
                <td>
                    <asp:TextBox ID="TxtAmount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="BtnSubmit" runat="server" style="margin-left: 91px" Text="Apply" Width="303px" OnClick="BtnSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

