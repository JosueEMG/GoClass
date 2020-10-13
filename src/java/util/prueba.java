package util;
import controlador.UsuarioController;
import java.util.Date;
import modelo.usuario;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import util.MySQLConexion;
public class prueba {

    public static void main(String[] args) {
        controlador.UsuarioController uc = new UsuarioController();
        uc.downgradeUsuario(10);
        uc.updateUsuario(10);
        uc.changeAvatar("imagen.png", 10);
        uc.changePassword("1234", 10);

        modelo.usuario us = new usuario("enzo", "virtual machine", "2020-07-08", "948494", "12345", "enzo@gmail.com", "Masculino", 1, "");
        uc.createUser(us);
        uc.listaUsuarios().forEach((u)-> {
            System.out.println(u.getId_usuario()+"\t"+u.getNombre_us()+"\t"+u.getFecha_nacimiento()+"\t"+u.getNombre_tipo_us()+"\t"+u.getAvatar()+"\t"+u.getContrasena_us());
        });
    }
    
}
