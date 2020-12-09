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
        FacturaController fac=new FacturaController();
        System.out.println(fac.verificacionInscripcion(9, 1));

    }
    
}
