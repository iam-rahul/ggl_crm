<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="SendSMS.aspx.cs" Inherits="AdminZone_SendSMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        body {
            background-color: rgba(160, 237, 99, 0.64);
        }
         .auto-style1 {
             width: 230px;
             font-family: 'Century Gothic';
             font-size: 20px;
             text-align:center;
         }
         .auto-style2 {
             border: solid rgba(5, 134, 5, 0.90) 1px;
             border-radius: 15px;
             padding:2px 20px;
             font-family: 'Century Gothic';
             font-size: 20px;
         }
         .btnSend {
             background-color: rgba(5, 134, 5, 0.90);
             color: white;
             font-weight: bold;
             font-family: 'Century Gothic';
             font-size: 20px;
             height:35px;
             border-radius:10px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    send SMS
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <table style="width: 700px; background-color:rgba(219, 156, 6, 0.89); border:solid green 2px; box-shadow:#0c0b0b 0px 0px 30px 5px; margin-left:175px;">
        <tr>
            <td class="auto-style1">Mobile No:-</td>
            <td>
                <asp:TextBox ID="TxtMobNo" runat="server" Width="350px" Height="40px" TextMode="Number" CssClass="auto-style2"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Message:-</td>
            <td>
                <asp:TextBox ID="TxtMessage" runat="server" Width="350px" Height="100px" CssClass="auto-style2"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="BtnSend" runat="server" Text="Send" Width="350px" OnClick="BtnSend_Click" CssClass="btnSend" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

