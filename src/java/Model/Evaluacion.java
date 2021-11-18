/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Dao.DaoEvaluacion;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Fabian Palma
 */
public class Evaluacion implements InterfaceEvaluaciones{
    Conexion conexion = new Conexion();
    @Override
    public String insertar(Object obj) {
        
        String resp="";
        int nfilas;
        DaoEvaluacion daoEvaluacion = (DaoEvaluacion) obj;
        Connection connection;
        PreparedStatement pst;
       //consultas preparadas.
        String query = "insert into tblevaluacion values(?,?,?,?,?,?)";
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);
            pst.setString(1, daoEvaluacion.getRut());
            pst.setInt(2, daoEvaluacion.getPeso());
            pst.setInt(3, daoEvaluacion.getEstatura());
            pst.setString(4, daoEvaluacion.getFechaev());
            pst.setInt(5, daoEvaluacion.getImc());
            pst.setString(6, daoEvaluacion.getEstado());
            
            nfilas = pst.executeUpdate();
            if(nfilas > 0 ){
            resp = "Evaluación registrada con exito.";
            }else{
            resp  = "Error al intentar registrar evaluación.";
            }
            
            
        } catch (ClassNotFoundException | SQLException e) {
            resp = e.getMessage();
        }        
        return resp;
        
    }

    @Override
    public List<DaoEvaluacion> listar(Object obj) {
        List<DaoEvaluacion> datos = new ArrayList<>();
        DaoEvaluacion daoEvaluacion = (DaoEvaluacion) obj;
        
        Connection connection;
        PreparedStatement pst;
        
        ResultSet resultSet;
        
        String query = "SELECT * FROM tblevaluacion where rut = ? and fechaev BETWEEN CAST(? AS DATE) AND CAST(? AS DATE) ORDER BY fechaev ASC";
        
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);
            pst.setString(1, daoEvaluacion.getRut());
            pst.setString(2, daoEvaluacion.getDesde());
            pst.setString(3, daoEvaluacion.getHasta());
            resultSet = pst.executeQuery();
            
            //pasamos el resultSet 
            
            while(resultSet.next()){
             datos.add(new DaoEvaluacion( resultSet.getString(1) , resultSet.getInt(2), resultSet.getInt(3), resultSet.getString(4), resultSet.getInt(5), resultSet.getString(6)));
            }
            
        } catch (ClassNotFoundException | SQLException e) {
            e.getMessage();            
        }        
        return datos;
    }
    
}
