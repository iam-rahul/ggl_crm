<%@ Page Title="" Language="C#" MasterPageFile="~/VenderZone/VendorMasterPage.master" AutoEventWireup="true" CodeFile="DefaultVendorHome.aspx.cs" Inherits="VenderZone_DefaultVendorHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
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
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" runat="Server">
    Dashboard
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" runat="Server">
    <table id="TblDash" style="border-spacing: 11px">
        <tr>
            <td><a href="openingTendors.aspx">New Tendors</a>  </td>
            <td><a href="DiscussionBord.aspx">Discussion Area</a>  </td>
        </tr>
        <tr>
            <td><a href="vendorFeedback.aspx">Feedback</a>  </td>
            <td><a href="vendorComplain.aspx">Any Complain</a>  </td>
        </tr>
        <tr>
            <td><a href="#">Login Detals</a></td>
            <td><a href="VendorMyProfile.aspx">Profile</a>  </td>
        </tr>
    </table>
</asp:Content>



