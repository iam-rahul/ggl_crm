<%@ Page Title="" Language="C#" MasterPageFile="~/VenderZone/VendorMasterPage.master" AutoEventWireup="true" CodeFile="vendorFeedback.aspx.cs" Inherits="VenderZone_vendorFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #feedback-cover {
            width: 400px;
            margin: 0px auto;
            padding: 20px;
            background-color:rgba(2, 34, 14, 0.45);
            box-shadow:#1b0202  5px 7px 5px;
        }
        #innerdiv {
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
            margin:5px auto;
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
            background-color:rgba(250, 200, 146, 0.35);
            margin:5px auto;
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
    Feedback
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="feedback-cover">
        <div id="innerdiv">
            <asp:TextBox ID="FeedbackText" CssClass="text" runat="server" MaxLength="500" Width="350" Height="250px" required="required" placeholder="Type Your Feedback heere"></asp:TextBox>
            <br />
            <asp:Button ID="Submit" CssClass="btnclick" Width="135px" runat="server" Text="Submit" OnClick="Submit_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" class="btnclick" value="Reset" style="width:135px" />
        </div>
    </div>
</asp:Content>

