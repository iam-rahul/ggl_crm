<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="ConsumerZone_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHPageHead" runat="Server">
    <style>
        #feedback-cover {
            width: auto;
            margin: 0px auto;
            padding: 20px;
            background-color: silver;
        }
        #innerdiv {
            background-color: gray;
            margin:0px auto;
            width: 303px;
        }
        #FeedbackText {
            border: solid black 2px;
            width: 200px;
            height: 100px;
            margin:0px auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" runat="Server">
    FeedBack
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" runat="Server">
    <div id="feedback-cover">
        <div id="innerdiv">
            <asp:TextBox ID="FeedbackText" runat="server" MaxLength="500" required="required" placeholder="Type Your Feedback heere"></asp:TextBox>
            <br />
            <asp:Button ID="Submit" runat="server" Text="Submit" Width="90px" OnClick="Submit_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" value="Reset" style="width: 92px" />
        </div>
    </div>
</asp:Content>

