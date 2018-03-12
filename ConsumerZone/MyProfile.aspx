<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="ConsumerZone_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHPageHead" runat="Server">
    <style>
        #tbl1 {
            width: 95%;
            margin: 5px auto;
            text-align: center;
            font-size: large;
            color: white;
            background-color: rgba(2, 30, 4, 0.65);
            box-shadow: rgba(23, 2, 2, 0.80) 10px 5px 5px;
        }

        /*----------------------------------------------------------------------------------------*/
        .text {
            border: none;
            width: 250px;
            padding: 5px 20px;
            display: block;
            height: 26px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.70);
            border: 2px solid rgba(255, 255, 255,10);
            overflow: hidden;
            margin-top: 5px;
            transition: all 0.5s ease-in-out;
        }

            .text:focus {
                outline: 0;
                border: 2px solid rgba(255, 255, 255, 0.5);
                border-radius: 20px;
                background: rgba(255, 255, 255, 0.50);
            }

                .text:focus + span {
                    opacity: 0.6;
                }
        /*--------------------------------------------------------------------------------------------------*/

        .btnclick {
            background-image: linear-gradient(90deg, rgb(11, 255, 148) 25%, rgb(0, 128, 72) 100%);
            background-image: -moz-linear-gradient(left, rgb(11, 255, 148) 25%, rgb(0, 128, 72) 100%);
            background-image: -webkit-linear-gradient(left, rgb(11, 255, 148) 25%, rgb(0, 128, 72) 100%);
            background-image: -o-linear-gradient(left, rgb(11, 255, 148) 25%, rgb(0, 128, 72) 100%);
            background-image: -ms-linear-gradient(left, rgb(11, 255, 148) 25%, rgb(0, 128, 72) 100%);
            color: #FFF;
            width: 150px;
            display: block;
            height: 25px;
            border-radius: 20px;
            margin: 30px auto;
            transition: all 0.5s ease-in-out;
            border: none;
            text-transform: uppercase;
        }

            .btnclick:hover {
                background: #4082f5;
                box-shadow: 0px 4px 35px -5px #4082f5;
                cursor: pointer;
            }

            .btnclick:focus {
                outline: none;
            }
        /*----------------------------------------------------------------------------------------------*/
        #Imgprofile {
            margin-right: 20px;
            margin-top: 10px;
        }
        /**************-----------------------------*********/
        #Content2 {
            width:400px;
            height:50px;
            background: -webkit-linear-gradient(-45deg, #f85032 0%,#f16f5c 34%,#f6290c 67%,#e73827 87%); /* Chrome10-25,Safari5.1-6 */
            border:solid white 2px;
            border-radius:20px;
            margin:2px auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPHPageHeading" runat="Server">
    MY Profile
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" runat="Server">
    <table id="tbl1">
        <tr>
            <td>Email Id:
                <asp:Label ID="LblEmail" runat="server" Text="Label"></asp:Label><br />
            </td>
            <td>
                <asp:FileUpload ID="FUPicture" runat="server" /></td>
            <td>
                <asp:Button ID="BtnUpdatePic" runat="server" Text="Update" CssClass="btnclick" OnClick="BtnUpdatePic_Click" /></td>
            <td>
                <asp:Image ID="Imgprofile" runat="server" Width="150px" Height="200px" BorderWidth="2px" BorderStyle="Double" BorderColor="white" /></td>
        </tr>
        <tr>
            <td>Name: </td>
            <td>
                <asp:TextBox ID="TxtName" runat="server" CssClass="text" /></td>
        </tr>
        <tr>
            <td>Gender: </td>
            <td>
                <asp:RadioButton ID="RdbMale" runat="server" GroupName="a" Text="Male" />
                <asp:RadioButton ID="RdbFemale" runat="server" GroupName="a" Text="Female" />
            </td>
        </tr>
        <tr>
            <td>Connection Type:</td>
            <td>
                <asp:DropDownList ID="DdlConType" runat="server" CssClass="text">
                    <asp:ListItem Value="">--Select--</asp:ListItem>
                    <asp:ListItem>CNG Connection</asp:ListItem>
                    <asp:ListItem>PNG Connection</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Address: </td>
            <td>
                <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine" CssClass="text" resize="false" /></td>
        </tr>
        <tr>
            <td>State:</td>
            <td>
                <asp:DropDownList ID="DdlState" runat="server" CssClass="text" AutoPostBack="True" OnSelectedIndexChanged="DdlState_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>City:</td>
            <td>
                <asp:DropDownList ID="DdlCity" runat="server" CssClass="text">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Pin Code:</td>
            <td>
                <asp:TextBox ID="TxtPinCode" runat="server" CssClass="text" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mobile No:</td>
            <td>
                <asp:TextBox ID="TxtMobNo" runat="server" CssClass="text"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>You Joined us on-</td>
            <td>
                <asp:Label ID="LblJoinDate" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="BtnEdit" runat="server" OnClick="BtnEdit_Click" Text="Edit Details" CssClass="btnclick" />
                <asp:Button ID="BtnSave" runat="server" OnClick="BtnSave_Click" Text="Save Changes" Visible="False" CssClass="btnclick" />
            </td>
        </tr>
    </table>
</asp:Content>



