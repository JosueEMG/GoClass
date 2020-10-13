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
import modelo.metodo_pago;
import util.MySQLConexion;
/**
 * 
 * @author Josue Emmanuel Medina Garcia
 */
public class MetodoPagoController {

    //listar metodo pago
    public List<metodo_pago> listaMetodoPago() {
        List<metodo_pago> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_met_pago, nom_pago from metodo_pago;";
            //st.setString(1, cad);
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                metodo_pago a = new metodo_pago();
                a.setId_metodo_pago(rs.getInt(1));
                a.setNombre_met_pago(rs.getString(2));
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
    
    //Crear metodo de pago
    public void createMetodoPago(metodo_pago p) {
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "insert into metodo_pago (nom_pago) values(?);";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, p.getNombre_met_pago());
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
    
    //Eliminar metodo de pago
    public void deleteMetodoPago(int idMetodoPago) {
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "delete from metodo_pago where id_met_pago = ?;";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idMetodoPago);
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
