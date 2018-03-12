<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="carrer.aspx.cs" Inherits="carrer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #wraper {
            width: 100%;
            height: 1100px;
            background: repeating-radial-gradient(circle at 0 0, rgb(0, 162, 91), rgb(0, 228, 128) 100px );
            margin-top: 5px;
            padding-top: 20px;
        }

        #outer {
            width: 1100px;
            height: 1050px;
            border: solid black 1px;
            margin: 0px auto;
            padding-top: 20px;
        }

        #inrLeft {
            width: 400px;
            height: 1000px;
            float: left;
            margin-left: 20px;
        }
        .Subleft {
            width: 400px;
            height: 465px;
            background-color: rgba(4, 33, 3, 0.70);
            box-shadow: rgba(4, 33, 3, 0.90) 10px 10px 5px;
            color: white;
        }

        #inrRight {
            width: 600px;
            height: 1000px;
            border: solid white 1px;
            float: right;
            margin-right: 20px;
            background-color: rgba(194, 225, 185, 0.64);
            box-shadow: rgba(4, 33, 5, 0.90) 10px 10px 5px;
        }

    
        #headingForm {
            width: 480px;
            height: 90px;
            background: -moz-linear-gradient(-45deg, #f85032 0%, #f85032 25%, #f16f5c 50%, #f6290c 51%, #f02f17 71%, #f85032 77%, #e73827 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(-45deg, #f85032 0%,#f85032 25%,#f16f5c 50%,#f6290c 51%,#f02f17 71%,#f85032 77%,#e73827 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(135deg, #f85032 0%,#f85032 25%,#f16f5c 50%,#f6290c 51%,#f02f17 71%,#f85032 77%,#e73827 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            box-shadow: rgba(4, 33, 5, 0.90) 10px 10px 5px;
            margin: 20px auto;
            color:white;
            padding:5px 10px;
            border:solid white 2px;
        }

        #contentForm {
            padding: 10px;
        }

        #formTable {
            padding: 10px;
            text-align: center;
            font-weight: bold;
            font-size: 18px;
        }
        /*============================================================================================*/
        .text {
            border: none;
            width: 200px;
            padding: 5px 20px;
            height: 24px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.40);
            border: 2px solid rgba(255, 255, 255,30);
            overflow: hidden;
            margin-top: 5px;
            transition: all 0.5s ease-in-out;
        }

            .text:focus {
                outline: 0;
                border: 2px solid rgba(255, 255, 255, 0.6);
                border-radius: 20px;
                background: rgba(0, 0, 0, 0);
            }

                .text:focus + span {
                    opacity: 0.6;
                }


        .text2 {
            border: none;
            width: 70px;
            padding: 2px 10px;
            height: 22px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.40);
            border: 2px solid rgba(255, 255, 255,20);
            overflow: hidden;
            margin-top: 5px;
            transition: all 0.5s ease-in-out;
        }

            .text2:focus {
                outline: 0;
                border: 2px solid rgba(255, 255, 255, 0.6);
                border-radius: 20px;
                background: rgba(0, 0, 0, 0);
            }

                .text2:focus + span {
                    opacity: 0.7;
                }
        /*============================================================================================*/

        .signin {
            background-image: linear-gradient(90deg, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -moz-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -webkit-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -o-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            background-image: -ms-linear-gradient(left, rgb(0, 162, 91) 17%, rgb(0, 245, 138) 100%);
            color: #FFF;
            padding: 10px 20px;
            height: 35px;
            border-radius: 20px;
            margin: 5px auto;
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

        /*=======================================================================================================*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="wraper">
        <div id="outer">
            <div id="inrLeft">
                <div class="Subleft">
                    <div style="width:400px; height:200px;">
                        <img src="images/gglrecruitment.jpg" style="width:250px; height:195px; margin-left:70px; padding:5px;"/>
                    </div>
                    <div style="width:380px; height:250px; border:dotted white 1px; padding:5px 10px;">
                        New Branch of GGL is going to open in Gorakhpur since November.<br /><hr />
                        There is a 2 vacancies in Aligang CNG Gas pump
                    </div>
                </div>
                <br />
                <br />
                <hr />
                <br />
                <div class="Subleft"></div>
            </div>
            <div id="inrRight">
                <div id="headingForm">
                    <b>Hello.</b>.. If You were Interested to do work in our Ourganigation, Then You were Need to fill this <b>ENQUIRY FORM</b> and submit your <b>Resume</b>.
                    if there is any job which suts Your Resume then we call you for an <i>Interview</i>.
                </div>
                <div id="contentForm">
                    <table style="width: 90%;" id="formTable">
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td colspan="2">&nbsp;</td>

                        </tr>
                        <tr>
                            <td class="auto-style3">First Name</td>
                            <td colspan="2">
                                <asp:TextBox ID="TxtfirstName" runat="server" Width="200px" placeholder="first name" CssClass="text"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td class="auto-style3">Last Name</td>
                            <td colspan="2">
                                <asp:TextBox ID="TxtlastName" runat="server" Width="200px" CssClass="text"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td class="auto-style3">Email Address</td>
                            <td colspan="2">
                                <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email" placeholder="enter e-mail address" CssClass="text"></asp:TextBox>
                        </tr>
                        <tr>
                            <td class="auto-style3">Contact Number</td>
                            <td colspan="2">
                                <asp:TextBox ID="TxtContact" runat="server" TextMode="Number" placeholder="enter contact number" CssClass="text"></asp:TextBox>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="3">
                                <hr />
                                &nbsp;</td>

                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="3"><i><u>Qualification</u></i></td>

                        </tr>
                        <tr>
                            <td class="auto-styl">Class </td>
                            <td class="auto-style2">Bord</td>

                            <td>Percentage</td>

                        </tr>
                        <tr>
                            <td class="auto-style3">10th</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TxtHSbord" runat="server" Width="135px" CssClass="text2"></asp:TextBox>
                            </td>

                            <td>
                                <asp:TextBox ID="TxtHSper" runat="server" Width="135px" CssClass="text2"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td class="auto-style3">12th</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TxtInter" runat="server" Width="135px" CssClass="text2"></asp:TextBox>
                            </td>

                            <td>
                                <asp:TextBox ID="TxtInterPer" runat="server" Width="135px" CssClass="text2"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td class="auto-style3">Graduation</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TxtUG" runat="server" Width="135px" CssClass="text2"></asp:TextBox>
                            </td>

                            <td>
                                <asp:TextBox ID="TxtUGper" runat="server" Width="135px" CssClass="text2"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td class="auto-style3">Post Graduation (if done)</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TxtPG" runat="server" Width="135px" CssClass="text2"></asp:TextBox>
                            </td>

                            <td>
                                <asp:TextBox ID="TxtPGper" runat="server" Width="135px" CssClass="text2"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td class="auto-style3" colspan="3">
                                <hr />
                                &nbsp;</td>

                        </tr>
                        <tr>
                            <td class="auto-style3">Upload Resume</td>
                            <td colspan="2">
                                <asp:FileUpload ID="FileResume" runat="server" CssClass="text" />
                            </td>

                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td colspan="2">&nbsp;</td>

                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td colspan="2">&nbsp;</td>

                        </tr>
                        <tr>
                            <td class="auto-style3" colspan="3">
                                <asp:Button ID="BtnApply" runat="server" Text="Apply" Width="450px" CssClass="signin" OnClick="BtnApply_Click" />
                            </td>

                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

