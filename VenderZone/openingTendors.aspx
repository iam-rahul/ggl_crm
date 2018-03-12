<%@ Page Title="" Language="C#" MasterPageFile="~/VenderZone/VendorMasterPage.master" AutoEventWireup="true" CodeFile="openingTendors.aspx.cs" Inherits="VenderZone_VendorRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #Wrapper {
            width: 700px;
            height:700px;
            margin: 10px auto;
            padding: 20px;
        }
        #inrDiv {
            background-color:rgba(243, 224, 224, 0.76);
            border: solid black 1px;
            box-shadow: 0px 0px 20px 3px;
            margin:10px auto;
            width:600px;
            height:600px;
            overflow:scroll;
            padding:15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" Runat="Server">
    Opening Tendors
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="wrapper">
        <div id="inrDiv">
            <asp:GridView ID="GVNotification" runat="server" AutoGenerateColumns="false" GridLines="None" Width="100%">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%#Eval("tendorHeading") %> <asp:Image runat="server" ID="ImgNew" ImageUrl="../logo-images/new.gif" width="30px" /><asp:HyperLink ID="HyperLink1" runat="server"> <a href="ApplyForTender.aspx" runat="server">Apply</a>   </asp:HyperLink>
                                        <hr />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
        </div>
    </div>
</asp:Content>

