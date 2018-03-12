<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="DiscussionBoard.aspx.cs" Inherits="AdminZone_DiscussionBoard" %>

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
    font-size:large;
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
<asp:Content ID="Content2" ContentPlaceHolderID="CPHeading" Runat="Server">
    discssion Bord
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPMain" Runat="Server">

    <div id="dv1">
        <asp:TextBox ID="TxtQuestion" runat ="server" TextMode="MultiLine" placeholder="Type your question here..." />
        <br />
        &nbsp;
        <asp:Button ID="BtnPost" runat="server" BackColor="DeepSkyBlue" ForeColor="White" Font-Size="X-Large" Text="Post Now" OnClick="BtnPost_Click" />
    <br /><br />
        <asp:GridView ID="GVFirst" runat="server" ForeColor="Maroon" Width="100%" Font-Size="x-Large" AutoGenerateColumns="false" OnRowCommand="GVFirst_RowCommand" ShowHeader="false" AllowPaging="True" PageSize="2" OnPageIndexChanging="GVFirst_PageIndexChanging">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table style="padding:8px">
                            <tr>
                                <td rowspan="2">
                                    
    <asp:Image ID="ImgUserPic" runat="server" style="width:60px;height:60px;border-radius:30px" ImageUrl='<%# string.Concat("~/UserPics/",Eval("file_name")) %>'  />
                                </td>
                                <td> 
                                    <asp:Label ID="LblName" runat="server" ForeColor="White" Text='<%#Eval("name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="LblEmail" runat="server" ForeColor="White" Text='<%#Eval("userid") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>QID: <asp:Label ID="LblQID" runat="server" ForeColor="White" Text='<%#Eval("Question_ID") %>'/></td>
                                <td>Posted On: <asp:Label ID="LblPostedOn" runat="server" ForeColor="White" Text='<%#Eval("PostedOn") %>' /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    Question: 
                                    <asp:Label ID="LblQuestion" runat="server" ForeColor="White" Text='<%#Eval("Question") %>'/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                            <asp:LinkButton ID="LnkBtnReply" runat="server" Text="Reply" CommandName="reply" CommandArgument='<%#Eval("questionid") %>' />
                               </td>
                                <td>
                            <asp:LinkButton ID="LnkBtnShow" runat="server" Text="Show Answers" CommandName="show" CommandArgument='<%#Eval("questionid") %>' />                               </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:GridView ID="GVSecond" runat="server" AutoGenerateColumns="false" Width="150%" ShowHeader="false"  style="margin:5px 5%;" ForeColor="Blue" BackColor="YellowGreen" Font-Size="X-Large">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <table style="padding:10px">
                                                        <tr>
                                                            <td rowspan="2"><asp:Image ID="ImgAnsUPic" runat="server" ImageUrl='<%#string.Concat("~/UserPics/",Eval("filename")) %>' Width="60px" Height="60px" BorderColor="Maroon"  BorderWidth="2px" BorderStyle="Solid"/> </td>
                                                            <td><asp:Label ID="LblName" runat ="server" Text='<%#Eval("name") %>' ForeColor="White" /> </td>
                                                        </tr>
                                                        <tr>
                                                            <td><asp:Label ID="Label1" runat ="server" Text='<%#Eval("userid") %>' ForeColor="White" /> </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                            Answer: <asp:Label ID="Label2" runat ="server" Text='<%#Eval("answer") %>' ForeColor="White" /> 
                                                            </td>
                                                      </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                            Posted On: <asp:Label ID="Label3" runat ="server" Text='<%#Eval("postedon") %>' ForeColor="White" />
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

