$(document).ready(function () {
    var idProfesor = $("#idprofesor").val();
    listarGestionCurso()

    function listarGestionCurso() {
        var funcion = "lisGestionCurso";
        $.post("../GestionMisCursos", {funcion, idProfesor}, (response) => {
            const gestion = JSON.parse(response);
            let template = "";
            gestion.forEach(g => {
                template += `
                    <div idCurso=${g.id_curso} class="col-md-3" style="float:left">
                        <div class="card mb-2">
                            <img class="card-img-top" src="../img/imagenCardSlide/${g.banner}" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">${g.nombre}</h4>
                                <br>
                                <hr>
                                <p class="card-text">${g.detalle}</p>
                            </div>
                            <div class="card-footer" nombreCurso="${g.nombre}">
                                <button type="button" class="btn btn-dark mx-1 my-1" data-toggle="modal" data-target="#modificar">Modificar</button>
                                <button type="button" class="ver btn btn-dark mx-1 my-1">Ver contenido</button>
                                <button type="button" class="btn btn-danger mx-1 my-1">Eliminar</button>
                                <button class="alumnos btn btn-dark mx-1 my-1">Ver Alumnos</button>
                            </div>
                        </div>
                    </div>`;
            })
            $("#gestioncurso").html(template);
            
        })
    }
    
    $(document).on("click", ".alumnos", (e) => {
        const id = $(this)[0].activeElement.parentElement.parentElement.parentElement;
        const idCurso = $(id).attr("idCurso");
        funcion = "idCurso"
        
        $.post("../GestionCurso", {idCurso, funcion}, (response) => {
            window.location="VerAlumnos.jsp";
        })          
    })
    
    $(document).on("click", ".ver", (e) => {
        const elemento = $(this)[0].activeElement.parentElement.parentElement.parentElement;
        const elemento1 = $(this)[0].activeElement.parentElement;
        const idCurso = $(elemento).attr("idCurso");
        const nombreCurso = $(elemento1).attr("nombreCurso");
        funcion = "ver";
      
        $.post("../GestionCurso", {idCurso, nombreCurso, funcion}, (response) => {
            window.location="Curso.jsp";
        })
              
    })
    
    
})   

