<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="CNGoutletAgra.aspx.cs" Inherits="staticPages_CNGoutletAgra" %>

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
        ul {
            text-align: center;
        }
        ul a {
            color: white;
        }

        .auto-style1 {
            width: 204px;
        }

        .auto-style2 {
            width: 214px;
        }
        .auto-style3 {
            width: 187px;
        }
        .auto-style4 {
            width: 264px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="cover">
        <div id="jox" class="Cbox">
            <div id="boxLeft">
                <marquee width="100%" direction="up"  onmouseover="stop()" onmouseout="start()" behavior="alternate" height="800px">
                    <ul style="list-style-type: none">
                        <li><a href="Demo3.aspx"><img src="../images/LinksOrganization/300px-GAIL_Logo.svg_.png" style="width:150px; height:70px;" /><br />GAIL (India) Limited</a></li><hr />
                        <li><a href="#"><img src="../images/LinksOrganization/Indian_Oil_Logo.png" style="width:150px; height:70px;" /><br />Indian Oil Corporation Limited</a></li><hr />
                        <li><a href="#"><img src="../images/LinksOrganization/mpang.png" style="width:150px; height:70px;" /><br />Ministry of Petroleum & Natural Gas</a></li><hr />
                        <li><a href="#"><img src="../images/LinksOrganization/peso.png" style="width:150px; height:70px;" /><br />Petroleum and Explosives Safety Organisation</a></li><hr />
                        <li><a href="#"><img src="../images/LinksOrganization/pngRB.png" style="width:150px; height:70px;" /><br />Petroleum & Natural Gas Regulatory Board</a></li>
                    </ul></marquee>
            </div>
            <div id="boxRight">


                <table class="table-bordered" style="box-sizing: border-box; padding: 0px; margin: 0px 0px 0px 0px; border-collapse: collapse; border-spacing: 0px; max-width: 90%; border: 1px solid rgb(239, 239, 239); color: rgb(101, 101, 101); font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; width: 687px; background-color: rgb(255, 255, 255);">
                    <tbody style="box-sizing: border-box; padding: 0px; margin: 0px;">
                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px; text-align: center; height: 35px; background-color: rgb(181, 241, 174);">
                            <td colspan="3" style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239);">CNG Outlets In Agra</td>
                        </tr>
                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px; height: 40px; text-align: center; background-color: rgb(181, 241, 174);">
                            <td class="tdc" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 216px; border: 1px solid rgb(239, 239, 239);">Location</td>
                            <td class="tdd" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 287px; border: 1px solid rgb(239, 239, 239);">Address</td>
                            <td class="auto-style1" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Type Of Outlet</td>
                        </tr>
                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                            <td class="tdc" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 216px; border: 1px solid rgb(239, 239, 239);">Transport Nagar</td>
                            <td class="tdd" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 287px; border: 1px solid rgb(239, 239, 239);">ISBT Compound, Transport Nagar, Agra</td>
                            <td class="auto-style1" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Mother Station</td>
                        </tr>
                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                            <td class="tdc" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 216px; border: 1px solid rgb(239, 239, 239);">Taj Nagri</td>
                            <td class="tdd" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 287px; border: 1px solid rgb(239, 239, 239);">Sector B-1, Taj Nagri, Phase -II Agra</td>
                            <td class="auto-style1" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Mother Station</td>
                        </tr>
                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                            <td class="tdc" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 216px; border: 1px solid rgb(239, 239, 239);">Lohamandi</td>
                            <td class="tdd" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 287px; border: 1px solid rgb(239, 239, 239);">Bhagwati Filling Station, Lohamandi, Agra</td>
                            <td class="auto-style1" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Daughter Booster Station (DBS)</td>
                        </tr>
                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                            <td class="tdc" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 216px; border: 1px solid rgb(239, 239, 239);">Khwaja ki Sarai</td>
                            <td class="tdd" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 287px; border: 1px solid rgb(239, 239, 239);">Modern Service Station, Nr. Edgah, Agra</td>
                            <td class="auto-style1" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Daughter Booster Station (DBS)</td>
                        </tr>
                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                            <td class="tdc" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 216px; border: 1px solid rgb(239, 239, 239);">Sikandra</td>
                            <td class="tdd" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 287px; border: 1px solid rgb(239, 239, 239);">Vyom Premium Fuel 4235/5, Mauja-Sikandra, Bahistabaad, Sikandra, NH-2 Agra</td>
                            <td class="auto-style1" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">On-Line Station</td>
                        </tr>
                        <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                            <td class="tdc" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 216px; border: 1px solid rgb(239, 239, 239);">Water works Chauraha</td>
                            <td class="tdd" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; width: 287px; border: 1px solid rgb(239, 239, 239);">Yamuna Automobile Belanganj, Near Water works, Jeoni Mandi Agra</td>
                            <td class="auto-style1" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">On-Line Station</td>
                        </tr>
                    </tbody>
                </table>
                <hr />
                <img src="../images/maps/CNG_Station.jpg" style="width:700px; height:300px;"/>
                <hr />
                <div class="col-lg-12" style="box-sizing: border-box; padding: 0px 0px; margin: 0px; position: relative; min-height: 1px; width: 698px; color: rgb(101, 101, 101); font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); top: 0px; left: 0px;">
                    <table class="table-bordered" style="box-sizing: border-box; padding: 0px; margin: 0px 0px 0px 0px; border-collapse: collapse; border-spacing: 0px; max-width: 90%; border: 1px solid rgb(239, 239, 239); width: 690px; background-color: transparent;">
                        <tbody style="box-sizing: border-box; padding: 0px; margin: 0px;">
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px; text-align: center; height: 35px; background-color: rgb(181, 241, 174);">
                                <td colspan="3" style="box-sizing: border-box; padding: 0px; margin: 0px; border: 1px solid rgb(239, 239, 239);">List of upcoming CNG stations - Agra</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px; height: 40px; text-align: center; background-color: rgb(181, 241, 174);">
                                <td class="auto-style3" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Location</td>
                                <td class="auto-style4" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Address</td>
                                <td class="auto-style2" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Type of CNG station</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td class="auto-style3" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Kalindi Vihar</td>
                                <td class="auto-style4" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Kalindi Vihar</td>
                                <td class="auto-style2" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Mother Station</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td class="auto-style3" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Metro Filling Station</td>
                                <td class="auto-style4" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Metro Filling Station, Fatehabad Road</td>
                                <td class="auto-style2" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Daughter Booster Station</td>
                            </tr>
                            <tr style="box-sizing: border-box; padding: 0px; margin: 0px;">
                                <td class="auto-style3" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Bhagwan Filling Station</td>
                                <td class="auto-style4" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Bhagwan Filling Station ,Etmadpur</td>
                                <td class="auto-style2" style="box-sizing: border-box; padding: 0px 7.17188px; margin: 0px; border: 1px solid rgb(239, 239, 239);">Daughter Booster Station</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <br class="Apple-interchange-newline" />



            </div>
        </div>
    </div>
</asp:Content>

