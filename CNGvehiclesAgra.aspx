<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="CNGvehiclesAgra.aspx.cs" Inherits="CNGvehiclesAgra" %>

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
            height: 765px;
            background-color: rgba(247, 245, 245, 0.72);
            box-shadow: rgba(4, 7, 3, 0.96) 5px 5px 5px;
            float: right;
            margin-top:20px;
        }
        #C_left {
            width: 600px;
            height: 350px;
        }
        #C_right {
            width: 600px;
            height: 350px;
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
                <h2 style="text-align:center;">CNG VEHICLES AGRA</h2>
                <div id="C_left">
                    <img src="images/maps/vehicles2ag.jpg" style="width:450px; height:350px; margin-left: 77px;" />
                    
                </div>
                <div id="C_right">
                    
                                <table class="table-bordered" style="box-sizing: border-box; padding: 0px; margin: 10px 0px 0px 40px; border-collapse: collapse; border-spacing: 0px; max-width: 100%; border: 1px solid rgb(239, 239, 239); color: rgb(101, 101, 101); font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; width: 583px; text-align: center; background-color: rgb(255, 255, 255); height: 320px;">
                                    <tbody style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px; text-align: center; height: 35px; background-color: rgb(181, 241, 174);">
                                            <td colspan="3" style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Number Of CNG Vehicles In Agra</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px; height: 40px; text-align: center; background-color: rgb(181, 241, 174);">
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Vehicle Type</td>
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">No Of CNG Vehicles</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Auto Rickshaw</td>
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">7559</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Tempo Taxi/ Taxi Cab</td>
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">572</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">UPSRTC/JNNURM Buses</td>
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">259</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Private Buses</td>
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">90</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Factory Buses</td>
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">57</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Other Buses</td>
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">20</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">School Buses</td>
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">340</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Cars</td>
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">4139</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px; background-color: rgb(181, 241, 174);">
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 172px;">Total</td>
                                            <td style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239); width: 171px;">13036</td>
                                        </tr>
                                    </tbody>
                                </table>
                        </div>

            </div>
        </div>
    </div>
</asp:Content>

