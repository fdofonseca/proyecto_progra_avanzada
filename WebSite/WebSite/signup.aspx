<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-primary">
    <form id="form1" runat="server" class="box" style="margin-top: 7%">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                        <div class="col-lg-7">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Registrate Ahora!</h1>
                                </div>
                                <form class="user">
                                    <div class="form-group row">
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <asp:TextBox ID="txtName" runat="server" class="form-control form-control-user" placeholder="Nombre"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfApellidoUsuario" runat="server" Width="250%" ForeColor="Red"
                                                ErrorMessage="Debe ingresar un nombre "
                                                ControlToValidate="txtName" EnableClientScript="false">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="txtLastName" runat="server" class="form-control form-control-user" placeholder="Apellido"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" Width="250%" ForeColor="Red"
                                                ErrorMessage="Debe ingresar un apellido"
                                                ControlToValidate="txtLastName" EnableClientScript="false">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtNewUser" runat="server" class="form-control form-control-user" placeholder="Rut"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Width="250%" ForeColor="Red"
                                            ErrorMessage="Debe ingresar un Rut"
                                            ControlToValidate="txtNewUser" EnableClientScript="false">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <asp:TextBox ID="txtNewPassword" runat="server" class="form-control form-control-user" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Width="250%" ForeColor="Red"
                                                ErrorMessage="Debe ingresar una Contraseña"
                                                ControlToValidate="txtNewPassword" EnableClientScript="false">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="txtNewPassword2" runat="server" class="form-control form-control-user" placeholder="Repetir Contraseña" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Width="250%" ForeColor="Red"
                                                ErrorMessage="Debe ingresar una Contraseña"
                                                ControlToValidate="txtNewPassword2" EnableClientScript="false">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnRegister" runat="server" Text="Registrar" class="btn btn-primary btn-user btn-block" OnClick="btnRegister_Click1" />
                                    </a>
                                    <hr>
                                </form>


                                <div class="text-center">
                                    <a class="small" href="index.aspx">Tienes una cuenta? Ingresa!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>
    </form>
</body>
</html>
