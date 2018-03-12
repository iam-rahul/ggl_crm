<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="JoinUs.aspx.cs" Inherits="JoinUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #container {
            width: auto;
            height: 600px;
            background: repeating-radial-gradient(circle at 0 0, rgb(0, 162, 91), rgb(0, 228, 128) 100px );
        }

        #content-left {
            width: 300px;
            height: 550px;
            background-color: rgba(3, 22, 0, 0.81);
            float: left;
        }


        #news-head {
            height: 40px;
            width: 250px;
            color:#808080;
            border: solid green 1px;
            border-radius: 15px;
            margin: 10px auto;
            font-family:'Arial Rounded MT';
            background: -moz-linear-gradient(top, #e6f0a3 0%, #d2e638 50%, #c3d825 51%, #dbf043 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(top, #e6f0a3 0%,#d2e638 50%,#c3d825 51%,#dbf043 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to bottom, #e6f0a3 0%,#d2e638 50%,#c3d825 51%,#dbf043 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e6f0a3', endColorstr='#dbf043',GradientType=0 ); /* IE6-9 */
            text-align: center;
            font-size: 26px;
        }
        #News-marquee {
            color: #fff;
            font-size:16px;
            font-family: Calibri;
        }

        #content-right {
            width: 780px;
            height: 500px;
            float: left;
        }
        #enq-heading {
            width:400px;
            height:50px;
            background: -webkit-linear-gradient(-45deg, #f85032 0%,#f16f5c 34%,#f6290c 67%,#e73827 87%); /* Chrome10-25,Safari5.1-6 */
            border:solid white 2px;
            border-radius:20px;
            margin: 30px auto;
            
        }
            #enq-heading h1 {
                text-align: center;
                color: white;
                margin-top: 3px;
                margin-bottom: 4px;
            }
        .table-style3 {
            width: 600px;
            margin: 10px auto;
            background-color: rgba(198, 229, 131, 0.75);
            padding: 20px;
            box-shadow: rgba(20, 25, 5, 0.90) 10px 10px 10px;
            
        }
        .Auto-style-enq {
            font-family: 'Times New Roman';
            font-size: 20px;
            font-weight: bold;
        }
        .TextBoxx {
            width: 200px;
            height: 30px;
            border: solid #05088b 1px;
        }
        .auto-style1 {
            width: 301px;
        }
        .auto-style2 {
            font-family: 'Times New Roman';
            font-size: 20px;
            font-weight: bold;
            width: 221px;
        }
        .auto-style3 {
            font-family: 'Times New Roman';
            font-size: 20px;
            font-weight: bold;
            width: 221px;
        }
        .auto-style4 {
            font-family: 'Times New Roman';
            font-size: 20px;
            font-weight: bold;
            width: 301px;
        }

        .submit-btn {
            height: 30px;
            background-image: linear-gradient(90deg, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -moz-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -webkit-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -o-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -ms-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            font-family: 'Times New Roman';
            font-size: 24px;
            color: #fff;
            margin-left: 10px;
            border-radius: 20px;
            border: none;
        }

        .auto-style5 {
            font-family: 'Times New Roman';
            font-size: 18px;
            color:red;
            width: 221px;
            height: 45px;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="container">
        <div id="content-left">
            <div id="news-head">News Updates</div>
            <marquee id="News-marquee" direction="up" behavior="" onmouseover="stop()" scrollamount="5" onmouseout="start()">
                    <ul>
                    <li> Now PNG consumers can register to GGL website to view & pay gas bills and update contact details.</li><hr />

                    <li>Upcoming CNG Stations: Lucknow:Mother Station- Vrindavan Yojna -6, Mother Station- Vrindavan Yojna-18, M/s SS Filling Stn- Kanpur Road, M/s Buddeshwar FS- Mohan Road, M/s Kalawati FS-Sultanpur Road.</li><hr />
                    
                    <li>Upcoming CNG Stations: Agra: Mother Station- Kalindi Vihar, M/s Brij Auto- NH-2, M/s Bhagwan FS- Etmadpur, M/s Metro Filling Station- Fatehabad Road.</li><hr />
                    
                    <li>CNG prices have been revised to Rs. 49.40/ Kg w.e.f. 02-10-2015 at Lucknow and Agra.</li><hr />
                </ul></marquee>
        </div>
        <div id="content-right">
            <div id="enq-heading"><h1>Enquiry Form</h1></div>
            <table class="table-style3">
                
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Enter Your Name:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TxtName" cssclass="TextBoxx" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Enter Contact No.:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtContactNo" CssClass="TextBoxx" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Enter EmailID:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtEmailAddress" CssClass="TextBoxx" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Enter Message:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine" Height="62px" border="solid #05088b 1px" Width="198px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Button ID="BtnSubmit" cssclass="submit-btn" runat="server" Text="Submit" OnClick="BtnSubmit_Click" Height="33px" Width="526px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                       &nbsp;Thanx for Showing Ur interest. Have a Good Day&nbsp;</td>
                </tr>
                </table>
        </div>

    </div>
</asp:Content>

