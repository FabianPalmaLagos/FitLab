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
public interface InterfaceMiembros {
    
    public String insertar(Object obj);
    public List<?> buscar(Object obj);
    public List<?> buscar2(String parametro);
    public String delete(Object obj);
    public String update(Object obj);
}
