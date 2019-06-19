<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="css/estilos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="box">
        <div>
            <h1>Wallfin</h1>
            <asp:TextBox ID="txtUser" runat="server" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="Button1_Click" />
            <asp:Button ID="btnSignup" runat="server" Text="Signup" OnClick="btnSignup_Click" />
        </div>
    </form>
</body>
</html>
