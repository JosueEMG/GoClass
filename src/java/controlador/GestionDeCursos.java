package controlador;

import java.sql.CallableStatement;
import java.sql.Connection;
import util.MySQLConexion;
import modelo.*;
/**
 *
 * @author JuanG
 */
public class GestionDeCursos {
        public void AgregarCursoYcontenido(String nomc,double precio,String banner,int idespec, int idusuario, String detalle, int inscripciones) {
          String idcurso=""; 
          Connection conn = null;
        try {
            conn = MySQLConexion.getConexion();
            CallableStatement st = conn.prepareCall("{call adicioncurso(?,?,?,?,?,?,?)}");
            st.setString(1, nomc);
            st.setDouble(2, precio);
            st.setString(3, banner);
            st.setInt(4, idespec);
            st.setInt(5, idusuario);
            st.setString(6, detalle);
            st.setInt(7, inscripciones);
            st.executeUpdate();
            //grabar el material
            CallableStatement st2=conn.prepareCall("{call adicioncontenido(?,?,?,?)}");
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }

    }
    
}
