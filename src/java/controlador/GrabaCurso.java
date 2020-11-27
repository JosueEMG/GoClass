package controlador;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.List;
import util.MySQLConexion;
import modelo.*;

/**
 *
 * @author JuanG
 */
public class GrabaCurso {
        //grabar la cabecera y el detalle
   //grabar curso y contenido
    public String grabaCur(String nom_cur,double pre,String banner,String id_esp, int cod_usu, String descri,int inscripciones, List<contenido_curso> lista){
      String cod_cur="";  
        Connection conn = null;
        try {
            conn = MySQLConexion.getConexion();
             CallableStatement st = conn.prepareCall("{call AdicionCurso(?,?,?,?,?,?,?)}");
             st.setString(1, nom_cur);
             st.setDouble(2, pre);
             st.setString(2, banner);
             st.setString(2, id_esp);
             st.setInt(2, cod_usu);
             st.setString(2, descri);
             st.setInt(2, inscripciones);
             ResultSet rs=st.executeQuery();
             if(rs.next())
                 cod_cur=rs.getString(1);
            //grabar el detalle
            CallableStatement st2=conn.prepareCall("{call spdetalle(?,?,?)}");
            //recorrer la lista y grabar cada item
            for(contenido_curso x:lista){
                st2.setString(1, cod_cur);
                st2.setString(2, x.getArchivo());
                st2.setString(3, x.getLink());
                st2.executeUpdate();
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
       
       
     return cod_cur;   
    }
}
