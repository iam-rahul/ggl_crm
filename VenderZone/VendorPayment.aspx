<%@ Page Title="" Language="C#" MasterPageFile="~/VenderZone/VendorMasterPage.master" AutoEventWireup="true" CodeFile="VendorPayment.aspx.cs" Inherits="VenderZone_VendorPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #Wrapper {
            width: 700px;
            height:700px;
            margin: 10px auto;
            padding: 20px;
            background-color: silver;
        }
        #inrDiv {
            background-color:silver;
            border: solid black 1px;
            margin:10px auto;
            width:600px;
            height:600px;
            overflow:scroll;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" Runat="Server">
    Payment Details
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="wrapper">
        <div id="inrDiv">

        </div>
    </div>
</asp:Content>

