$(document).ready(function () {
    let metodoPago = "Tarjeta de credito";
    let idCurso = "";
    var funcion = "";
    var tipo = $("#tipo").val();
    listarCursos();
    listarCursosRecomendados();
    function listarCursos() {
        funcion = "listarCursos";
        $.post("../GestionTienda",{funcion},(response)=>{
            const cursos = JSON.parse(response);
            let templateProgramacion = "";
            let templateMusica = "";
            let templateCocina = "";
            let templateEdicion = "";
            let templateHistoria = "";
            let templateArte = "";
            
            cursos.forEach(curso=>{
                switch (curso.id_especialidad) {
                    case 1: templateProgramacion += `
                        <div idCurso=${curso.id_curso} class="col-md-4 mb-2 d-flex" style="float:left">
                            <div class="card mb-2">
                                <img class="card-img-top"
                                     src="../img/imagenCardSlide/${curso.banner}" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">${curso.nombre}</h4>
                                    <br>
                                    <hr>
                                    <p class="card-text text-justify">${curso.detalle}</p>
                                    <div class="price-wrap h5">
                                        <span class="price-new text-right">$${curso.precio}</span>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    `
                                    if (tipo == 3 || tipo == "nulo") {
                                        templateProgramacion += `<button type="button" class="comprarHijo btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
                                    }
                                    templateProgramacion += 
                                    `
                                </div>
                            </div>
                        </div>`;
                        break;
                    case 2: templateMusica += `
                        <div idCurso=${curso.id_curso} class="col-md-4 mb-2 d-flex" style="float:left">
                            <div class="card mb-2">
                                <img class="card-img-top"
                                     src="../img/imagenCardSlide/${curso.banner}" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">${curso.nombre}</h4>
                                    <br>
                                    <hr>
                                    <p class="card-text text-justify">${curso.detalle}</p>
                                    <div class="price-wrap h5">
                                        <span class="price-new text-right">$${curso.precio}</span>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    `
                                    if (tipo == 3 || tipo == "nulo") {
                                        templateMusica += `<button type="button" class="comprarHijo btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
                                    }
                                    templateMusica += 
                                    `
                                </div>
                            </div>
                        </div>`;
                        break;
                    case 3: templateCocina += `
                        <div idCurso=${curso.id_curso} class="col-md-4 mb-2 d-flex" style="float:left">
                            <div class="card mb-2">
                                <img class="card-img-top"
                                     src="../img/imagenCardSlide/${curso.banner}" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">${curso.nombre}</h4>
                                    <br>
                                    <hr>
                                    <p class="card-text text-justify">${curso.detalle}</p>
                                    <div class="price-wrap h5">
                                        <span class="price-new text-right">$${curso.precio}</span>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    `
                                    if (tipo == 3 || tipo == "nulo") {
                                        templateCocina += `<button type="button" class="comprarHijo btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
                                    }
                                    templateCocina += 
                                    `
                                </div>
                            </div>
                        </div>`;
                        break;
                    case 4: templateEdicion += `
                        <div idCurso=${curso.id_curso} class="col-md-4 mb-2 d-flex" style="float:left">
                            <div class="card mb-2">
                                <img class="card-img-top"
                                     src="../img/imagenCardSlide/${curso.banner}" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">${curso.nombre}</h4>
                                    <br>
                                    <hr>
                                    <p class="card-text text-justify">${curso.detalle}</p>
                                    <div class="price-wrap h5">
                                        <span class="price-new text-right">$${curso.precio}</span>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    `
                                    if (tipo == 3 || tipo == "nulo") {
                                        templateEdicion += `<button type="button" class="comprarHijo btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
                                    }
                                    templateEdicion += 
                                    `
                                </div>
                            </div>
                        </div>`;
                        break;
                    case 5: templateHistoria += `
                        <div idCurso=${curso.id_curso} class="col-md-4 mb-2 d-flex" style="float:left">
                            <div class="card mb-2">
                                <img class="card-img-top"
                                     src="../img/imagenCardSlide/${curso.banner}" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">${curso.nombre}</h4>
                                    <br>
                                    <hr>
                                    <p class="card-text text-justify">${curso.detalle}</p>
                                    <div class="price-wrap h5">
                                        <span class="price-new text-right">$${curso.precio}</span>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    `
                                    if (tipo == 3 || tipo =="nulo") {
                                        templateHistoria += `<button type="button" class="comprarHijo btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
                                    }
                                    templateHistoria += 
                                    `
                                </div>
                            </div>
                        </div>`;
                        break;
                    case 6: templateArte += `
                        <div idCurso=${curso.id_curso} class="col-md-4 mb-2 d-flex" style="float:left">
                            <div class="card mb-2">
                                <img class="card-img-top"
                                     src="../img/imagenCardSlide/${curso.banner}" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">${curso.nombre}</h4>
                                    <br>
                                    <hr>
                                    <p class="card-text text-justify">${curso.detalle}</p>
                                    <div class="price-wrap h5">
                                        <span class="price-new text-right">$${curso.precio}</span>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    `
                                    if (tipo == 3 || tipo == "nulo") {
                                        templateArte += `<button type="button" class="comprarHijo btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
                                    }
                                    templateArte += 
                                    `
                                </div>
                            </div>
                        </div>`;
                        break;
                }
            });
            $("#programacion").html(templateProgramacion);
            $("#musica").html(templateMusica);
            $("#cocina").html(templateCocina);
            $("#edicionVideo").html(templateEdicion);
            $("#historia").html(templateHistoria);
            $("#arte").html(templateArte);
        });
    }
    
    function listarCursosRecomendados() {
        funcion = "listarCursosRecomanedados";
        let template = "";
        $.post("../GestionTienda",{funcion},(response)=>{
            const cursos = JSON.parse(response);
            console.log(cursos);
            cursos.forEach(curso=>{
                template += `
                        <div class="col-md-4">
                        <!-- Widget: user widget style 1 -->
                        <div class="card card-widget widget-user">
                          <!-- Add the bg color to the header using any of the bg-* classes -->
                          <div class="widget-user-header text-white" style="background: url('../img/imagenCardSlide/${curso.banner}') center center;">

                          </div>

                          <div class="card-footer">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                  <div class="description-block">
                                    <h5 class="description-header">${curso.nombre}</h5>
                                    <span>${curso.nombre_especialidad}</span>
                                  </div>
                                  <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-6">
                                  <div class="description-block">
                                    <h5 class="description-header">${curso.nro_inscripciones}</h5>
                                    <span>Inscripciones</span>
                                  </div>
                                  <!-- /.description-block -->
                                </div>
                                <!-- /.col -->

                                <!-- /.col -->
                              </div>
                          </div>
                        </div>
                        <!-- /.widget-user -->
                        </div>
                `;
            });
            $("#recomendacion").html(template);
        });
    }
    
    $(".tarjeta-credito").on("click", (e)=>{
        metodoPago = "Tarjeta de credito";
    });
    
    $(".paypal").on("click", (e)=> {
        metodoPago = "Paypal";
    });
    
    $(document).on("click", ".comprarHijo", (e) => {
        const elemento = $(this)[0].activeElement.parentElement.parentElement.parentElement;
        idCurso = $(elemento).attr("idCurso");
    })
    
    $("#comprarModal").on("click", (e)=> {
        let idUsuario = $("#idUsuario").val();
        funcion = "anadirFactura";
        $.post("../GestionTienda", {idUsuario,idCurso, metodoPago, funcion}, (response) => {
            if (response === "comprado") {
                successCursoMessage();
                limpiarAnadirFactura();
            }
            else if (response === "yacomprado"){
                verifyCursoMessage();
            }
            else{ 
                errorCursoMessage();
            }
            
        })
        e.preventDefault();
    })
    
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 5000
    });
    
    
    function limpiarAnadirFactura() {
        $("#nomPro").val("");
        $("#numTar").val("");
        $("#cvc").val(0);
    }
    
   function successCursoMessage() {
        Toast.fire({
            icon: 'success',
            title: 'Ha comprado el curso correctamente'
        })
    }
    
    function errorCursoMessage() {
        Toast.fire({
            icon: 'error',
            title: 'Hubo un error al comprar el curso'
        })
    }
    
    function verifyCursoMessage() {
        Toast.fire({
            icon: 'error',
            title: 'Ya ha comprado este curso, ingrese al módulo "Mis Cursos" para visualizar su contenido'
        })
    }
    

    
    
});

