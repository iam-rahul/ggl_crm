<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="gasBooking.aspx.cs" Inherits="ConsumerZone_gasBooking" %>

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
            width: 200px;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }
        .auto-style2 {
            text-align: center;
            font-size:16px;
            color: navy;
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
    Book Your Gas
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
     <div id="wrapper">
        <div id="innerdiv">
            <table style="width:95%; background-color:rgba(243, 233, 224, 0.66); box-shadow:0px 0px 20px 3px #0e0909; margin:20px auto; border:1px;">
             <tr><td class="auto-style1" colspan="2">&nbsp;</td></tr>
             <tr><td class="auto-style1">Connection  </td><td>   
                 <asp:DropDownList ID="DdlGasType" runat="server"   CssClass="text" AutoPostBack="True" OnSelectedIndexChanged="DdlFuelType_SelectedIndexChanged">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem >CNG</asp:ListItem>
                    <asp:ListItem>PNG</asp:ListItem>
                </asp:DropDownList>    </td></tr>
             <tr><td class="auto-style1">Quantity in Kg</td>
                 <td>
                     <asp:DropDownList ID="DdlQuantity" runat="server" OnSelectedIndexChanged="DdlQuantity_SelectedIndexChanged1" AutoPostBack="True">
                    <asp:ListItem>-- Select --</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                        </asp:DropDownList>
                 </td>
             </tr>
                <tr>
            <td  class="auto-style1">Price/KG: </td>
            <td>
                <asp:Label ID="LblPrice" runat="server"></asp:Label>
            </td>
        </tr>
             <tr>
            <td  class="auto-style1">Approx Delivery Date: </td>
            <td>
                <asp:Label ID="LblApproxDate" runat="server"></asp:Label>
            </td>
        </tr>
             <tr><td class="auto-style1" colspan="2">&nbsp;</td></tr>
             <tr><td class="auto-style1">Total Amount</td><td>                 <asp:Label ID="LblTlAmount" runat="server" Text=""></asp:Label></td></tr>
                <tr><td class="auto-style1" colspan="2">    <asp:Button ID="BtnBook" runat="server" BackColor="LawnGreen" Text="Book Gas" Height="30px" style="margin-left: 155px" Width="200px" OnClick="BtnBook_Click1" /> </td></tr>
             <tr><td class="auto-style1" colspan="2">&nbsp;</td></tr>
             <tr><td class="auto-style2" colspan="2">Thanx for Using our Services</td></tr>
             <tr><td class="auto-style1" colspan="2">&nbsp;&nbsp;<hr style="width: 531px" />&nbsp;&nbsp;</td></tr>
             <tr><td class="auto-style1" colspan="2">    <asp:Button ID="btnGetBill" runat="server" BackColor="LawnGreen" Text="Get Bill" Height="35px" style="margin-left: 155px" Width="242px" /> </td></tr>
            <tr><td class="auto-style1" colspan="2">&nbsp;</td></tr>
                <tr><td class="auto-style1" colspan="2">    
                    <asp:Button ID="Button1" runat="server" BorderColor="#66FF66" style="margin-left: 162px" Text="Generate Invoice(Bill)" OnClick="Button1_Click" />
                    </td></tr>

                <tr><td class="auto-style1" colspan="2">    &nbsp;</td></tr>

         </table>
        </div>

    </div>
</asp:Content>

