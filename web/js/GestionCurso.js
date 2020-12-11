$(document).ready(function () {
    var funcion = "";
    let idCurso = "";
    let idProfesor = $("#idprofesor").val();
    listarGestionCurso();
    listarEspecialidad();
    
    function listarEspecialidad() {
        funcion = "listarEspecialidad";
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
        funcion = "lisGestionCurso";
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
                                    <button type="button" class="eliminar-curso btn btn-danger mx-1 my-1">Eliminar</button>
                                    <button class="alumnos btn btn-dark mx-1 my-1">Ver Alumnos</button>
                                    <button type="button" class="modificar-banner btn btn-dark mx-1 my-1" data-toggle="modal" data-target="#modificar-banner">Modificar banner</button>
                                </div>
                            </div>
                        </div>
                    </div>`;
            })
            $("#gestioncurso").html(template);
            
        })
    }
    
    $(document).on("click", ".eliminar-curso", (e) => {
        const element = $(this)[0].activeElement.parentElement.parentElement.parentElement.parentElement;
        let idCurso = $(element).attr("idCurso");
        funcion = "eliminarCurso";
        $.post("../GestionCurso", {idCurso, funcion}, (response) => {
            if (response === "eliminado") {
                successDeleteMessage();
            }
            else {
                errorDeleteMessage();
            }
            listarGestionCurso();
        })   
    })
    
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
        idCurso = $(elemento).attr("idCurso");
        funcion = "obtenerCurso";
        
        $.post("../GestionCurso", {funcion, idCurso}, (response)=>{
            const curso = JSON.parse(response);
            $("#nombre_curso").html(curso.nombre);
            $("#nombreCurso1").val(curso.nombre);
            $("#precioCurso1").val(curso.precio);
            $("#especialidadCurso1").val(curso.id_especialidad);
            $("#descripcionCurso1").val(curso.detalle);
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

    $("#form-agregar-curso").submit(e => {
        let nombreCurso = $("#nombreCurso").val();
        let precioCurso = $("#precioCurso").val();
        let especialidadCurso = $("#especialidadCurso").val();
        let descripcionCurso = $("#descripcionCurso").val();
        let video1 = $("#video1").val();
        let video2 = $("#video2").val();
        let video3 = $("#video3").val();
        let video4 = $("#video4").val();
        let video5 = $("#video5").val();
        funcion = "anadirCurso";
        $.post("../GestionCurso", {nombreCurso, precioCurso, especialidadCurso, descripcionCurso, video1, video2, video3, video4, video5, funcion}, (response) => {
            if (response === "anadido") {
                successCursoMessage();
                limpiarAnadirCurso();
            }
            else {
                errorCursoMessage();
            }
            listarGestionCurso();
        })
        e.preventDefault();
    })
    
    $("#form-modificar-curso").submit(e => {
        let nombreCurso = $("#nombreCurso1").val();
        let precioCurso = $("#precioCurso1").val();
        let especialidadCurso = $("#especialidadCurso1").val();
        let descripcionCurso = $("#descripcionCurso1").val();
        let video1 = $("#cap1").val();
        let video2 = $("#cap2").val();
        let video3 = $("#cap3").val();
        let video4 = $("#cap4").val();
        let video5 = $("#cap5").val();
        funcion = "modificarCurso";
       
        $.post("../GestionCurso", {idCurso, nombreCurso, precioCurso, especialidadCurso, descripcionCurso, video1, video2, video3, video4, video5, funcion}, (response) => {
            if (response === "modificado") {
                successModifyCursoMessage();
            }
            else {
                errorModifyCursoMessage();
            }
            listarGestionCurso();
        })
        e.preventDefault();
    })
    
   $(document).on("click", ".modificar-banner", (e) => {
        const elementoc = $(this)[0].activeElement.parentElement.parentElement.parentElement.parentElement;
        idCurso = $(elementoc).attr("idCurso");
        console.log(idCurso);
    })
    
    $(document).on("click", "#cambiar-banner", (e) => {
        funcion="obtener";
        $.post("../GestionCurso",{funcion,idCurso},(response)=>{
            
        });
        let archivo = $("#file").val();
        let n =  archivo.length;
        let tipo = archivo.substring(n - 3, n);
        let fileName = archivo.substring(12, n);
        var data = new FormData();
        $.each($('#file')[0].files, function(i, file) {
            data.append('file-'+i, file);
        });
        if (tipo == "jpg" || tipo == "png"){
            $.ajax({
                url: "../SubirBan",
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST', // For jQuery < 1.9
                success: function(data){
                    successBanner();   
                }
            });
            
        }
        else {
            errorBannerdMessage();
        }
    })
    
    function limpiarAnadirCurso() {
        $("#nombreCurso").val("");
        $("#precioCurso").val("");
        $("#especialidadCurso").val(0);
        $("#descripcionCurso").val("");
        $("#video1").val("");
        $("#video2").val("");
        $("#video3").val("");
        $("#video4").val("");
        $("#video5").val("");
    }
    
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000
    });
    
    function errorDeleteMessage() {
        Toast.fire({
            icon: 'error',
            title: 'El curso no se ha eliminado'
        })
    }
    
    function successDeleteMessage() {
        Toast.fire({
            icon: 'success',
            title: 'El curso se ha eliminado existosamente'
        })
    }
    
    function successCursoMessage() {
        Toast.fire({
            icon: 'success',
            title: 'El curso ha sido añadido correctamente'
        })
    }
    
    function successModifyCursoMessage() {
        Toast.fire({
            icon: 'success',
            title: 'El curso ha sido modificado correctamente'
        })
    }
    
    function errorModifyCursoMessage() {
        Toast.fire({
            icon: 'error',
            title: 'El curso no ha sido modificado'
        })
    }
    
    function errorCursoMessage() {
        Toast.fire({
            icon: 'error',
            title: 'El curso no se ha añadido correctamente, intente de nuevo'
        })
    }
    
    function errorBannerdMessage() {
        Toast.fire({
            icon: 'error',
            title: 'Solo se permite archivos con formato jpg o png'
        })
    }
    
    function successBanner() {
        Toast.fire({
            icon: 'success',
            title: 'La imagen se subió con éxito, por favor actualice la pagina para ver el resultado'
        })
    }
});   

