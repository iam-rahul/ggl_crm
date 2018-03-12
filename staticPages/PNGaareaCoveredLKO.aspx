<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="PNGaareaCoveredLKO.aspx.cs" Inherits="staticPages_PNGaareaCoveredLKO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #cover {
            width: auto;
            height: 900px;
            background: repeating-radial-gradient(circle at 0 0, rgba(0, 162, 91, 0.85), rgba(0, 228, 128, 0.90) 100px );
        }
        .Cbox {
            width: 1000px;
            height: 830px;
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
        #HeadingSpace {
            width: 700px;
            height: 110px;
            text-align: center;
        }
        #ContentSpace{
            width: 700px;
            height: 350px;
        }
        #mapPictureSpace {
            width: 700px;
            height: 313px;
        }
        .Spacebox {
            width: 335px;
            height: 337px;
            padding: 5px;
            text-align: center;
        }
            .Spacebox h3 {
                background-color: rgba(53, 193, 31, 0.93);
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="cover">
        <div id="jox" class="Cbox">
            <div id="boxLeft">
                <marquee width="100%" direction="up"  onmouseover="stop()" onmouseout="start()" behavior="alternate" height="800px">
                    <ul style="list-style-type: none">
                        <li><a href="#"><img src="../images/LinksOrganization/300px-GAIL_Logo.svg_.png"   style="width:200px; height:110px;" /></a></li> 
                        <li><a href="#"><img src="../images/LinksOrganization/mpang.png"  style="width:200px; height:110px;" /></a></li>
                        <li><a href="#"><img src="../images/LinksOrganization/peso.png"  style="width:200px; height:110px;" /></a></li>
                        <li><a href="#"><img src="../images/LinksOrganization/pngRB.png"  style="width:200px; height:110px;" /></a></li>
                        <li><a href="#"><img src="../images/LinksOrganization/Indian_Oil_Logo.png"  style="width:200px; height:110px;" /></a></li>
                    </ul></marquee>
            </div>
            <div id="boxRight">
                <div id="HeadingSpace">
                    <h2>PNG AREA COVERED LUCKNOW</h2><br /><br />Proposed Areas To Be Covered Soon In Lucknow
                </div>
                <div id="ContentSpace">
                    <div class="Spacebox" style="float: left;">
                        <h3>Primary Areas</h3>
                        LDA Sector D, D1, G, H, K, K1, M, M1, N, N1, Mansarover (LDA), Nabard<hr />
                        South City, Omaxe City, Eldeco Udyan-2, SGPGI<hr />                        
                        Vishesh Khand, Green Wood Apt. Gomtinagar Ext. Vikrant Khand, Vishal Khand-Rept Apt, Betwa Appt, Vikas Khand, Viram Khand<hr />
                        Indira Nagar Sector 8, 9, 12, A, Rohini Appts, Kaveri Appts<hr />
                        Akash Enclave Virindvan Yojana Scheme 1, 2<hr />
                    </div>
                    <div class="Spacebox" style="float: right;">
                        <h3>Additional Target Area</h3>
                        LDA Sector B, C, E, F, I, J, L, Tyagi Vihar, Jalvayu Vihar<hr />
                        Ruchi Khand, Rajni Khand<hr />
                        Vibhuti Khand(Omax), Parsavnath, Vipul Khand, Eldeco Green (Ansals) Golf City<hr />
                        Indira Nagar Block A, B, C<hr />
                        Virindavan Yojna Scheme 3, 4, Cantt Area, Sadar<hr />
                        Gautam Palli<hr />
                    </div>
                </div>
                <div id="mapPictureSpace">
                    <img src="LKO_S1.jpg" style="width:500px; height:313px; margin-left:100px;"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

