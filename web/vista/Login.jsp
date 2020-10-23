<%-- 
    Document   : sesion
    Created on : 15/10/2020, 09:19:44 AM
    Author     : JuanCML
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UnitClass | Sesión</title>

        <!--JQUERY-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <!-- Los iconos tipo Solid de Fontawesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

        <!-- STYLESESION-->
        <link href="../css/cssSlider/styleSesion.css" rel="stylesheet" type="text/css"/>


    </head>
    <body>
        <div class="modal-dialog text-center">
            <center>
                <div class="col-sm-8 main-section">
                <div class="modal-content">
                    <div class="col-12 user-img">
                        <img src="../img/unitclass_icon.png" th:src="@{imagenSesion/user_icon.png}"/>
                    </div>
                    <form action="../GestionLogin?opc=1" class="col-12" method="post">
                        <h3 style="color: white">Login</h3>
                        <div class="form-group" id="user-group">
                            <input type="text" name="dni" class="form-control" placeholder="DNI"/>
                        </div>
                        <div class="form-group" id="contrasena-group">
                            <input type="password" name="contrasena" class="form-control" placeholder="Contrasena"/>
                        </div>
                        <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Ingresar </button>
                        <a href="Registro.jsp"><button type="button" class="btn btn-primary"><i class="fas fa-user-plus"></i> Registrar </button></a>   
                    </form>
                </div>
            </div>
            </center>
            
        </div>

</body>
</html>
<%
    }
%>