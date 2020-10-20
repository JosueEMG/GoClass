<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UnitClass | Registro</title>

        <!--JQUERY-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <!-- Los iconos tipo Solid de Fontawesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

        <!-- STYLESESION-->
            <link href="../css/cssSlider/styleRegistro.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="modal-dialog text-center">
            <div class="col-sm-8 main-section">
                <div class="modal-content">
                    <div class="col-12 user-img">
                        <img src="../img/imagenSesion/user_icon.png" th:src="@{imagenSesion/user_icon.png}"/>
                    </div>
                    <form class="col-12" th:action="@{/login}" method="get">
                        <h3 style="color: white">Registro</h3>
                        
                        <!-- NOMBRES -->
                        <div class="form-group" id="user-group">
                            <input type="text" class="form-control" placeholder="Nombres" name="Nombres"/>
                        </div>
                        <!-- APELLIDOS -->
                        <div class="form-group" id="user-group">
                            <input type="text" class="form-control" placeholder="Apellidos" name="Nombres"/>
                        </div>
                        <!-- PASSWORD -->
                        <div class="form-group" id="contrasena-group">
                            <input type="password" class="form-control" placeholder="Contrasena" name="password"/>
                        </div>
                        <!-- FECHA NACIMIENTO -->
                        <div class="form-group" id="calendar-group">
                            <input type="date" class="form-control" placeholder="nacimiento" name="nacimiento"/>
                        </div>
                        <!-- CORREO -->
                        <div class="form-group" id="correo-group">
                            <input type="text" class="form-control" placeholder="Correo" name="Correo"/>
                        </div>
                        <!-- DNI -->
                        <div class="form-group" id="dni-group">
                            <input type="text" class="form-control" placeholder="DNI" name="DNI"/>
                        </div>
                        <button type="submit" class="btn btn-primary"><i class="fas fa-user-plus"></i></i>  Registrar </button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
