<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminZone_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            background-color: rgba(160, 237, 99, 0.64);
        }
        #cover {
            width: auto;
            height: 900px;
            border: solid black 1px;
            margin: 5px auto;
        }
        #TblDash {
            width: 80%;
            height: auto;
            font-size: 35px;
            font-style: oblique;
            margin: 20px auto;
        }

            #TblDash tr td a {
                text-decoration: none;
                color: white;
                font-size: 25px;
            }

            #TblDash tr td {
                background-color: rgba(19, 26, 19, 0.69);
                transition: all 0.5s ease-in-out;
                margin: 2px;
                height: 150px;
                width: 180px;
                text-align: center;
                border-radius: 20px;
                transition: all 0.5s ease-in-out;
                border: none;
                text-transform: uppercase;
            }

                #TblDash tr td:hover {
                    height: 140px;
                    width: 150px;
                    background-image: linear-gradient(90deg, rgba(254, 151, 0, 0.80) 7%, rgba(230, 126, 34, 0.80) 100%);
                    background-image: -moz-linear-gradient(left, rgba(254, 151, 0, 0.80) 7%, rgba(230, 126, 34, 0.80) 100%);
                    background-image: -webkit-linear-gradient(left, rgba(254, 151, 0, 0.80) 7%, rgba(230, 126, 34, 0.80) 100%);
                    background-image: -o-linear-gradient(left, rgba(254, 151, 0, 0.80) 7%, rgba(230, 126, 34, 0.80) 100%);
                    background-image: -ms-linear-gradient(left, rgba(254, 151, 0, 0.80) 7%, rgba(230, 126, 34, 0.80) 100%);
                    border-radius: 100px;
                    border: solid #4cff00 2px;
                    box-shadow: 0px 4px 35px -5px #4082f5;
                    color: black;
                    cursor: pointer;
                }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Admin Page
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <div id="cover">
        <table id="TblDash" style="width: 80%;">
            <tr>
                <td><a href="SendSMS.aspx">Send SMS</a></td>
                <td><a href="SendEmail.aspx">Send Email</a></td>
                <td><a href="complain.aspx">Complain</a></td>
            </tr>
            <tr>
                <td><a href="FeedbackMgmt.aspx">Feedback</a></td>
                <td><a href="NotificationMgmt.aspx">Notification Mgmt</a> </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

