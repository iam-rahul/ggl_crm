<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="ConsumerZone_Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function manageHistory() {
            window.history.forward();
            window.setTimeout("window.location.href='../Login.aspx'", 100);
        }
    </script>
</head>
<body bgcolor="cyan" onload="manageHistory()">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
