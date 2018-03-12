<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo3.aspx.cs" Inherits="Demo3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Enter Data:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtNormalData" runat="server"></asp:TextBox>
        <br />
        <br />
        Encrypted Data:
        <asp:TextBox ID="TxtEncryptedData" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BtnEncrypt" runat="server" OnClick="BtnEncrypt_Click" Text="Encrypt Now" />
    
    </div>
    </form>
</body>
</html>
