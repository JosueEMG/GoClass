package util;
import controlador.FacturaController;
import controlador.MetodoPagoController;
import controlador.UsuarioController;
import java.util.Date;
import modelo.factura;
import modelo.metodo_pago;
import modelo.usuario;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import util.MySQLConexion;
public class prueba {

    public static void main(String[] args) {
        controlador.UsuarioController uc = new UsuarioController();
        controlador.MetodoPagoController mpc = new MetodoPagoController();
        uc.deleteUser(19);
        

        /*modelo.usuario us = new usuario("enzo", "virtual machine", "2020-07-08", "948494", "12345", "enzo@gmail.com", "Masculino", 1, "");
        uc.createUser(us);
        uc.listaUsuarios().forEach((u)-> {
            System.out.println(u.getId_usuario()+"\t"+u.getNombre_us()+"\t"+u.getFecha_nacimiento()+"\t"+u.getNombre_tipo_us()+"\t"+u.getAvatar()+"\t"+u.getContrasena_us());
        });*/
        
        /*controlador.FacturaController fc = new FacturaController();
        fc.deleteFacturabyUserId(1);
        fc.listaFacturas().forEach((f)->{
            System.out.println(f.getNombre_curso()+"\t"+f.getNombre_metodo_pago()+"\t"+f.getNombre_usuario()+"\t"+f.getPrecio());
        });*/
        mpc.deleteMetodoPago(4);
        mpc.listaMetodoPago().forEach((mp1)->{
            System.out.println(mp1.getNombre_met_pago());
        });
        
    }
    
}
