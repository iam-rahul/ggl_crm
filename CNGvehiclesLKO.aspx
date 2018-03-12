<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="CNGvehiclesLKO.aspx.cs" Inherits="CNGvehiclesLKO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #cover {
            width: auto;
            height: 900px;
            background: repeating-radial-gradient(circle at 0 0, rgba(0, 162, 91, 0.85), rgba(0, 228, 128, 0.90) 100px );
        }
        .Cbox {
            width: 1000px;
            height: 800px;
        } 
        #boxLeft {
            width: 250px;
            height: 800px;
            background-color: rgba(1, 17, 3, 0.65);
            box-shadow:rgba(4, 7, 3, 0.96) 5px 5px 5px 0px;
            float:left;
            margin-top:20px;
        }
        #boxRight {
            width: 700px;
            height: 800px;
            background-color: rgba(247, 245, 245, 0.72);
            box-shadow: rgba(4, 7, 3, 0.96) 5px 5px 5px;
            float: right;
            margin-top:20px;
        }
        #Cleft {
            width: 600px;
            height: 340px;
            margin: 0px auto;
            padding:5px;
        }
        #Cright {
            width: 600px;
            height: 400px;
            margin: 0px auto;
            padding:5px 10px;
        }
        ul {
            text-align: center;
        }
        ul a {
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="cover">
        <div id="jox" class="Cbox">
            <div id="boxLeft">
                <marquee width="100%" direction="up"  onmouseover="stop()" onmouseout="start()" behavior="alternate" height="800px">
                    <ul style="list-style-type: none">
                        <li><a href="Demo3.aspx"><img src="images/LinksOrganization/300px-GAIL_Logo.svg_.png" style="width:150px; height:70px;" /><br />GAIL (India) Limited</a></li><hr />
                        <li><a href="#"><img src="images/LinksOrganization/Indian_Oil_Logo.png" style="width:150px; height:70px;" /><br />Indian Oil Corporation Limited</a></li><hr />
                        <li><a href="#"><img src="images/LinksOrganization/mpang.png" style="width:150px; height:70px;" /><br />Ministry of Petroleum & Natural Gas</a></li><hr />
                        <li><a href="#"><img src="images/LinksOrganization/peso.png" style="width:150px; height:70px;" /><br />Petroleum and Explosives Safety Organisation</a></li><hr />
                        <li><a href="#"><img src="images/LinksOrganization/pngRB.png" style="width:150px; height:70px;" /><br />Petroleum & Natural Gas Regulatory Board</a></li>
                    </ul>
                </marquee>
            </div>
            <div id="boxRight">
                <div id="Cleft">
                    <h2 style="text-align:center;">CNG VEHICLES LUCKNOW</h2>
                    <img src="images/maps/collage2lko.jpg"  style="width:500px;  height:270px; margin-left:30px;"/>
                </div>
                <div id="Cright">
                    <table class="table-bordered" style="box-sizing: border-box; padding: 0px; margin: 15px 5px 5px 0px; border-collapse: collapse; border-spacing: 0px; max-width: 100%; border: 1px solid rgb(239, 239, 239); color: rgb(101, 101, 101); font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; width: 588px; text-align: center; background-color: rgb(255, 255, 255); height: 345px;">
                        <tbody style="box-sizing: border-box; padding: 0px; margin: 0px;">
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px; text-align: center; height: 35px; background-color: rgb(181, 241, 174);">
                                <td colspan="3" style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Number Of CNG Vehicles In Lucknow</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px; height: 40px; text-align: center; background-color: rgb(181, 241, 174);">
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Vehicle Type</td>
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">No Of CNG Vehicles</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Auto Rickshaw</td>
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">4343</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Tempo Taxi</td>
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">2575</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Pvt. Vehicles</td>
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">205</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">UPSRTC Buses</td>
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">260</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Private Buses</td>
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">34</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">School Van</td>
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">1127</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">School Buses</td>
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">1024</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Cars</td>
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">8576</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px; background-color: rgb(181, 241, 174);">
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Total</td>
                                <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">18144</td>
                            </tr>
                        </tbody>
                    </table>
                 
                </div>
            </div>
        </div>
    </div>
</asp:Content>

