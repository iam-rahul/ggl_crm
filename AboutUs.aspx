<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            height: 610px;
            background-color: rgba(242, 205, 160, 0.71);
            margin: 5px auto;
            padding: 10px;
            box-shadow: rgba(20, 25, 5, 0.90) 10px 10px 10px;
        }

        #box1 {
            width: 700px;
            height: 600px;
        }

        #LeftBox1 {
            width: 330px;
            height: 550px;
            float: left;
        }

        #RightBox1 {
            width: 330px;
            height: 550px;
            padding: 10px 5px;
            float: right;
        }
        #box2 {
            width: 700px;
            height: 300px;
            padding:40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                <h1>About Us </h1>
            </div>
            <div id="Main">
                <div id="box1">
                    <div id="LeftBox1">
                        <img src="images/ultrasonic-meters.jpg" style="width: 330px; height: 250px;"/><hr />
                        <img src="images/links.png" style="width: 330px; height: 250px;" />
                     </div>
                    <div id="RightBox1">
                        <p>
                            <h3>Corporate Overview</h3>
Pursuant to the directive of Hon’ble Supreme Court of India GAIL had undertaken a study to supply natural gas to the automobile, industrial, commercial and domestic Consumers in the cities of Agra and Lucknow to accomplish improvement of its ambient air quality.

Joint Venture agreement (JV) was signed between GAIL (India) Ltd. and Indian Oil Corporation Limited on May 11, 2005, which was followed by incorporation of Green Gas Ltd (GGL). The company was incorporated On October 07, 2005, with the objective of supplying City Gas & CNG in Agra and Lucknow.

Currently, GGL is authorized by the Central Government to lay, build, operate or expand City Gas Distribution Projects in Lucknow, Agra cities and Taj Trapezium Zone.

GGL will leave no stone unturned in creating the necessary facilities to cater the City Gas demand of transport, domestic, industrial and commercial customers in its area of operation. GGL is committed, aware and fully focused towards Health, Safety, and Environment (HSE). In this endeavor we have in place systems and processes that match up with the best in the world.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>