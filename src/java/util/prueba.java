package util;
import controlador.ContenidoCursoController;
import controlador.CursoController;
import controlador.EspecialidadController;
import controlador.FacturaController;
import controlador.InscripcionController;
import controlador.UsuarioController;
import java.util.Date;
import modelo.factura;
import modelo.usuario;
import util.MySQLConexion;
public class prueba {

    public static void main(String[] args) {
        controlador.ContenidoCursoController c = new ContenidoCursoController();
        
        c.listarContenidoCurso(1).forEach((p)->{
            System.out.println(p.getLink());
        });
        
        
        

    }
    
}
