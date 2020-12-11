
package controlador;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.curso;
import util.MySQLConexion;

public class CursoController {
    
    public String[] getArrayOfNames(List<curso> list) {
        String v[] = new String[list.size()];
        int i = 0;
        for (curso c : list) {
            v[i] = c.getNombre();
            i++;
        }
        return v;
    }
    
    public int[] getArrayOfInscriptionsNumbers(List<curso> list) {
        int v[] = new int[list.size()];
        int i = 0;
        for (curso c : list) {
            v[i] = c.getNro_inscripciones();
            i++;
        }
        return v;
    }
    
    public List<curso> listarCurso() {
        List<curso> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_curso, nombre, precio, banner, id_especialidad, detalle_curso, nro_inscripciones from curso";
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
                c.setNro_inscripciones(rs.getInt(7));
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
    
    public List<curso> graficarCurso() {
        List<curso> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select nombre, nro_inscripciones, banner, e.nombre_especialidad\n" +
            "from curso c inner join especialidad e\n" +
            "on c.id_especialidad = e.id_especialidad\n" +
            "order by nro_inscripciones desc limit 6";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                curso c = new curso();
                c.setNombre(rs.getString(1));
                c.setNro_inscripciones(rs.getInt(2));
                c.setBanner(rs.getString(3));
                c.setNombre_especialidad(rs.getString(4));
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
    
    public int AdicionCurso(curso c, String link1, String link2, String link3, String link4, String link5) {
        int state = 0;
        Connection conn = null;
        
        try {
            conn = MySQLConexion.getConexion();
            String sql = "{call anadirCurso(?,?,?,?,?,?,?,?,?,?,?)}";
            //? =equivale a un parametro 
            //PreparedStatement st = conn.prepareStatement(sql);
            CallableStatement st = conn.prepareCall(sql);
            //relacionar el ? con su variable 
            st.setString(1, c.getNombre());
            st.setDouble(2, c.getPrecio());
            st.setString(3, "default_banner.jpg");
            st.setInt(4, c.getId_especialidad());
            st.setInt(5, c.getId_usuario());
            st.setString(6, c.getDetalle());
            st.setString(7, link1);
            st.setString(8, link2);
            st.setString(9, link3);
            st.setString(10, link4);
            st.setString(11, link5);

            state = st.executeUpdate();
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
        return state;
    }
    
    public int modificarCurso(curso c, String link1, String link2, String link3, String link4, String link5, int idContenido1, int idContenido2, int idContenido3, int idContenido4, int idContenido5) {
        int num = 0;
        Connection conn = null;
        
        try {
            conn = MySQLConexion.getConexion();
            String sql = "{call modificarCurso(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
            //? =equivale a un parametro 
            CallableStatement st = conn.prepareCall(sql);
            //relacionar el ? con su variable 
            st.setInt(1, c.getId_curso());
            st.setString(2, c.getNombre());
            st.setDouble(3, c.getPrecio());
            st.setInt(4, c.getId_especialidad());
            st.setInt(5, c.getId_usuario());
            st.setString(6, c.getDetalle());
            st.setString(7, link1);
            st.setString(8, link2);
            st.setString(9, link3);
            st.setString(10, link4);
            st.setString(11, link5);
            st.setInt(12, idContenido1);
            st.setInt(13, idContenido2);
            st.setInt(14, idContenido3);
            st.setInt(15, idContenido4);
            st.setInt(16, idContenido5);

            num = st.executeUpdate();
            
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
    
    public curso getCurso(int id) {
        curso c = null;
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_curso, nombre, precio, id_especialidad, id_usuario, detalle_curso \n" +
            "from curso where id_curso = ?;";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            if (rs.next()) {
                c = new curso();
                c.setId_curso(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setPrecio(rs.getDouble(3));
                c.setId_especialidad(rs.getInt(4));
                c.setId_usuario(rs.getInt(5));
                c.setDetalle(rs.getString(6));
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
        return c;
    }
    
    public void eliminarCurso(int idCurso) {
        Connection conn = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "{call eliminarCurso(?)}";
            CallableStatement st = conn.prepareCall(sql);
            st.setInt(1, idCurso);
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
    
    
}
