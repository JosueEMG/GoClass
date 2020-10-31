$(document).ready(function () {
    var funcion = "";
    var tipo = $("#tipo").val();
    listarCursos();
    
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
                                        templateProgramacion += `<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
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
                                        templateMusica += `<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
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
                                        templateCocina += `<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
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
                                        templateEdicion += `<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
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
                                        templateHistoria += `<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
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
                                        templateArte += `<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Comprar</button>`
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
});

