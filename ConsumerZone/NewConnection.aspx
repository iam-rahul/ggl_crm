<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="NewConnection.aspx.cs" Inherits="ConsumerZone_NewConnection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHPageHead" Runat="Server">
    <style>
        #wrapper{
            width: auto;
            margin: 0px auto;
            padding: 20px;
        }
        #innerdiv {
            background-color:rgba(182, 255, 0, 0.70);
            height:600px;
            margin:0px auto;
            width: 600px;
        }
        
        .auto-style1 {
            width: 210px;
            text-align: center;
            font-size: 20px;
        }
        .text {
            border: none;
            width: 250px;
            padding: 5px 20px;
            display: block;
            height: 26px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.70);
            border: 2px solid rgba(255, 255, 255,10);
            overflow: hidden;
            margin-top: 5px;
            transition: all 0.5s ease-in-out;
        }

            .text:focus {
                outline: 0;
                border: 2px solid rgba(255, 255, 255, 0.5);
                border-radius: 20px;
                background: rgba(255, 255, 255, 0.50);
            }

                .text:focus + span {
                    opacity: 0.6;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" Runat="Server">
    New Connection
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="wrapper">
        <div id="innerdiv">
            <table style="width:95%; background-color:rgba(243, 233, 224, 0.66); box-shadow:0px 0px 20px 3px #0e0909; margin:20px auto; border:solid black 1px;">
             <tr><td class="auto-style1" colspan="2">&nbsp;</td></tr>
             <tr><td class="auto-style1">Connection  </td><td>   
                 <asp:DropDownList ID="DdlGasType" runat="server"  CssClass="text">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem >CNG</asp:ListItem>
                    <asp:ListItem>PNG</asp:ListItem>
                </asp:DropDownList>    </td></tr>
             <tr><td class="auto-style1">From Month</td>            <td><asp:TextBox ID="TxtBokingMonth" TextMode="Month" runat="server" CssClass="text"></asp:TextBox></td></tr>
            <tr><td class="auto-style1">Postal Address</td>            <td><asp:TextBox ID="TxtPAddress" runat="server" CssClass="text"></asp:TextBox></td></tr>
             <tr><td class="auto-style1">Mobile Nubmer</td><td>               <asp:TextBox ID="TxtMobNo" TextMode="Number" runat="server" CssClass="text"></asp:TextBox></td></tr>
             <tr><td class="auto-style1" colspan="2">&nbsp;</td></tr>
             <tr><td class="auto-style1" colspan="2">    <asp:Button ID="BtnBook" runat="server" BackColor="LawnGreen" Text="Take Connection" Height="35px" style="margin-left: 155px" Width="242px" OnClick="BtnBook_Click" /> </td></tr>

         </table>
        </div>

    </div>
</asp:Content>
