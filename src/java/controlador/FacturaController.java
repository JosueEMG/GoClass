/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.factura;
import util.MySQLConexion;

/**
 *
 * @author Josue Emmanuel Medina Garcia
 */
public class FacturaController {

    //listar facturas
    public List<factura> listaFacturas(String consulta) {
        List<factura> lis = new ArrayList<>();
        Connection conn = null;

        try {
            if (consulta != null) {
                conn = MySQLConexion.getConexion();
                String sql = "select f.id_factura, f.fecha, u.nombre_us, c.nombre, f.metodo_pago, c.precio\n"
                        + "from factura f, usuario u, curso c \n"
                        + "where f.id_usuario = u.id_usuario and f.id_curso = c.id_curso and c.nombre like ?";
                //st.setString(1, cad);
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(1, "%" + consulta + "%");
                ResultSet rs = st.executeQuery();
                //llenar el arraylist con la clase entidad
                while (rs.next()) {
                    factura a = new factura();
                    a.setId_factura(rs.getInt(1));
                    a.setFecha(rs.getString(2));
                    a.setNombre_usuario(rs.getString(3));
                    a.setNombre_curso(rs.getString(4));
                    a.setNombre_metodo_pago(rs.getString(5));
                    a.setPrecio(rs.getDouble(6));
                    lis.add(a);
                }
            } else {
                conn = MySQLConexion.getConexion();
                String sql = "select f.id_factura, f.fecha, u.nombre_us, c.nombre, f.metodo_pago, c.precio\n"
                        + "from factura f, usuario u, curso c \n"
                        + "where f.id_usuario = u.id_usuario and f.id_curso = c.id_curso";
                //st.setString(1, cad);
                PreparedStatement st = conn.prepareStatement(sql);
                ResultSet rs = st.executeQuery();
                //llenar el arraylist con la clase entidad
                while (rs.next()) {
                    factura a = new factura();
                    a.setId_factura(rs.getInt(1));
                    a.setFecha(rs.getString(2));
                    a.setNombre_usuario(rs.getString(3));
                    a.setNombre_curso(rs.getString(4));
                    a.setNombre_metodo_pago(rs.getString(5));
                    a.setPrecio(rs.getDouble(6));
                    lis.add(a);
                }
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

    //listar facturas por idUsuario
    public List<factura> listaFacturas(int idUsuario, String consulta) {
        List<factura> lis = new ArrayList<>();
        Connection conn = null;

        try {
            if (consulta != null) {
                conn = MySQLConexion.getConexion();
                String sql = "select f.id_factura, f.fecha, u.nombre_us, c.nombre, f.metodo_pago, c.precio\n"
                        + "from factura f, usuario u, curso c \n"
                        + "where f.id_usuario = u.id_usuario and f.id_curso = c.id_curso and u.id_usuario = ? and c.nombre like ?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setInt(1, idUsuario);
                st.setString(2, "%" + consulta + "%");
                ResultSet rs = st.executeQuery();
                //llenar el arraylist con la clase entidad
                while (rs.next()) {
                    factura a = new factura();
                    a.setId_factura(rs.getInt(1));
                    a.setFecha(rs.getString(2));
                    a.setNombre_usuario(rs.getString(3));
                    a.setNombre_curso(rs.getString(4));
                    a.setNombre_metodo_pago(rs.getString(5));
                    a.setPrecio(rs.getDouble(6));
                    lis.add(a);
                }
            } else {
                conn = MySQLConexion.getConexion();
                String sql = "select f.id_factura, f.fecha, u.nombre_us, c.nombre, f.metodo_pago, c.precio\n"
                        + "from factura f, usuario u, curso c \n"
                        + "where f.id_usuario = u.id_usuario and f.id_curso = c.id_curso and u.id_usuario = ?;";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setInt(1, idUsuario);
                ResultSet rs = st.executeQuery();
                //llenar el arraylist con la clase entidad
                while (rs.next()) {
                    factura a = new factura();
                    a.setId_factura(rs.getInt(1));
                    a.setFecha(rs.getString(2));
                    a.setNombre_usuario(rs.getString(3));
                    a.setNombre_curso(rs.getString(4));
                    a.setNombre_metodo_pago(rs.getString(5));
                    a.setPrecio(rs.getDouble(6));
                    lis.add(a);
                }
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

    public boolean verificacionInscripcion(int idCurso, int idUsuario) {
        Connection conn = null;
        boolean state = false;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_curso from inscripcion where id_usuario = ? and id_curso = ?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idUsuario);
            st.setInt(2, idCurso);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                state = true;
            }
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
        return state;
    }

    //ingresar factura
    public int createFactura(int id_us, int id_cur, String metodo_p) {
        Connection conn = null;
        int num = 0;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "{call comprarCurso(?,?,?)}";
            CallableStatement st = conn.prepareCall(sql);
            st.setInt(1, id_us);
            st.setInt(2, id_cur);
            st.setString(3, metodo_p);
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

    //Eliminar factura
    /*
    public void deleteFactura(int idFactura) {
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "delete from factura where id_factura = ?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idFactura);
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
     */
    //Eliminar factura por idUusario
    public void deleteFacturabyUserId(int idUsuario) {
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "delete from factura where id_usuario = ?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idUsuario);
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
