<%@ Page Title="" Language="C#" MasterPageFile="~/VenderZone/VendorMasterPage.master" AutoEventWireup="true" CodeFile="vendorComplain.aspx.cs" Inherits="VenderZone_vendorComplain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #complain-cover {
            width: auto;
            margin: 0px auto;
            padding: 20px;
        }
        #innerdiv {
            background-color:rgba(57, 203, 14, 0.70);
            margin:0px auto;
            width: 500px;
            height: 290px;
            padding:10px 10px;
            box-shadow:rgba(4, 42, 3, 0.90) 10px 10px;
        }
        #complain_Subject {
            border: solid black 2px;
            margin: 0px auto;
        }
        #complain_Message {
            border: solid black 2px;
            margin:0px auto;
        }
     /*----------------------------------------------------------------------------------------*/
        .text {
            border: none;
            padding: 5px 20px;
            display: block;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.30);
            border: 2px solid rgba(255, 255, 255,10);
            overflow: hidden;
            margin-top:5px auto;
            transition: all 0.5s ease-in-out;
        }

            .text:focus {
                outline: 0;
                border: 2px solid rgba(255, 255, 255, 0.5);
                border-radius: 20px;
                background: rgba(0, 0, 0, 0);
            }

                .text:focus + span {
                    opacity: 0.6;
                }
        /***-------------------------------------------------------------------***/

        .btnclick {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius:20px;
            padding: 5px 20px;
            transition: all 0.5s ease-in-out;
            text-transform: uppercase;
        }

            .btnclick:hover {
                background: #4082f5;
                box-shadow: 0px 4px 35px -5px #4082f5;
                cursor: pointer;
            }

            .btnclick:focus {
                outline: none;
            }
        /*---------------------------------*******************************------------------------------*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" Runat="Server">
    Complain
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="complain-cover">
        <div id="innerdiv">
            <asp:TextBox ID="complain_Subject" CssClass="text" runat="server" Height="35px" Width="450px"></asp:TextBox><br />
            <asp:TextBox ID="complain_Message" CssClass="text" runat="server" MaxLength="500" required="required" placeholder="Type Your Feedback heere" Height="130px" Width="450px"></asp:TextBox>
            <br />
            <asp:Button ID="Submit" CssClass="btnclick" runat="server"  Text="Submit complain" Width="180px" OnClick="Submit_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="btnclick" type="reset" value="Reset"  style="width: 180px" />
        </div>
    </div>
</asp:Content>

