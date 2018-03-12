<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="VendorRegistration.aspx.cs" Inherits="VendorRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style>
        #background {
            background-image:url('images/lime-green-nature-curve.jpg');
        }
        #Reg {
            padding:3px 0px 25px 0px;
            background-color :rgba(210, 239, 197, 0.70);
            border-radius:10px;
            height: 641px;
        }
        #register_heading {
            width:400px;
            height:50px;
            background: -webkit-linear-gradient(-45deg, #f85032 0%,#f16f5c 34%,#f6290c 67%,#e73827 87%); /* Chrome10-25,Safari5.1-6 */
            border:solid white 2px;
            border-radius:20px;
            margin:2px auto;
        }
   #register_heading h1 {
    text-align:center;
    color:white;
    margin-top:3px;
    margin-bottom:4px;
            height: 39px;
        }
    .table-style1 {
        width: 65%;
        margin:0px auto;
        background:repeating-radial-gradient(circle at 0 0, rgb(0, 162, 91), rgb(0, 228, 128) 100px );
        padding:15px 35px;
        border-radius:20px;
        color:black;
        font-size:20px;
        box-shadow:rgb(143, 137, 137)10px 10px 10px;
        background-color:#
        }
    textarea {
    resize:none;
    height:40px;
    width:180px;
    }
    .inputStyle {
    width :185px;
    height: 20px;

    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="background">
    <div id="Reg">
        
    <div id="register_heading"><h1>Vendor Registration</h1></div>

    <table class="table-style1">
        <tr>
            <td>Name:</td>
            <td>
                <asp:TextBox ID="TxtName" CssClass="inputStyle" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>
                <asp:RadioButton ID="RdbMale" runat="server" Checked="True" GroupName="a" Text="Male" />
                <asp:RadioButton ID="RdbFemale" runat="server" GroupName="a" Text="Female" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Email ID:</td>
            <td>
                <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email" CssClass="inputStyle"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>
                <asp:TextBox ID="TxtAddress"  runat="server" resize="false" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Pin Code:</td>
            <td>
                <asp:TextBox ID="TxtPinCode" runat="server" TextMode="Number" CssClass="inputStyle"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Mobile No.:</td>
            <td>
                <asp:TextBox ID="TxtMobNo" runat="server" CssClass="inputStyle"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Year Of Experiance</td>
            <td>
                <asp:TextBox ID="TxtExperiance" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Contracts Undergo</td>
            <td>
                <asp:TextBox ID="TxtContractsUG" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Upload Photo:</td>
            <td>
                <asp:FileUpload ID="FUPhoto" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Upload ID Proof:</td>
            <td>
                <asp:FileUpload ID="FUIDProof" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="TxtPass" runat="server" TextMode="Password" CssClass="inputStyle"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Confirm Password:</td>
            <td>
                <asp:TextBox ID="TxtCPass" runat="server" TextMode="Password" CssClass="inputStyle"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Type Here <span style="font-size:small">(Code Shown below)</span></td>
            <td>
                <asp:TextBox ID="TxtCaptcha" runat="server" CssClass="inputStyle"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Captcha Code:</td>
            <td>
                <asp:Image ID="ImgCaptcha" runat="server" Height="35px" Width="155px" />
&nbsp;<asp:ImageButton ID="ImgBtnRefresh" runat="server" Height="30px" ImageUrl="~/images/refreshbtn.png" ToolTip="Refresh Code" OnClick="ImgBtnRefresh_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ImageButton ID="ImgBtnRegister" runat="server" Height="46px" ImageUrl="~/images/register_button.png" OnClick="ImgBtnRegister_Click" Width="335px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

  </div>
</div>
</asp:Content>




