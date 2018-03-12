<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ConsumerZone_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHPageHead" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            margin: 100px auto;
            background-color: #bdef40;
            color: white;
            font-size: x-large;
            padding: 15px;
            border-radius: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" runat="Server">
    Change Password
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Old Password:</td>
            <td>
                <asp:TextBox ID="TxtOldPass" required="required" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>New Password:</td>
            <td>
                <asp:TextBox ID="TxtNewPass" required="required" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Confirm New Password:</td>
            <td>
                <asp:TextBox ID="TxtCNewPass" required="required" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnChange" runat="server" Text="Change Password" OnClick="BtnChange_Click" />
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNewPass" ControlToValidate="TxtCNewPass" ErrorMessage="Password not match." ForeColor="#990000"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
