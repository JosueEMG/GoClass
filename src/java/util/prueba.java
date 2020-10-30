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
        uc.listaUsuariosxCurso(1,null, 2).forEach((u) -> {
            System.out.println(u.getNombre_us());
        });
        

    }
    
}
