<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%    
    if (ses.getAttribute("tipo") != null) {
%>
<title>UnitClass | Mis Cursos</title>
<!-- MODAL Añadir -->
<div class="modal fade bd-example-modal-lg" id="añadir" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Añadir Curso</h5>
            </div>
            <div class="modal-body">
                <div class="text-center m-3">
                    <h3 id="nombre_logo">Programación Java</h3>
                </div>
                <form id="form-editar-curso" class="form-horizontal">  
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label id="nombre">Nombre:</label>
                            <input type="text" id="nombreCurso" class="form-control" placeholder="Ingrese Nombre del Curso">
                        </div>
                        <div class="form-group col-md-6">
                            <label id="precio">Precio:</label>
                            <input type="text" id="precioCurso" class="form-control" placeholder="Ingrese el Precio">
                        </div>
                    </div>                                     
                    <div class="form-group">
                        <label id="especialidad">Especialidad:</label>
                        <select id="especialidadCurso" name="especialidadCurso" class="form-control select2" style="width: 100%">
                            <option>Poner Espermas</option>
                            <option>Pajeros</option>
                        </select>        
                    </div>
                    <div class="form-group">
                        <label id="detalle">Descripción:</label>
                        <textarea class="form-control" id="adicional" cols="0" rows="2"></textarea>
                    </div>
                    <div class="form-group">
                        <div class="card card-success">
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
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 1" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 1" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-success">
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
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 2" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 2" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-success">
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
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 3" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 3" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div> <div class="form-group">
                        <div class="card card-success">
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
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 4" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 4" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-success">
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
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 5" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 5" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                </form>  
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
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
                    <h3 id="nombre_logo">Programación Java</h3>
                </div>
                <form id="form-editar-curso" class="form-horizontal">  
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label id="nombre">Nombre:</label>
                            <input type="text" id="nombreCurso" class="form-control" placeholder="Ingrese Nombre del Curso">
                        </div>
                        <div class="form-group col-md-6">
                            <label id="precio">Precio:</label>
                            <input type="text" id="precioCurso" class="form-control" placeholder="Ingrese el Precio">
                        </div>
                    </div>                                     
                    <div class="form-group">
                        <label id="especialidad">Especialidad:</label>
                        <select id="especialidadCurso" name="especialidadCurso" class="form-control select2" style="width: 100%">
                            <option>Poner Espermas</option>
                            <option>Pajeros</option>
                        </select>        
                    </div>
                    <div class="form-group">
                        <label id="detalle">Descripción:</label>
                        <textarea class="form-control" id="adicional" cols="0" rows="2"></textarea>
                    </div>
                    <div class="form-group">
                        <div class="card card-success">
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
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 1" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 1" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-success">
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
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 2" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 2" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-success">
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
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 3" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 3" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div> <div class="form-group">
                        <div class="card card-success">
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
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 4" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 4" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-success">
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
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 5" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 5" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>

                </form>  
            </div>
            <!-- CONTENIDO -->

            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>
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
                    <h1>Gestión Cursos &nbsp&nbsp&nbsp<button type="button" class="btn btn-warning " data-toggle="modal" data-target="#añadir">Añadir Curso</button>



                        <hr>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="ListaCursos.jsp">Tienda de Cursos</a></li>
                                <li class="breadcrumb-item active">Mis Cursos</li>
                            </ol>

                        </div>
                </div>
            </div>
    </section>  
    <section>      
        <div class="container-fluid">
            <div class="card card-success">
                <div class="card-header">
                    <h3 class="card-title">Cursos Creados por Mí</h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                            <i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="card-body">
                    <div class="col-md-3" style="float:left">
                        <div class="card mb-2">
                            <img class="card-img-top" src="../img/imagenCardSlide/java_ban.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Programación Java</h4>
                                <br>
                                <hr>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p>
                            </div>
                            <div class="card-footer">
                                <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#modificar">Modificar</button>
                                <a href="Cursos.jsp" class="btn btn-dark">Ver</a>
                                <button type="button" class="btn btn-danger">Eliminar</button>
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