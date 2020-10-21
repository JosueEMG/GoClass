package modelo;

public class factura {
    
    private int id_factura;
    private String fecha;
    private int id_usuario;
    private int id_curso;
    private String metodo_pago;
    private String nombre_usuario;
    private String nombre_curso;
    private String nombre_metodo_pago;
    private double precio;
    
    public factura() {
        
    }

    public factura(String fecha, int id_usuario, int id_curso, String metodo_pago, double precio) {
        this.fecha = fecha;
        this.id_usuario = id_usuario;
        this.id_curso = id_curso;
        this.metodo_pago = metodo_pago;
        this.precio = precio;
    }

    public int getId_factura() {
        return id_factura;
    }

    public void setId_factura(int id_factura) {
        this.id_factura = id_factura;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getNombre_curso() {
        return nombre_curso;
    }

    public void setNombre_curso(String nombre_curso) {
        this.nombre_curso = nombre_curso;
    }

    public String getNombre_metodo_pago() {
        return nombre_metodo_pago;
    }

    public void setNombre_metodo_pago(String nombre_metodo_pago) {
        this.nombre_metodo_pago = nombre_metodo_pago;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getMetodo_pago() {
        return metodo_pago;
    }

    public void setMetodo_pago(String metodo_pago) {
        this.metodo_pago = metodo_pago;
    }


    
    
    
    
}
