package controlador;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import modelo.curso;
import util.MySQLConexion;

/**
 *
 * @author JuanG
 */

public class GestionDeCursos {
    //cambiar Banner
    public int changeBanner(String ruta, int id_curso) {
        int num=0;
        Connection conn = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "update curso set banner = ? where id_curso = ?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, ruta);//nombre archivo
            st.setInt(2, id_curso);//id del curso
            num = st.executeUpdate();
            //llenar el arraylist con la clase entidad
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
        return num;
    }
   
}
