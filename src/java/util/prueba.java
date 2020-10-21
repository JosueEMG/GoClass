package util;
import controlador.CursoController;
import controlador.FacturaController;
import controlador.InscripcionController;
import controlador.UsuarioController;
import java.util.Date;
import modelo.factura;
import modelo.usuario;
import util.MySQLConexion;
public class prueba {

    public static void main(String[] args) {
        controlador.InscripcionController ic = new InscripcionController();
        ic.listaInscripciones(1).forEach((p)->{
            System.out.println(p.getNombre());
        });

        
    }
    
}
