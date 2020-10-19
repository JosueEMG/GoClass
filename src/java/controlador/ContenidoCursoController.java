
package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.contenido_curso;
import util.MySQLConexion;

public class ContenidoCursoController {
    
    public List<contenido_curso> listarContenidoCurso(int idCurso) {
        List<contenido_curso> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_contenido, id_curso, archivo, enlace from contenido_curso where id_curso=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idCurso);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                contenido_curso v = new contenido_curso();
                v.setId_contenido(rs.getInt(1));
                v.setId_curso(rs.getInt(2));
                v.setArchivo(rs.getString(3));
                v.setLink(rs.getString(4));
                lis.add(v);
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
    /*
    public void AdicionVideo(int id, String url) {
        Connection conn = null;
        
        try {
            conn = MySQLConexion.getConexion();
            String sql = "insert into video (id_curso, link) values (?,?)";
            //? =equivale a un parametro 
            PreparedStatement st = conn.prepareStatement(sql);
            //relacionar el ? con su variable 
            st.setInt(1, id);
            st.setString(2, url);
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
    */
    public void BorrarEnlaceContenido(int idContenido) {
        Connection conn = null;
        
        try {
            conn = MySQLConexion.getConexion();
            String sql = "update contenido_curso set enlace='' where id_contenido=?";
            //? =equivale a un parametro 
            PreparedStatement st = conn.prepareStatement(sql);
            //relacionar el ? con su variable 
            st.setInt(1, idContenido);
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
    /*
    public void BorrarVideoxCurso(int id) {
        Connection conn = null;
        
        try {
            conn = MySQLConexion.getConexion();
            String sql = "delete from video where id_curso=?";
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
    }*/
}
