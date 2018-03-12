<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="SendEmail.aspx.cs" Inherits="AdminZone_SendEmail" %>

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
    send Email
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <div>
        <table style="width: 80%; background-color:rgba(228, 155, 5, 0.81); border:solid black 2px; box-shadow:#0c0b0b 0px 0px 30px 5px; margin-left:150px;">
            <tr>
                <td class="auto-style1">Send To :</td>
                <td>
                    <asp:TextBox ID="TxtSendTo" runat="server" Width="300px" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Subject :</td>
                <td>
                    <asp:TextBox ID="TxtSubject" runat="server" Width="300px"  CssClass="auto-style2"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Message :</td>
                <td>
                    <asp:TextBox ID="TxtMsg" runat="server" Width="300px"  CssClass="auto-style2" Height="100px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td </td>
                <td>
                    
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Send Mail" Width="330px" CssClass="btnSend" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

