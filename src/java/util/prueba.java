package util;
import controlador.ContenidoCursoController;
import controlador.CursoController;
import controlador.EspecialidadController;
import controlador.FacturaController;
import controlador.InscripcionController;
import controlador.UsuarioController;
import java.util.Date;
import modelo.curso;
import modelo.factura;
import modelo.usuario;
import util.MySQLConexion;
public class prueba {

    public static void main(String[] args) {
        CursoController c = new CursoController();
        curso curso = new curso();
        curso.setId_curso(1);
        curso.setId_usuario(3);
        curso.setNombre("Hola");
        curso.setPrecio(100);
        curso.setId_especialidad(1);
        curso.setDetalle("Me gusta como me gustas");
        System.out.println(c.modificarCurso(curso,"the same shit", "la sen chip", "sale su miancre", "gaaaaa", "chupetin", 1,2,3,4,5));
        
        
        

    }
    
}
