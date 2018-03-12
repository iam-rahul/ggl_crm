<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="bord-of-directors.aspx.cs" Inherits="bord_of_directors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #outer {
            height: 850px;
            width: auto;
            border: solid green 1px;
            background: repeating-radial-gradient(circle at 0 0, rgb(0, 162, 91), rgb(0, 228, 128) 100px );
        }

        #content-left {
            width: 300px;
            height: 600px;
            background-color: rgba(3, 22, 0, 0.81);
            float: left;
        }


        #news-head {
            height: 40px;
            width: 250px;
            color: #808080;
            border: solid green 1px;
            border-radius: 15px;
            margin: 10px auto;
            font-family: 'Arial Rounded MT';
            background: -moz-linear-gradient(top, #e6f0a3 0%, #d2e638 50%, #c3d825 51%, #dbf043 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(top, #e6f0a3 0%,#d2e638 50%,#c3d825 51%,#dbf043 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to bottom, #e6f0a3 0%,#d2e638 50%,#c3d825 51%,#dbf043 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e6f0a3', endColorstr='#dbf043',GradientType=0 ); /* IE6-9 */
            text-align: center;
            font-size: 26px;
        }

        #News-marquee {
            color: #fff;
            font-size: 18px;
            font-family: Calibri;
        }

        #content-right {
            width: 780px;
            height: 500px;
            float: left;
        }

        #heading {
            width: 350px;
            height: 50px;
            margin: 10px auto;
            background: -webkit-linear-gradient(-45deg, #f85032 0%,#f16f5c 34%,#f6290c 67%,#e73827 87%); /* Chrome10-25,Safari5.1-6 */
            border: solid white 2px;
            border-radius: 20px;
            text-align: center;
        }

            #heading h1 {
                text-align: center;
                color: white;
                margin-top: 5px;
                margin-bottom: 4px;
            }

        #Main {
            width: 700px;
            height: 710px;
            background-color: rgba(242, 205, 160, 0.71);
            margin: 5px auto;
            padding: 10px;
            box-shadow: rgba(20, 25, 5, 0.90) 10px 10px 10px;
        }


        .auto-style1 {
            width: 100px;
            height: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="outer">
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
            <div id="heading">
                <h1>Board Of Directors </h1>
            </div>
            <div id="Main" style="overflow: scroll">
                <div id="chairman-box1">
                    <h4>Mr. M. Ravindran -Chairman</h4>
                    <p style="text-align: justify; font-style: italic">
                        <img alt="Ravindran chairman" class="auto-style1" src="images/chairmans/chairmanggl.png" />
                        Shri M. Ravindran, took over as Chairman of Green Gas Limited on 25th September, 2014. As Chairman his focus is to help Green Gas in its endeavour of Growth and Corporate Governance. Shri Ravindran brings to the Green Gas Board, over 35 years of rich and diverse experience in the Fertilizer and Oil & Gas industries, particularly in gas transmission, petrochemicals and City Gas Distribution sectors.
He is working as Director (HR) of GAIL (India) Limited since1st June, 2013. Shri Ravindran joined GAIL in 1990 and has been associated with a number of prestigious
                     projects of the Company including the commissioning activities of GAIL’s first integrated petrochemical plant at Pata, U.P and later headed Operations of HVJ, GAIL’s first cross country high pressure natural gas pipeline, Dahej Vijaipur Pipeline and other associated spur pipelines, besides Company’s largest LPG recovery units at Vijaipur in Madhya Pradesh.
Shri Ravindran has also served as Managing Director of Indraprastha Gas Limited (IGL), a Joint Venture of GAIL,
                     BPCL & Govt. of NCT of Delhi from 27.10.2011 to 17.04.2013 and is presently Chairman of IGL since 14th January, 2015. IGL is the largest supplier of Compressed Natural Gas (CNG) and Piped Natural Gas (PNG) in Delhi and National Capital Region. He also has the distinction of being the first CEO of GAIL’s wholly owned subsidiary, GAIL Gas Limited from 2008 to 2011.
                     He is also functioning as Non-Executive Director in many City Gas Distribution Companies and Subsidiaries of GAIL (India) Limited.
                    </p>
                </div>
                <hr />
                <div id="chairman-box2">
                    <h4>Mr. R Chadha, Managing Director</h4>
                    <p style="text-align: justify;font-style: italic">
                        <img src="images/chairmans/managingdirectorggl.png" class="auto-style1"/>
                        Mr. Chadha is BE (Hons) in Electronics Instrumentation & Control from Thapar Institute Of Engineering & Technology (Now Thapar University, Patiala) , M Tech in SCADA systems and Post Graduate in International Business from Symbiosis, Pune. He joined GAIL in 1985, during the initial years of GAIL’s formation and has 30 years of experience in the Oil & Gas sector.
He has handled wide range of responsibilities including HBJ Pipeline Construction, Compressor Stations & Metering Terminals Operation & Maintenance. Mr R Chadha was instrumental in standardizing of metering and regulating stations and custody transfer instrumentation. He has various technical publications to his credit notably on Analytical Instrumentation, Metering of Natural gas, Artificial Intelligence & Expert Systems.
                         Prior to joining Geen Gas as MD, Sh. R Chadha was Chief Operating Officer of GAIL Gas Limited, a wholly owned subsidiary of GAIL (India) Limited and a highly promising company incorporated to spearhead the city gas distribution in various parts of the country. Sh. Chadha was also handling Petrochemical Maintenance as General Manager (Maintenance) at GAIL’s mega integrated Petrochemical Complex Unit at Pata and was responsible for overall maintenance functions of the Petrochemical Units ,
                         Liquid Hydrocarbon, Storage , Polymer bagging & Automation. While at Pata, Mr R Chadha was additionally the Chairman of the Corporate Social Responsibility Task Force spearheading the major development works in and around Pata. He is a keen player of Bridge and Classical Music Lover.
                    </p>
                </div><hr/>
                <div id="chairman-box3">
                    <h4>Mr. G K Satish, Director</h4>
                    <p style="text-align: justify;font-style: italic">
                        <img src="images/chairmans/directorggls.png" class="auto-style1" />
                        Mr. GK Satish is a Mechanical Engineer from NIT, Surat and a Post Graduate in Management from MDI, Gurgaon. He has over 30 years experience in IndianOil in the areas of Petroleum Marketing (including Terminal Operations, Logistics & Shipping), International Trade, Business Development, Natural Gas Business, Human Resources and Corporate Communications. He is at present serving as the Executive Director (Gas), IndianOil.
Mr. Satish is also the Chairman of the Board of IndianOil Adani Gas Pvt. Ltd., besides being Director on the Boards of Green Gas Ltd., GSPL India Gasnet Ltd. and GSPL India Transco Ltd.
                    </p>
                </div><hr />

            </div>
        </div>
    </div>
</asp:Content>

    