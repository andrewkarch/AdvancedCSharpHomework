<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment13Final.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Troll University: Assignment 13</title>
  <link href="Main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Scripts/jquery-1.11.0.js"></script>
<script type="text/javascript" src="Scripts/jquery-ui-1.10.3.js"></script>

</head>
<body>
  <div id="page">
  <div id="header">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/banner.jpg" />
  </div>
  <div id="main">		
    <form id="form1" runat="server">
    <div id="login">
        User: anne<br />
        Password: andrew@@
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
        <br />
    </div>
    </form>
  </div>
  </div>
</body>
</html>