<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="GasValueChain.aspx.cs" Inherits="staticPages_GasValueChain" %>

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
                    </ul>    
                </marquee>
            </div>
            <div id="boxRight">
                <h2 style="text-align:center;">GAS VALUE CHAIN</h2>
                <img src="../images/maps/gasvchain.png" style="width:700px; height:500px; margin-top:20px" />
            </div>
        </div>
    </div>
</asp:Content>

