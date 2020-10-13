/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controlador;

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
    public List<factura> listaFacturas() {
        List<factura> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select f.id_factura, f.fecha, u.nombre_us, c.nombre, m.nom_pago, c.precio\n" +
            "from factura f, usuario u, curso c, metodo_pago m\n" +
            "where f.id_usuario = u.id_usuario and f.id_curso = c.id_curso and f.id_met_pago = m.id_met_pago;";
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
    public List<factura> listaFacturas(int id) {
        List<factura> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select f.id_factura, f.fecha, u.nombre_us, c.nombre, m.nom_pago, c.precio\n" +
            "from factura f, usuario u, curso c, metodo_pago m\n" +
            "where f.id_usuario = u.id_usuario and f.id_curso = c.id_curso and f.id_met_pago = m.id_met_pago and u.id_usuario = ?;";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
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
    
    //ingresar factura
    public void createFactura(factura f) {
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "insert into factura (fecha, id_usuario, id_curso, id_met_pago) values (?, ?, ?, ?);";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, f.getFecha());
            st.setInt(2, f.getId_usuario());
            st.setInt(3, f.getId_curso());
            st.setInt(4, f.getId_metodo_pago());
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
    
    //Eliminar factura
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
