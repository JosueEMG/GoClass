package modelo;

import java.sql.Date;

public class factura {
    
    private int id_factura;
    private Date fecha;
    private int id_curso;
    private String nombre_met_pago;

    public int getId_factura() {
        return id_factura;
    }

    public void setId_factura(int id_factura) {
        this.id_factura = id_factura;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }

    public String getNombre_met_pago() {
        return nombre_met_pago;
    }

    public void setNombre_met_pago(String nombre_met_pago) {
        this.nombre_met_pago = nombre_met_pago;
    }
    
    
    
    
}
