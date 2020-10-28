package util;
import controlador.ContenidoCursoController;
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
        controlador.UsuarioController uc = new  UsuarioController();
        uc.listaUsuarios(null).forEach((u) -> {
            System.out.println(u.getNombre_us());
        });
        uc.listaUsuarios("Josue").forEach((user) -> {
            System.out.println(user.getApellidos_us());
        });
        

    }
    
}
