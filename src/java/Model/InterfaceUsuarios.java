/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.List;

/**
 *
 * @author Fabian Palma
 */
public interface InterfaceUsuarios {
    
    public String insertar(Object obj);
    public List<?> login(Object obj);
    public List<?> login2(String parametro1,String parametro2, String parametro3);
    public List<?> buscarid(int parametro);
    public List<?> buscarrut(Object obj);
    public List<?>listarusuarios();
    public List<?> buscarrol(String parametro);
    public List<?> consultar();
    
}
