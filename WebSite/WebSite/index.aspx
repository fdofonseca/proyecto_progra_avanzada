﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <%--<link href="css/estilos.css" rel="stylesheet" />--%>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-primary">
    <form id="form1" runat="server" class="box">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container" style="margin-top: 5%">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Bienvenido!</h1>
                                        </div>
                                        <form class="user">
                                            <div class="form-group">
                                                <asp:TextBox ID="txtUser" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese su Rut (11.111.111-1)" TextMode="SingleLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvNombreasd" runat="server" Width="250%" ForeColor="Red"
                                                    ErrorMessage="Debe ingresar su Rut"
                                                    ControlToValidate="txtUser" EnableClientScript="false">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="txtPassword" runat="server" class="form-control form-control-user" placeholder="Ingrese su contraseña" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Width="250%" ForeColor="Red"
                                                    ErrorMessage="Debe ingresar su Password"
                                                    ControlToValidate="txtPassword" EnableClientScript="false">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary btn-user btn-block" OnClick="Button1_Click1" />
                                            </a>
                                          
         
                                        </form>
                                        <hr>
                                        <div class="text-center">
                                            <a class="small" href="forgot-password.html">¿Olvidaste tu contraseña?</a>
                                        </div>
                                        <div class="text-center">
                                            <a class="small" href="signup.aspx">¡Unete Ahora!</a>
                                        </div>
                                    </div>
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
