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

    public List<factura> listaFacturas() {
        List<factura> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select id_usuario ,nombre_us, apellidos_us, fecha_nacimiento, dni_us, contrasena_us, correo_us, sexo_us, t.nombre_tipo, avatar\n" +
            "from usuario u inner join tipo_us t\n" +
            "on u.tipo_us = t.id_tipo_us;";
            //st.setString(1, cad);
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                usuario a = new usuario();
                a.setId_usuario(rs.getInt(1));
                a.setNombre_us(rs.getString(2));
                a.setApellidos_us(rs.getString(3));
                a.setFecha_nacimiento(rs.getString(4));
                a.setDni_us(rs.getString(5));
                a.setContrasena_us(rs.getString(6));
                a.setCorreo_us(rs.getString(7));
                a.setSexo_us(rs.getString(8));
                a.setNombre_tipo_us(rs.getString(9));
                a.setAvatar(rs.getString(10));
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
