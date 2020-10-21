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
import modelo.inscripcion;
import util.MySQLConexion;

/**
 * 
 * @author Josue Emmanuel Medina Garcia
 */
public class InscripcionController {

    //listar usuarios
    public List<inscripcion> listaInscripciones(int idUsuario) {
        List<inscripcion> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "select i.id_curso, c.nombre, c.banner, c.detalle_curso\n" +
            "from inscripcion i inner join curso c\n" +
            "on i.id_curso = c.id_curso where i.id_usuario = ?";
            //st.setString(1, cad);
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idUsuario);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                inscripcion a = new inscripcion();
                a.setId_curso(rs.getInt(1));
                a.setNombre(rs.getString(2));
                a.setBanner(rs.getString(3));
                a.setDetalle_curso(rs.getString(4));
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
    //procedure para agregar
    
    //procedure para eliminar inscripcion 
}
