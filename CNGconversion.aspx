<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="CNGconversion.aspx.cs" Inherits="CNGconversion" %>

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
        #C_left {
            width: 335px;
            height: 700px;
            float: left;
            padding:6px;
        }
        #C_right {
            width: 335px;
            height: 700px;
            float: right;
            padding:6px;
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
                <h2 style="text-align:center;">CNG Conversion</h2>
                <div id="C_left">
                    <b>CNG Conversion</b><br /><br />
Mostly all types of vehicles can run on CNG by installing CNG kit. Kit assembling of many components is required to run existing vehicle on CNG. There are few basic components which are common in all type of kits, irrespective of the vehicles such as CNG storage cylinder, high pressure tube, pressure regulator,
                     pressure gauge, change over switch, high pressure tube fittings, refueling receptacle and air fuel mixer.<br /><br />
                    <b>CNG KIT-An Introduction</b>
                    <ul>
                        <li>CNG cylinders are installed under chassis / dickey at vehicles to store fuel</li>
                        <li>High-pressure tubing connects the cylinders and engine</li>
                        <li>A low-pressure regulator is installed to supply Gas to engine as per need</li>
                        <li>A refueling connector is provided for refueling gas in the vehicle</li>
                        <li>A low-pressure hose supplies gas from regulator to engine</li>
                    </ul>
                    <img src="images/CNGKIT.png" style="width:330px; height:180px;"/>
                    CNG Conversioon kit
                </div>
                <div id="C_right">
                    <b>Major Parts of a CNG retrofit kit are illustrated below:</b>
                    <ul>
                        <li>Pressure Regulator</li>
                        <li>Petrol Solenoid Valve - Stops petrol flow when operating on CNG</li>
                        <li>On-Off valve and refueling connector - Opens or stops gas flow to the regulator and includes a refueling device</li>
                        <li>Control Module/Change-over switch - Electronic control component with fuel selection switch</li>
                        <li>CNG level indicator- Shows CNG quantity on vehicle dash board</li>
                        <li>Gas-Air Mixer</li>
                        <li>CNG cylinder with valve, vapour bag & bracket</li>
                        <li>Petrol hose</li>
                        <li>Low-pressure gas hose</li>
                        <li>Ignition advance processor</li>
                        <li>High-pressure gas tube</li>
                        <li>Wire Harness</li>
                        <li>NRV in petrol return Line</li>
                        <li>Pressure gauge</li>
                    </ul>
                    There may be some differences in nomenclature and variations in the kit component from one make to another. For more details, motorists should refer to the conversion manual,
                     packing list/schematic diagram provided by the supplier at the time of purchase of the kit.
                </div>
            </div>
        </div>
    </div>
</asp:Content>

