<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/LoginStyleSheet.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style6 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="logindiv">

            <table class="table-style2">
                <tr>
                    <td class="auto-style4" rowspan="2">
                        <img alt="GGL Logo" class="auto-style3" src="logo-images/green3.png" /></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <h2 style="height: 40px">GGL CRM Users Login</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Email ID:</td>
                    <td>
                        <asp:TextBox TextMode="Email" ID="TxtEmailID" CssClass="text" runat="server" Height="22px" Width="214px" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password: </td>
                    <td>
                        <asp:TextBox ID="TxtPassword" required="required" CssClass="text" runat="server" TextMode="Password" Height="22px" Width="214px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">User Type:</td>
                    <td>
                        <asp:DropDownList ID="Ddlconnection_Type" required="required" CssClass="text" runat="server" Height="28px" Width="218px">
                            <asp:ListItem Value="">--Select--</asp:ListItem>
                            <asp:ListItem>Consumer</asp:ListItem>
                            <asp:ListItem>Vendor</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass="signin" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <input type="checkbox" id="checkbox-1-1" class="customcheckbox" />
                        <label for="checkbox-1-1" class="customlabel">Keep me Signed in</label>&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style4" colspan="2">
                        <input type="reset" value="Cancel" class="signin" />&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style6" colspan="2">&nbsp,<hr />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:HyperLink ID="HLinkForgot" runat="server"  CssClass="FGpassword" NavigateUrl="#dialog">Forget Password?</asp:HyperLink>

                        <%--<asp:HyperLink ID="HLinkForgot" runat="server" CssClass="FGpassword" onclick="showVarify()">Forgot Password?</asp:HyperLink>--%>
                    </td>
                </tr>
               
            </table>
        </div>
        <div id="heading_after">
            <div id="logo_pic">
                <img alt="ggl logo" class="auto-style5" src="images/logoggl.png" /></div>
            <div id="logo_heading"><a href="DefaultHomeGeneral.aspx">Green Gas Limited</a></div>
        </div>
        
<%--        cfhgvhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh--%>

        <div id="dialog" class="opendialog" >
            <div>
               <table style="width:100%">
                   <tr>
                       <td><h2>Varify Your Account</h2></td>
                       <td align="right"><a href="#close">
                        <img src="images/close.jpeg" width="30px" height="30px" /> </a></td>
                   </tr>
                   <tr>
                       <td colspan="2">
                       <asp:TextBox ID="TxtVerEmail" TextMode="Email" runat ="server"  placeholder="Enter Your EmailID..." Height="22px" Width="331px" Font-Size="Large" />
                       </td>
                   </tr>
                   <tr>
                       <td>
                       <br /><br />
                       <asp:Button ID="BtnNext" runat ="server" Text="Next" ForeColor="White"  BackColor="LawnGreen" Font-Size="X-Large" OnClick="BtnNext_Click" />
                       </td>
                   </tr>
                   <tr>
                       <td colspan="2">
                       <asp:Label ID="LblLastDigits" Font-Size="Large" runat ="server" ForeColor="Maroon" Visible="false" />
                       </td>
                   </tr>
                   <tr>                       
                       <td colspan="2">
                       <br />
                       <asp:TextBox ID="TxtMobNo" TextMode="Number" runat ="server"  placeholder="Enter MobileNo..." Height="25px" Width="331px" Font-Size="Large" Visible="false" />
                       <br /><br />
                       </td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Button ID="BtnGetCode" runat ="server" Text="Get Varification Code" ForeColor="White"  BackColor="LawnGreen" Font-Size="X-Large" Visible="false" OnClick="BtnGetCode_Click" />                       
                       </td>
                   </tr>
               </table>
            </div>
        </div>
         <%--Reset Pasword--%>
        <div id="reset" class="opendialog" >
            <div>
               <table style="width:100%">
                   <tr>
                       <td><h2>Reset Your Password</h2></td>
                       <td align="right"><a href="#close">
                       <img src="images/close.jpeg" width="30px" height="30px" /> </a></td>
                   </tr>
                   <tr>
                       <td colspan="2">
                       <asp:TextBox ID="TxtCode"  runat ="server"  placeholder="Type here varification code..." Height="25px" Width="331px" Font-Size="Large" />
                       <br /><br />
                       </td>
                   </tr>                  
                   <tr>                       
                       <td colspan="2">
                       <asp:TextBox ID="TxtNewPass" TextMode="Password" runat ="server"  placeholder="Enter new password..." Height="25px" Width="331px" Font-Size="Large" />
                       <br /><br/>
                       </td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Button ID="BtnChange" runat ="server" Text="Change Password" ForeColor="White"  BackColor="LawnGreen" Font-Size="X-Large" OnClick="BtnChange_Click" />                       
                       </td>
                   </tr>
               </table>
            </div>
        </div>

    </form>
</body>
</html>
