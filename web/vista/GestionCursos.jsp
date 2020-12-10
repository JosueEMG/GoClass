<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%@page import="modelo.*"%>
<%@page import="controlador.Cb_especialidad"%>
<%    
    if (ses.getAttribute("tipo") != null) {
        Cb_especialidad obj = new Cb_especialidad();
        int cod = 0;
        if ((int)ses.getAttribute("tipo") == 2) {
%>
<title>UnitClass | Gestion Cursos</title>
<!-- MODAL Añadir -->
<div class="modal fade bd-example-modal-lg" id="añadir" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Añadir Curso</h5>
            </div>
            <div class="modal-body">
                <div class="text-center m-3">
                    <h3 id="nombre_logo">Ingresar curso</h3>
                </div>
                <form id="form-agregar-curso">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label id="nombre">Nombre:</label>
                            <input type="text" id="nombreCurso" class="form-control" placeholder="Ingrese Nombre del Curso" name="nomc">
                        </div>
                        <div class="form-group col-md-6">
                            <label id="precio">Precio:</label>
                            <input type="text" id="precioCurso" class="form-control" placeholder="Ingrese el Precio" name="prec">
                        </div>
                    </div>
                    <!--<div class="form-group col-md-6">
                            <label id="banner">Banner:</label>
                            <input type="file" id="bannerCurso" class="form-control" placeholder="Ingrese Nombre del banner" name="baner">
                    </div>-->
                    <div class="form-group">
                        <label id="especialidad">Especialidad:</label>
                        <select id="especialidadCurso" name="especialidadCurso" class="form-control select2" style="width: 100%" name="cbesp">
                            
                        </select>        
                    </div>
                    <div class="form-group">
                        <label id="detalle">Descripción:</label>
                        <textarea class="form-control" id="descripcionCurso" cols="0" rows="2" name="descri"></textarea>
                    </div>
                    
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 1</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>
                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <div class="form-group">
                                    <input type="text" id="video1" class="form-control" placeholder="Ingrese primer video" name="video1">
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 2</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>
                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <div class="form-group">
                                    <input type="text" id="video2" class="form-control" placeholder="Ingrese segundo video" name="video2">
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 3</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <div class="form-group">
                                    <input type="text" id="video3" class="form-control" placeholder="Ingrese tercer video" name="video3">
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card-footer-->
                        </div>
                    </div> <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 4</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <div class="form-group">
                                    <input type="text" id="video4" class="form-control" placeholder="Ingrese cuarto video" name="video4">
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 5</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <div class="form-group">
                                    <input type="text" id="video5" class="form-control" placeholder="Ingrese quinto video" name="video5">
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="añadir-curso btn btn-success">Aceptar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                    </div>
                </form>  
            </div>
            
        </div>
    </div>
</div>
<!-- MODAL Modificar -->
<div class="modal fade bd-example-modal-lg" id="modificar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modificar Curso</h5>
                <!--   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">×</span>
       </button>-->
            </div>
            <div class="modal-body">
                <div class="text-center m-3">
                    <h3 id="nombre_curso">Programación Java</h3>
                </div>
                <form id="form-modificar-curso">  
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Nombre:</label>
                            <input type="text" id="nombreCurso1" class="form-control" placeholder="Ingrese Nombre del Curso">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Precio:</label>
                            <input type="text" id="precioCurso1" class="form-control" placeholder="Ingrese el Precio">
                        </div>
                    </div>                                     
                    <div class="form-group">
                        <label id="especialidad">Especialidad:</label>
                        <select id="especialidadCurso1" name="especialidadCurso1" class="form-control select2" style="width: 100%">
                            
                        </select>        
                    </div>
                    <div class="form-group">
                        <label>Descripción:</label>
                        <textarea class="form-control" id="descripcionCurso1" cols="0" rows="2"></textarea>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 1</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>
                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <div class="form-group">
                                    <input type="text" id="cap1" class="form-control" placeholder="Ingrese primer video">
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 2</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>
                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <div class="form-group">
                                    <input type="text" id="cap2" class="form-control" placeholder="Ingrese segundo video">
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 3</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <div class="form-group">
                                    <input type="text" id="cap3" class="form-control" placeholder="Ingrese tercer video">
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card-footer-->
                        </div>
                    </div> <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 4</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <div class="form-group">
                                    <input type="text" id="cap4" class="form-control" placeholder="Ingrese cuarto video">
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 5</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <div class="form-group">
                                    <input type="text" id="cap5" class="form-control" placeholder="Ingrese quinto video">
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">Aceptar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                    </div>
                </form>  
            </div>
        </div>
    </div>
</div>
<!--Modal cambiar banner-->
<div class="modal fade" id="modificar-banner" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" data-toggle="modal"> 
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Seleccionar Imagen:</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form name="fr" id="form-editar-banner">
            <div class="modal-body">
                <div class="text-center">
                    <input type="file" id="file" name="file1">
                </div>
            </div>
            <div class="modal-footer">
                <input type="button" id="cambiar-banner" value="Guardar banner" class="subir-banner btn btn-primary">
            </div>
            </form>
        </div>
    </div>
</div>
<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Gestión cursos<button type="button" class="btn btn-warning ml-2" data-toggle="modal" data-target="#añadir">Añadir Curso</button></h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="Tienda.jsp">Tienda</a></li>
                                <li class="breadcrumb-item active">Gestión cursos</li>
                            </ol>

                        </div>
                </div>
            </div>
    </section>  
    <section class="content"> 
        <input type="hidden" id="idprofesor" value="<%=ses.getAttribute("idUsuario")%>">
        <div class="container-fluid">
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Cursos</h3>
                </div>
                <div class="card-body">
                    <div id="gestioncurso" class="row d-flex aling-items-stretch">
                   
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<%@include file = "layouts/Footer.jsp"%>
<%
        }else {
            response.sendRedirect("Tienda.jsp");
        }
    } else {
        response.sendRedirect("index.jsp");
    }
%>
<script src="../js/GestionCurso.js" type="text/javascript"></script>
<script src="../js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="../js/sweetalert2.min.js" type="text/javascript"></script>
