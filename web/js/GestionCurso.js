$(document).ready(function () {
    let idProfesor = $("#idprofesor").val();
    listarGestionCurso();
    listarEspecialidad();
    
    function listarEspecialidad() {
        let funcion = "listarEspecialidad";
        $.post("../GestionMisCursos", {funcion}, (response)=> {
            const especialidades = JSON.parse(response);
            let template = "";
            template = `<option value="0" selected>Elegir</option>`;
            especialidades.forEach(especialidad =>{
                template += `
                    <option value="${especialidad.id_especialidad}">${especialidad.nombre}</option>
                `
            })
            $("#especialidadCurso").html(template);
            $("#especialidadCurso1").html(template);
        })
    }

    function listarGestionCurso() {
        let funcion = "lisGestionCurso";
        $.post("../GestionMisCursos", {funcion, idProfesor}, (response) => {
            const gestion = JSON.parse(response);
            let template = "";
            gestion.forEach(g => {
                template += `
                    <div idCurso=${g.id_curso} class="col-4 d-flex style="float:left">
                        <div class="card mb-2">
                            <img class="card-img-top" src="../img/imagenCardSlide/${g.banner}" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">${g.nombre}</h4>
                                <br>
                                <hr>
                                <p class="card-text text-justify">${g.detalle}</p>
                            </div>
                            <div class="card-footer" nombreCurso="${g.nombre}">
                                <div class="col text-center">
                                    <button type="button" class="modificar btn btn-dark mx-1 my-1" data-toggle="modal" data-target="#modificar">Modificar</button>
                                    <button type="button" class="ver btn btn-dark mx-1 my-1">Ver contenido</button>
                                    <button type="button" class="btn btn-danger mx-1 my-1">Eliminar</button>
                                    <button class="alumnos btn btn-dark mx-1 my-1">Ver Alumnos</button>
                                </div>
                            </div>
                        </div>
                    </div>`;
            })
            $("#gestioncurso").html(template);
            
        })
    }
    
    $(document).on("click", ".alumnos", (e) => {
        const id = $(this)[0].activeElement.parentElement.parentElement.parentElement.parentElement;
        const idCurso = $(id).attr("idCurso");
        funcion = "idCurso";
        
        $.post("../GestionCurso", {idCurso, funcion}, (response) => {
            window.location="Usuario.jsp";
        })          
    })
    
    $(document).on("click", ".ver", (e) => {
        const elemento = $(this)[0].activeElement.parentElement.parentElement.parentElement.parentElement;
        const elemento1 = $(this)[0].activeElement.parentElement.parentElement;
        const idCurso = $(elemento).attr("idCurso");
        const nombreCurso = $(elemento1).attr("nombreCurso");
        funcion = "ver";
      
        $.post("../GestionCurso", {idCurso, nombreCurso, funcion}, (response) => {
            window.location="Curso.jsp";
        })
              
    })
    
    $(document).on("click", ".modificar", (e)=>{
        const elemento = $(this)[0].activeElement.parentElement.parentElement.parentElement.parentElement;
        const idCurso = $(elemento).attr("idCurso");
        funcion = "obtenerCurso";
        
        $.post("../GestionCurso", {funcion, idCurso}, (response)=>{
            const curso = JSON.parse(response);
            $("#nombre_curso").html(curso.nombre);
            $("#nombreCurso1").val(curso.nombre);
            $("#precioCurso1").val(curso.precio);
            $("#especialidadCurso1").val(curso.id_especialidad);
            $("#adicional1").val(curso.detalle);
        })
        
        funcion = "obtenerContenido"
        $.post("../GestionCurso", {funcion, idCurso}, (response)=>{
            const contenido = JSON.parse(response);
            let i = 0;
            contenido.forEach(c=>{
                i++;
                $("#cap"+i).val(c.link);
            })
            
        })
        
    })
    
    
})   

