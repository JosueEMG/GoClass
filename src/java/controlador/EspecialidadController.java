
package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.especialidad;
import util.MySQLConexion;

public class EspecialidadController {
    
    public List<especialidad> lisEspe() {
        List<especialidad> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_especialidad, nombre_especialidad from especialidad";
            PreparedStatement st = conn.prepareStatement(sql);
            //st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                especialidad e = new especialidad();
                e.setId_especialidad(rs.getInt(1));
                e.setNombre(rs.getString(2));
                lis.add(e);
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
    
    public List<especialidad> lisEspeCodi(int id) {
        List<especialidad> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_especialidad, nombre_especialidad from especialidad where id_especialidad=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                especialidad e = new especialidad();
                e.setId_especialidad(rs.getInt(1));
                e.setNombre(rs.getString(2));
                lis.add(e);
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
    
    public void AdicionEspe(String nom) {
        Connection conn = null;
        
        try {
            conn = MySQLConexion.getConexion();
            String sql = "insert into especialidad (nombre_especialidad) values (?)";
            //? =equivale a un parametro 
            PreparedStatement st = conn.prepareStatement(sql);
            //relacionar el ? con su variable 
            st.setString(1, nom);
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
    
    public void BorrarEspe(int id) {
        Connection conn = null;
        
        try {
            conn = MySQLConexion.getConexion();
            String sql = "delete from especialidad where id_especialidad=?";
            //? =equivale a un parametro 
            PreparedStatement st = conn.prepareStatement(sql);
            //relacionar el ? con su variable 
            st.setInt(1, id);
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
