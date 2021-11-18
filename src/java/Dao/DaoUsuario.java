/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author Fabian Palma
 */
public class DaoUsuario {
    
    private int idusuario;
    private String usuario;
    private String contrasena;
    private String rol;
    private String rut;

    public DaoUsuario(int idusuario, String usuario, String contrasena, String rol, String rut) {
        this.idusuario = idusuario;
        this.usuario = usuario;
        this.contrasena = contrasena;
        this.rol = rol;
        this.rut = rut;
    }

    public DaoUsuario(String usuario, String contrasena, String rol) {
        this.usuario = usuario;
        this.contrasena = contrasena;
        this.rol = rol;
    }

    
    
    public DaoUsuario() {
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }
    
    public String toString(){
        return "Datos [idusuario="+idusuario+", usuario="+usuario+", contrasena="+contrasena+", rol="+rol+", rut="+rut+"]";
    }

}
