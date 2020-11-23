package controlador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import util.MySQLConexion;
import modelo.*;

/**
 *
 * @author JuanG
 */
public class Cb_especialidad {
        public List<especialidad> listaEspecialidades() {
        List<especialidad> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select * from especialidad";
            //st.setString(1, cad);
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                especialidad a = new especialidad();
                a.setId_especialidad(rs.getInt(1));
                a.setNombre(rs.getString(2));
                lis.add(a);
            }
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

        return lis;
    }
    
    
}
