package util;
import controlador.ContenidoCursoController;
import controlador.CursoController;
import controlador.EspecialidadController;
import controlador.*;
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
        int idus=1;
        for(factura f:fac.listaFacturas(idus))
        System.out.println(f.getNombre_curso());
    }  
}
