package modelo;

import java.sql.Date;

public class usuario {
    
    private int id_usuario;
    private String nombre_us;
    private String apellidos_us;
    private String fecha_nacimiento;
    private String dni_us;
    private String contrasena_us;
    private String correo_us;
    private String sexo_us;
    private int id_tipo_us;
    private String nombre_tipo_us;
    private String avatar;

    public usuario() {
    }           

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

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public int getId_tipo_us() {
        return id_tipo_us;
    }

    public void setId_tipo_us(int id_tipo_us) {
        this.id_tipo_us = id_tipo_us;
    }

    public String getNombre_tipo_us() {
        return nombre_tipo_us;
    }

    public void setNombre_tipo_us(String nombre_tipo_us) {
        this.nombre_tipo_us = nombre_tipo_us;
    }
    
    
    
}
