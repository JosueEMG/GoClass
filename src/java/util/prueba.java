package util;
import controlador.CursoController;
import controlador.FacturaController;
import controlador.UsuarioController;
import java.util.Date;
import modelo.factura;
import modelo.usuario;
import util.MySQLConexion;
public class prueba {

    public static void main(String[] args) {
        controlador.UsuarioController uc = new UsuarioController();
        usuario u = null;
        if (uc.userVerify("12345", null)) {
            u = uc.getUser("12345");
            System.out.println("Logueado");
            System.out.print(u.getNombre_us());
        }
        else {
            System.out.println("Deslogueado");
        }

        
    }
    
}
