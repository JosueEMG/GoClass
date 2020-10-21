/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

/**
 * 
 * @author Josue Emmanuel Medina Garcia
 */
public class inscripcion {

    private int id_inscripcion;
    private int id_curso;
    private int id_usuario;
    private int id_factura;
    private String nombre;
    private String banner;
    private String detalle_curso;

    public inscripcion() {
    }

    public inscripcion(int id_inscripcion, int id_curso, int id_usuario, int id_factura) {
        this.id_inscripcion = id_inscripcion;
        this.id_curso = id_curso;
        this.id_usuario = id_usuario;
        this.id_factura = id_factura;
    }

    public int getId_inscripcion() {
        return id_inscripcion;
    }

    public void setId_inscripcion(int id_inscripcion) {
        this.id_inscripcion = id_inscripcion;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }

    public int getId_factura() {
        return id_factura;
    }

    public void setId_factura(int id_factura) {
        this.id_factura = id_factura;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner;
    }

    public String getDetalle_curso() {
        return detalle_curso;
    }

    public void setDetalle_curso(String detalle_curso) {
        this.detalle_curso = detalle_curso;
    }
    
    
}
