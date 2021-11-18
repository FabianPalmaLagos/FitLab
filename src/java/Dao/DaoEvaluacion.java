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
public class DaoEvaluacion {
    
        private String rut;
        private int peso;
        private int estatura;
        private String fechaev;
        private int imc;
        private String estado;
        private String desde;
        private String hasta;

    public DaoEvaluacion(String rut, int peso, int estatura, String fechaev, int imc, String estado) {
        this.rut = rut;
        this.peso = peso;
        this.estatura = estatura;
        this.fechaev = fechaev;
        this.imc = imc;
        this.estado = estado;
    }

    public DaoEvaluacion(String rut, String desde, String hasta) {
        this.rut = rut;
        this.desde = desde;
        this.hasta = hasta;
    }

    public String getDesde() {
        return desde;
    }

    public void setDesde(String desde) {
        this.desde = desde;
    }

    public String getHasta() {
        return hasta;
    }

    public void setHasta(String hasta) {
        this.hasta = hasta;
    }

    
    
    
    
    public DaoEvaluacion() {
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public int getEstatura() {
        return estatura;
    }

    public void setEstatura(int estatura) {
        this.estatura = estatura;
    }

    public String getFechaev() {
        return fechaev;
    }

    public void setFechaev(String fechaev) {
        this.fechaev = fechaev;
    }

    public int getImc() {
        return imc;
    }

    public void setImc(int imc) {
        this.imc = imc;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
        
        
    
}
