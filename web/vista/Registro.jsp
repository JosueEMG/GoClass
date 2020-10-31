<%-- 
    Document   : Registro
    Created on : 23-oct-2020, 17:27:26
    Author     : Josue Emmanuel Medina Garcia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession ses = request.getSession();
    if (ses.getAttribute("tipo") != null) {
        response.sendRedirect("Tienda.jsp");
    }
    else {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>UnitClass | Registro</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="../css/css/all.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="../css/css/icheck-bootstrap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../css/adminlte.min.css">
        <!-- Google Font: Source Sans Pro -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
        <link href="../css/cssSlider/styleRegistro.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="hold-transition register-page body-img-chico-gay">
        <div class="register-box">
            <div class="register-logo">
                <a href="index.jsp">
                    <img class="img-circle"src="../img/unitclass_icon.png" alt=""/>
                    <b>Unit</b>Class
                </a>
            </div>
            <div class="card">
                <div class="card-body register-card-body">
                    <p class="login-box-msg">Ingrese valores a todos los campos</p>
                    <form id="formulario">
                        <div class="input-group mb-3">
                            <input type="text" id="nombre" class="form-control" placeholder="Nombres" required/>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="text" id="apellido" class="form-control" placeholder="Apellidos" required/>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="date" id="fecha" class="form-control" placeholder="nacimiento" required/>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-calendar"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="text" id="correo" class="form-control" placeholder="Correo" required/>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="text" id="dni" class="form-control" placeholder="DNI" required/>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-credit-card"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <select id="sexo" class="form-control"required>
                                <option>Masculino</option>
                                <option>Femenino</option>
                                <option>Otro</option>
                            </select>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" id="contrasena" class="form-control" placeholder="Contrasena" required/>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" id="confirmar" class="form-control" placeholder="Confirmar contrasena" required/>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <!-- /.col -->
                        <center>
                            <div class="col-8">
                                <button type="submit" class="btn btn-primary btn-block">Registrar</button>
                            </div>
                        </center>
                        <!-- /.col -->
                    </form>
                    <p>
                        <a href="Login.jsp" class="text-center">Tengo una cuenta</a>
                    </p>
                </div>
                <!-- /.form-box -->
            </div><!-- /.card -->
        </div>
        <!-- /.register-box -->

        <!-- jQuery -->
        <script src="../js/jquery-3.5.1.min.js" type="text/javascript"></script>
        <!-- Bootstrap 4 -->
        <script src="../js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="../js/adminlte.min.js" type="text/javascript"></script>
    </body>
</html>
<%
    }
%>
<script>
    $(document).ready(function () {
        
        $("#formulario").submit((e)=>{
            var nombre = $("#nombre").val();
            var apellido = $("#apellido").val();
            var fecha = $("#fecha").val();
            var correo = $("#correo").val();
            var dni = $("#dni").val();
            var sexo = $("#sexo").val();
            var contrasena = $("#contrasena").val();
            var confirmarContrasena = $("#confirmar").val();
            var opc = "3";
            
            if (contrasena === confirmarContrasena) {
                $.post("../GestionLogin", {opc, dni}, (response) => {
                    console.log(response);
                    if (response == "noexiste") {
                        opc = "4";
                        $.post("../GestionLogin", {opc, nombre, apellido, fecha, correo, dni, sexo, contrasena}, (response) => {
                            window.location = "Login.jsp"; 
                        })
                    }
                    else {
                        alert("El DNI ingresado ya se encuentra registrado")
                    }
                })
            }
            else {
                alert("Las contraseñas no coinciden");
            }
            e.preventDefault();
        })
    })
</script>
