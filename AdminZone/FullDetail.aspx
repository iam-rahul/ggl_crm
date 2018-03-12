<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="FullDetail.aspx.cs" Inherits="AdminZone_FullDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        body {
            background-color: rgba(160, 237, 99, 0.64);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Full Detail
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <table id="tbl1">
    <tr>
        <td>Email ID: <asp:Label ID="LblEmail" runat ="server" />
            <br /><br />
        </td>
        <td><asp:Image ID="Imgprofile" runat="server" Width="130px" Height="140px" BorderWidth="2px" BorderStyle="Double" BorderColor="Navy"/></td>
    </tr>
    <tr>
        <td>Name: </td>
        <td><asp:TextBox ID="TxtName" runat ="server" /></td>
    </tr>
     <tr>
        <td>Gender: </td>
        <td><asp:RadioButton ID="RdbMale" runat ="server" GroupName="a" Text="Male" />
            <asp:RadioButton ID="RdbFemale" runat ="server" GroupName="a" Text="Female" />
        </td>
    </tr>
    <tr>
        <td>Connection Type:</td>
        <td><asp:DropDownList ID="DdlConType" runat ="server" >
            <asp:ListItem Value="">--Select--</asp:ListItem>
            <asp:ListItem>CNG Connection</asp:ListItem>
            <asp:ListItem>PNG Connection</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
    <tr>
        <td>Address: </td>
        <td><asp:TextBox ID="TxtAddress" runat ="server" TextMode="MultiLine" /></td>
    </tr>
    <tr>
        <td>State:</td>
        <td>
            <asp:DropDownList ID="DdlState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlState_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>City:</td>
        <td>
            <asp:DropDownList ID="DdlCity" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>Pin Code:</td>
        <td>
            <asp:TextBox ID="TxtPinCode" runat="server" TextMode="Number"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mobile No:</td>
        <td>
            <asp:TextBox ID="TxtMobNo" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Consumer Joined us on-</td>
        <td>
            <asp:Label ID="LblJoinDate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
   </table>
</asp:Content>

