<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Signup</title>
    <link href="css/estilosSignup.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
</head>
<body>
    <form id="form1" runat="server" class="box">
        <div>
             <h1>Signup</h1>
            <asp:TextBox ID="txtName" runat="server" placeholder="Nombre"></asp:TextBox>
            <asp:TextBox ID="txtLastName" runat="server" placeholder="Apellido"></asp:TextBox>
            <asp:TextBox ID="txtNewUser" runat="server" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            <asp:TextBox ID="txtNewPassword2" runat="server" TextMode="Password" placeholder="Repeat Password"></asp:TextBox>
             <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
        </div>
    </form>

</body>
</html>
