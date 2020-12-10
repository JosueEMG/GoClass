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
       /* FacturaController fac=new FacturaController();
        int idus=23;
        int cod_c=3;
        String meto="Paypal";

        System.out.println(fac.createFactura(idus, cod_c, meto));
    */
    GestionDeCursos gc=new GestionDeCursos();
    String ruta="pinga.jpg";
   int idcur=1;
        System.out.println(gc.changeBanner(ruta,1));
    }  
}
