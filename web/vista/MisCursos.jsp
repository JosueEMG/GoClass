<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%    
    if (ses.getAttribute("tipo") != null) {
%>
<title>UnitClass | Principal</title>

<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Mis Cursos </h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="Tienda.jsp" >Tienda</a></li>
                        <li class="breadcrumb-item active">Mis Cursos</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>   
    <section class="content">
        <div class="container-fluid">
            <div class="card card-success">
                <div class="card-header">
                    <h3 class="card-title">Listado de Cursos</h3>

                </div>
                <div class="card-body">
                    <div class="col-md-3" style="float:left">
                        <div class="card mb-2">
                            <img class="card-img-top" src="../img/imagenCardSlide/js_banner.jpeg" alt="Card image cap" width="100%">

                            <div class="card-body">
                                <h3 class="card-title">JavaScript</h3>
                                <br>
                                <hr>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p> 
                            </div>
                            <div class="card-footer">
                                <a href="Cursos.jsp" class="btn btn-dark">Ver</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<%@include file = "layouts/Footer.jsp"%>
<%
    } else {
        response.sendRedirect("Login.jsp");
    }
%>

