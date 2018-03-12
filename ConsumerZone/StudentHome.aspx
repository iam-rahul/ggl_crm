<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="StudentHome.aspx.cs" Inherits="ConsumerZone_StudentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHPageHead" runat="Server">
    <style>
        #TblDash {
            width: 100%;
            height: auto;
            font-size: 35px;
            font-style: oblique;
            margin: 30px 2px;
        }

            #TblDash tr td a {
                text-decoration: none;
                color: white;
                font-size: 25px;
            }

            #TblDash tr td {
                background-color: rgba(19, 26, 19, 0.69);
                margin: 2px;
                height: 140px;
                width: 180px;
                text-align: center;
                border-radius: 20px;
                /*transition: all 0.5s ease-in-out;*/
                transition: width 1s linear 2s;
                border: none;
                text-transform: uppercase;
            }

                #TblDash tr td:hover {
                    height: 140px;
                    width: 150px;
                    /*-webkit-transform: rotate(10deg);
                    transform: skew(15deg,20deg);
                    transform:matrix(0.866,0.5,-0.5,0.866,0,0);*/
                    
                    background-image: linear-gradient(90deg, rgba(206, 179, 38, 0.60) 25%, rgb(254, 234, 97) 100%);
                    background-image: -moz-linear-gradient(left, rgb(206, 179, 38) 25%, rgb(254, 234, 97) 100%);
                    background-image: -webkit-linear-gradient(left, rgb(206, 179, 38) 25%, rgba(254, 234, 97 0.60) 100%);
                    background-image: -o-linear-gradient(left, rgb(206, 179, 38) 25%, rgb(254, 234, 97) 100%);
                    background-image: -ms-linear-gradient(left, rgb(206, 179, 38) 25%, rgb(254, 234, 97) 100%);
                    border-radius: 150px;
                    border: solid #4cff00 2px;
                    box-shadow: 0px 4px 35px -5px #4082f5;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" runat="Server">
    Dashboard
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" runat="Server">
    <table id="TblDash" style="border-spacing: 10px">
        <tr>
            <td><a href="#">Offers</a></td>
            <td><a href="#">Orders</a></td>
            <td><a href="#">Discussion Board</a></td>
        </tr>
        <tr>
            <td><a href="#">Products</a></td>
            <td><a href="#">Feedback</a></td>
            <td><a href="#">Complain</a></td>
        </tr>
        <tr>
            <td><a href="#">Login Detals</a></td>
            <td><a href="#">My Profile</a></td>
            <td><a href="#">Change Password</a></td>
        </tr>
    </table>
</asp:Content>

