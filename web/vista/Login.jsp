<%-- 
    Document   : login
    Created on : 23-oct-2020, 16:22:30
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
        <title>UnitClass | Login</title>
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
        <link href="../css/cssSlider/styleSesion.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="hold-transition login-page body-img-chica-bonita">
        <div class="login-box">
            <div class="login-logo">
                <a href="https://unticlass.azurewebsites.net/vista/index.jsp">
                    <img class="img-circle"src="../img/unitclass_icon.png" alt=""/>
                    <b>Unit</b>Class
                </a>
            </div>
            <!-- /.login-logo -->
            <div class="card">
                <div class="card-body login-card-body">
                    <p class="login-box-msg">Ingrese sus datos para iniciar la sesion</p>
                    <form action="../GestionLogin?opc=1" method="post">
                        <div class="input-group mb-3">
                            <input type="text" name="dni" class="form-control" placeholder="DNI">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" name="contrasena" class="form-control" placeholder="Contraseña">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <center>
                            <div class="col-8">
                                <button type="submit" class="btn btn-primary btn-block">Ingresar</button>
                            </div>
                        </center>
                        <!-- /.col -->
                    </form>
                    <div class="social-auth-links text-center mb-3">
                        <p>- O también -</p>
                    </div>
                    <p>
                        <a href="Registro.jsp" class="text-center">Crear una cuenta</a>
                    </p>
                </div>
                <!-- /.login-card-body -->
            </div>
        </div>
        <!-- /.login-box -->

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

