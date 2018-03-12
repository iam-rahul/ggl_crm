<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="AdminZone_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .tableStyle {
            width: 80%;
            margin: 2% auto;
        }

        body {
            background-color: rgba(83, 144, 118, 0.58);
        }

        #logindiv {
            position: relative;
            margin: 200px auto;
            width: 500px;
            height: 300px;
            background-image: linear-gradient(90deg, rgb(11, 255, 148) 0%, rgb(0, 162, 91) 100%);
            background-image: -moz-linear-gradient(left, rgb(11, 255, 148) 0%, rgb(0, 162, 91) 100%);
            background-image: -webkit-linear-gradient(left, rgb(11, 255, 148) 0%, rgb(0, 162, 91) 100%);
            background-image: -o-linear-gradient(left, rgb(11, 255, 148) 0%, rgb(0, 162, 91) 100%);
            background-image: -ms-linear-gradient(left, rgb(11, 255, 148) 0%, rgb(0, 162, 91) 100%);
            box-shadow: 0px 30px 60px -5px #000;
            padding: 20px;
            color: white;
            border-radius: 20px;
        }

        .auto-style2 {
        }
        /*-----------------------------------------------------------------------------*/

        #logoHeading {
            width: 370px;
            height: 80px;
            background: -moz-linear-gradient(-45deg, #f85032 0%, #f85032 25%, #f16f5c 50%, #f6290c 51%, #f02f17 71%, #f85032 77%, #e73827 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(-45deg, #f85032 0%,#f85032 25%,#f16f5c 50%,#f6290c 51%,#f02f17 71%,#f85032 77%,#e73827 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(135deg, #f85032 0%,#f85032 25%,#f16f5c 50%,#f6290c 51%,#f02f17 71%,#f85032 77%,#e73827 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            left: 300px;
            top: 70px;
            box-shadow: 0px 15px 50px -5px #000;
            color: white;
            border-radius: 20px;
        }

        #logo {
            width: 100px;
            height: 80px;
            float: left;
        }

        #heading {
            width: 265px;
            height: 80px;
            float: right;
            padding: 20px 0px;
            font-size: 25px;
            font-family:'Century Gothic';
        }

        /*-----------------------------------------------------------------------------*/

        .text {
            border: none;
            width: 89%;
            padding: 5px 20px;
            display: block;
            height: 15px;
            border-radius: 20px;
            background: rgba(66, 247, 22, 0.50);
            border: 2px solid rgba(255, 255, 255,10);
            overflow: hidden;
            margin-top: 5px;
            transition: all 0.5s ease-in-out;
        }

            .text:focus {
                outline: 0;
                border: 2px solid rgba(255, 355, 255, 0.5);
                border-radius: 20px;
                background: rgba(239, 213, 8, 0.15);
            }

                .text:focus + span {
                    opacity: 0.6;
                }

        /*-----------------------------------------------------------------------------*/

        .FGpassword {
            text-align: center;
            display: block;
            margin: 0px auto;
            position: relative;
            text-decoration: none;
            color: rgba(255, 255, 255, 0.5);
            top: -4px;
            left: 0px;
            transition: all 0.5s ease-in-out;
        }

            .FGpassword:hover {
                color: white;
                font-size: 20px;
                text-transform: uppercase;
            }
        /*------------------------------------------------------------------------------*/

        .signin {
            background-image: linear-gradient(90deg, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -moz-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -webkit-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -o-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -ms-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            color: #FFF;
            width: 100%;
            padding: 10px 20px;
            display: block;
            height: 39px;
            border-radius: 20px;
            margin-top: 10px;
            transition: all 0.5s ease-in-out;
            border: none;
            text-transform: uppercase;
        }

            .signin:hover {
                background: #4082f5;
                box-shadow: 0px 4px 35px -5px #4082f5;
                cursor: pointer;
            }

            .signin:focus {
                outline: none;
            }


        /*-----------------------------------------------------------------------------*/
        #linkToHome {
            width: 90px;
            height: 30px;
            background-color: rgba(239, 141, 5, 0.50);
            border: solid rgba(247, 243, 243, 0.60) 3px;
            border-radius: 20px;
            text-align: center;
            top: 215px;
            right: 355px;
            padding: 5px 5px;
            font-size: 24px;
            font-weight: bold;
        }

            #linkToHome a {
                text-decoration: none;
                color: rgba(247, 243, 243, 0.70); /*----white with opacity-----*/
            }

                #linkToHome a:hover {
                    color: rgba(239, 141, 5, 0.60); /*----orange with opacity-----*/
                }

            #linkToHome:hover {
                background-color: rgba(247, 243, 243, 0.50);
                border: solid rgba(239, 141, 5, 0.50) 3px;
            }

        .auto-style3 {
            width: 128px;
            font-size: 22px;
            font-weight: bold;
        }


    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div id="logindiv">

            <table class="tableStyle">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <h2 style=" color: rgba(237, 5, 5, 0.80);">Admin Login</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Admin ID:</td>
                    <td>
                        <asp:TextBox ID="TxtEmailID" CssClass="text" runat="server" Height="26px" Width="214px" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password: </td>
                    <td>
                        <asp:TextBox ID="TxtPassword" CssClass="text" required="required" runat="server" TextMode="Password" Height="26px" Width="214px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Button ID="BtnLogin" CssClass="signin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:HyperLink ID="HLinkForgot" CssClass="FGpassword" runat="server">Forgot Password?</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <div id="logoHeading" style="position: absolute">
            <div id="logo">
                <img src="../images/logoggl.png" style="width: 144px; height: 150px; margin-left: -40px; margin-top: -28px;" />
            </div>
            <div id="heading">Green Gass Limited</div>
        </div>
        <div id="linkToHome" style="position: absolute"><a href="../DefaultHomeGeneral.aspx">HOME</a></div>
    </form>
</body>
</html>
