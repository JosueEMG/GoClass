
package controlador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.curso;
import util.MySQLConexion;

public class CursoController {
    
    public List<curso> listarCurso() {
        List<curso> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_curso, nombre, precio, banner, id_especialidad, detalle_curso from curso";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                curso c = new curso();
                c.setId_curso(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setPrecio(rs.getDouble(3));
                c.setBanner(rs.getString(4));
                c.setId_especialidad(rs.getInt(5));
                c.setDetalle(rs.getString(6));
                lis.add(c);
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
       
    
    public List<curso> lisCursoxAlu(int id) {
        List<curso> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_curso, nombre, precio, banner, detalle_curso from curso where id_especialidad=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                curso c = new curso();
                c.setId_curso(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setPrecio(rs.getDouble(3));
                c.setBanner(rs.getString(4));
                c.setDetalle(rs.getString(5));
                lis.add(c);
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
       
    public List<curso> lisGestionCurso(int id) {
        List<curso> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_curso, c.nombre, c.banner, c.detalle_curso from usuario u inner join curso c on u.id_usuario = c.id_usuario where u.id_usuario = ?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                curso c = new curso();
                c.setId_curso(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setBanner(rs.getString(3));
                c.setDetalle(rs.getString(4));
                lis.add(c);
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
    
    public void CambioAvatarCurso(String ruta, int id) {
        Connection conn = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "update curso set banner=? where id_curso=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, ruta);
            st.setInt(2, id);
            st.executeUpdate();
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
    }
    
    public void AdicionCurso(curso c) {
        Connection conn = null;
        
        try {
            conn = MySQLConexion.getConexion();
            String sql = "insert into curso (nombre, precio, banner, id_especialidad, id_usuario, prod_present, detalle_curso) "
                    + " values (?,?,?,?,?,?,?)";
            //? =equivale a un parametro 
            PreparedStatement st = conn.prepareStatement(sql);
            //relacionar el ? con su variable 
            st.setString(1, c.getNombre());
            st.setDouble(2, c.getPrecio());
            st.setString(3, c.getBanner());
            st.setInt(4, c.getId_especialidad());
            st.setInt(5, c.getId_usuario());
            st.setInt(6, c.getProd_present());
            st.setString(7, c.getDetalle());
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
    
    public void BorrarCurso(int id) {
        Connection conn = null;
        
        try {
            conn = MySQLConexion.getConexion();
            String sql = "delete from curso where id_curso=?";
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
