<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Signup</title>
    <link href="css/estilosSignup.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>


</head>
<body>
    <div id="load"></div>
    <div id="contents">
        <form id="form1" runat="server" class="box">

            <div>
                <h1>Signup</h1>
                <asp:TextBox ID="txtName" runat="server" placeholder="Nombre"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsuario" runat="server"
                    ErrorMessage="Debe ingresar el Nombre de Usuario"
                    ControlToValidate="txtName" EnableClientScript="false">
                </asp:RequiredFieldValidator>

                <asp:TextBox ID="txtLastName" runat="server" placeholder="Apellido"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="Debe ingresar el Apellido de Usuario"
                    ControlToValidate="txtLastName" EnableClientScript="false">
                </asp:RequiredFieldValidator>

                <asp:TextBox ID="txtNewUser" runat="server" placeholder="Ingrese Rut 11-111-111-1" MaxLength="12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Debe ingresar el Rut de Usuario"
                    ControlToValidate="txtNewUser" EnableClientScript="false">
                </asp:RequiredFieldValidator>

                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Debe ingresar el Password de Usuario"
                    ControlToValidate="txtNewPassword" EnableClientScript="false">
                </asp:RequiredFieldValidator>

                <asp:TextBox ID="txtNewPassword2" runat="server" TextMode="Password" placeholder="Repeat Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ErrorMessage="Debe ingresar el Password de Usuario"
                    ControlToValidate="txtNewPassword2" EnableClientScript="false">
                </asp:RequiredFieldValidator>

                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
            </div>
        </form>
    </div>
</body>
</html>
