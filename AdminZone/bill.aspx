<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="AdminZone_bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #wrapper {
            width: 1000px;
            height: 1000px;
            border: solid black 1px;
        }
        #cover {
            width: 800px;
            height: 800px;
            border: solid green 1px;
            margin: 10px auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    Make Bill.
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">
    <div id="wrapper">
        <div id="cover"></div>
    </div>
</asp:Content>

