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
                                <p class="card-text">${g.detalle_curso}</p>
                            </div>
                            <div class="card-footer">
                                <button type="button" class="btn btn-dark mx-1 my-1" data-toggle="modal" data-target="#modificar">Modificar</button>
                                <a href="Cursos.jsp" class="btn btn-dark mx-1 my-1">Ver</a>
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
    
})   

