package modelo;

import java.sql.Date;

public class usuario extends tipo_us{
    
    private int id_usuario;
    private String nombre_us;
    private String apellidos_us;
    private Date fecha_nacimineto;
    private String dni_us;
    private String contrasena_us;
    private String correo_us;
    private String sexo_us;
    private String avatar;

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre_us() {
        return nombre_us;
    }

    public void setNombre_us(String nombre_us) {
        this.nombre_us = nombre_us;
    }

    public String getApellidos_us() {
        return apellidos_us;
    }

    public void setApellidos_us(String apellidos_us) {
        this.apellidos_us = apellidos_us;
    }

    public Date getFecha_nacimineto() {
        return fecha_nacimineto;
    }

    public void setFecha_nacimineto(Date fecha_nacimineto) {
        this.fecha_nacimineto = fecha_nacimineto;
    }

    public String getDni_us() {
        return dni_us;
    }

    public void setDni_us(String dni_us) {
        this.dni_us = dni_us;
    }

    public String getContrasena_us() {
        return contrasena_us;
    }

    public void setContrasena_us(String contrasena_us) {
        this.contrasena_us = contrasena_us;
    }

    public String getCorreo_us() {
        return correo_us;
    }

    public void setCorreo_us(String correo_us) {
        this.correo_us = correo_us;
    }

    public String getSexo_us() {
        return sexo_us;
    }

    public void setSexo_us(String sexo_us) {
        this.sexo_us = sexo_us;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
    
    
    
}
