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
        public void AgregarContenido(contenido_curso a) {
          Connection conn = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "{call sp_adicion(?,?,?,?)}";
            //? =equivale a un parametro 
            CallableStatement st = conn.prepareCall(sql);
            //relacionar el ? con su variable 
            st.setInt(1, a.getId_contenido());
            st.setInt(2, a.getId_curso());
            st.setString(3, a.getArchivo());
            st.setString(4, a.getLink());
            st.executeUpdate();
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
