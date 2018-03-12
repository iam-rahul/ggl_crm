<%@ Page Title="" Language="C#" MasterPageFile="~/VenderZone/VendorMasterPage.master" AutoEventWireup="true" CodeFile="DiscussionBord.aspx.cs" Inherits="VenderZone_DiscussionBord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
    #dv1 {
    width:98%;
    height:auto;
    background-color:rgba(0, 255, 255, 0.47);
    padding:1%;
    }
    textarea {
    width:95%;
    margin:5px 10px;
    padding:5px;
    height:70px;
    font-size:23px;
    resize:none;
    border-radius:9px;
    }
    .opendialog {
    position:fixed;
    top:0;
    bottom:0;
    left:0;
    right:0;
    background-color:rgba(69, 66, 66, 0.52);
    opacity:0;
    pointer-events:none;
    }
        .opendialog div {
        width:55%;
        margin:10% auto;
        padding:5px 20px 20px 20px;
        background-color:#ddefe7;
        }
        .opendialog:target {
        opacity:1;
        pointer-events:all;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHPageHeading" Runat="Server">
    Vendor Discussion Bord
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">

    <div id="dv1">
        <asp:TextBox ID="TxtQuestion" runat ="server" TextMode="MultiLine" placeholder="Type your question here..." />
        <br />
        &nbsp;
        <asp:Button ID="BtnPost" runat="server" BackColor="DeepSkyBlue" ForeColor="White" Font-Size="20px" Text="Post Now" OnClick="BtnPost_Click" />
    <br /><br />
        <asp:GridView ID="GVFirst" runat="server" ForeColor="Maroon" Width="100%" Font-Size="20px" AutoGenerateColumns="false" OnRowCommand="GVFirst_RowCommand" ShowHeader="false" AllowPaging="True" PageSize="2" OnPageIndexChanging="GVFirst_PageIndexChanging">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table style="padding:8px">
                            <tr>
                                <td rowspan="2">
                                    
    <asp:Image ID="ImgUserPic" runat="server" style="width:60px;height:60px;border-radius:30px" ImageUrl='<%# string.Concat("~/UserPics/",Eval("file_name")) %>'  />
                                </td>
                                <td> 
                                    <asp:Label ID="LblName" runat="server" ForeColor="White" Text='<%#Eval("Name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="LblEmail" runat="server" ForeColor="White" Text='<%#Eval("UserID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="color:#5f0505; font-weight:bold;">QID: <asp:Label ID="LblQID" runat="server" ForeColor="White" Text='<%#Eval("Question_ID") %>'/></td>
                                <td style="color:#5f0505; font-weight:bold;">Posted On: <asp:Label ID="LblPostedOn" runat="server" ForeColor="White" Text='<%#Eval("PostedOn") %>' /></td>
                            </tr>
                            <tr>
                                <td colspan="2"  style="color:#5f0505; font-weight:bold;">Question: 
                                    <asp:Label ID="LblQuestion" runat="server" style="color:#e5e2e2; text-decoration:overline; font-weight:normal;" Text='<%#Eval("Question") %>'/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                            <asp:LinkButton ID="LnkBtnReply" runat="server" Text="Reply"  style="color:rgba(251, 35, 5, 0.96); text-decoration:none; font-weight:bold;" CommandName="reply" CommandArgument='<%#Eval("Question_id") %>' />
                               </td>
                                <td>
                            <asp:LinkButton ID="LnkBtnShow" runat="server" Text="Show Answers" style="color:rgba(251, 35, 5, 0.96); text-decoration:none; font-weight:bold;" CommandName="show" CommandArgument='<%#Eval("Question_id") %>' />                               </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:GridView ID="GVSecond" runat="server" AutoGenerateColumns="false" Width="150%" ShowHeader="false"  style="margin:5px 5%;" ForeColor="Blue" BackColor="YellowGreen" Font-Size="18px">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <table style="padding:10px">
                                                        <tr>
                                                            <td rowspan="2"><asp:Image ID="ImgAnsUPic" runat="server" ImageUrl='<%#string.Concat("~/UserPics/",Eval("file_name")) %>' Width="60px" Height="60px" style="border:solid #5f0505 2px; border-radius:20px;"/> </td>
                                                            <td><asp:Label ID="LblName" runat ="server" Text='<%#Eval("name") %>' ForeColor="#5f0505" /> </td>
                                                        </tr>
                                                        <tr>
                                                            <td><asp:Label ID="Label1" runat ="server" Text='<%#Eval("User_ID") %>' ForeColor="#5f0505" /> </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" style="color:#5f0505; font-weight:bold;">
                                                            Answer: <asp:Label ID="Label2" runat ="server" Text='<%#Eval("Answer") %>' ForeColor="White" /> 
                                                            </td>
                                                      </tr>
                                                        <tr>
                                                            <td colspan="2" style="color:#5f0505; font-weight:bold;">
                                                            Posted On: <asp:Label ID="Label3" runat ="server" Text='<%#Eval("PostedOn") %>' ForeColor="White" />
                                                            </td>
                                                       </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <div id="dialog" class="opendialog" >
            <div>
               <table style="width:100%">
                   <tr>
                       <td><h2>Write your own answer</h2></td>
                       <td align="right"><a href="#close">
         <img src="../images/close.jpeg" width="30px" height="30px" /> </a></td>
                   </tr>
                   <tr>
                       <td colspan="2">
                       <asp:TextBox ID="TxtAnswer" runat ="server" TextMode="MultiLine" placeholder="Write here..." />
                           </td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Button ID="BtnAddAnswer" runat ="server" Text="Add Answer" ForeColor="White"  BackColor="LawnGreen" Font-Size="X-Large" OnClick="BtnAddAnswer_Click" />
                       </td>
                   </tr>
               </table>
            </div>
        </div>
    </div>


</asp:Content>

