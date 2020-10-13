
package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.tipo_us;
import util.MySQLConexion;

public class Tipo_usController {
    
    public List<tipo_us> lisTipo() {
        List<tipo_us> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_tipo_us, nombre_tipo from tipo_us";
            PreparedStatement st = conn.prepareStatement(sql);
            //st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                tipo_us t = new tipo_us();
                t.setId_tipo_us(rs.getInt(1));
                t.setNombre_tipo(rs.getString(2));
                lis.add(t);
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
