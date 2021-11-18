/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Dao.DaoEvaluacion;
import Dao.DaoUsuario;
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
public class Usuario implements InterfaceUsuarios{
    Conexion conexion = new Conexion();

    @Override
    public String insertar(Object obj) {
        //variable respuesta es lo que retorna el metodo insertar, exito o error.
        String resp="";
        int nfilas;
        DaoUsuario daoUsuario = (DaoUsuario) obj;
        Connection connection;
        PreparedStatement pst;
       //consultas preparadas.
        String query = "insert into tblusuario values(?,?,?,?,?)";
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);
            pst.setInt(1, daoUsuario.getIdusuario());
            pst.setString(2, daoUsuario.getUsuario());
            pst.setString(3, daoUsuario.getContrasena());
            pst.setString(4, daoUsuario.getRol());
            pst.setString(5, daoUsuario.getRut());
            
            nfilas = pst.executeUpdate();
            if(nfilas > 0 ){
            resp = "Usuario registrado con exito.";
            }else{
            resp  = "Error al intentar registrar usuario.";
            }
            
            
        } catch (ClassNotFoundException | SQLException e) {
            resp = e.getMessage();
        }        
        return resp;
    }

    @Override
    public List<DaoUsuario> login(Object obj) {
        List <DaoUsuario> datos = new ArrayList<>();
        
        DaoUsuario daoUsuario = (DaoUsuario) obj;
        Connection connection;
        PreparedStatement pst;
        ResultSet resultSet;
        
        String query = "select * from tblusuario where usuario = ? and contrasena = ? and rol = ?";
        
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);
            pst.setString(1, daoUsuario.getUsuario());
            pst.setString(2, daoUsuario.getContrasena());
            pst.setString(3, daoUsuario.getRol());
            resultSet = pst.executeQuery();
            
            while(resultSet.next()){
             datos.add(new DaoUsuario( resultSet.getInt(1) , resultSet.getString(2), resultSet.getString(3),resultSet.getString(4), resultSet.getString(5)));
            }
        } catch(ClassNotFoundException | SQLException e){
            e.getMessage();
        }
        
         return datos;
    }

    @Override
    public List<DaoUsuario> buscarid(int parametro) {
        List<DaoUsuario> datos = new ArrayList<>();
        Connection con;
        PreparedStatement pst;
        ResultSet resultSet;  
        
        String query = "select * from tblusuario where idusuario = ? ";
        
        try {
            Class.forName(conexion.getDriver());
            con = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setInt(1, parametro);
            resultSet = pst.executeQuery();
            
            while(resultSet.next()){
                datos.add(new DaoUsuario(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),resultSet.getString(4),  resultSet.getString(5)));
            }
            
            
        } catch (ClassNotFoundException | SQLException e) {
        }

        return datos;
    }

    @Override
    public List<DaoUsuario> buscarrut(Object obj) {
        List<DaoUsuario> datos = new ArrayList<>();
        DaoUsuario daoUsuario = (DaoUsuario) obj;
        Connection con;
        PreparedStatement pst;
        ResultSet resultSet;  
        
        String query = "select * from tblusuario where rut = ? ";
        
        try {
            Class.forName(conexion.getDriver());
            con = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setString(1, daoUsuario.getRut());
            resultSet = pst.executeQuery();
            
            while(resultSet.next()){
                datos.add(new DaoUsuario(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),resultSet.getString(4),  resultSet.getString(5)));
            }
            
            
        } catch (ClassNotFoundException | SQLException e) {
        }

        return datos;}

    @Override
    public List<DaoUsuario> listarusuarios() {
        List<DaoUsuario> datos = new ArrayList<>();
        
        Connection connection;
        PreparedStatement pst;
        
        ResultSet resultSet;
        
        String query = "select usuario from tblusuario";
        
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);
            
            resultSet = pst.executeQuery();
            
            //pasamos el resultSet 
            
            while(resultSet.next()){
             datos.add(new DaoUsuario( resultSet.getInt(1) , resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5)));
            }
            
        } catch (ClassNotFoundException | SQLException e) {
            e.getMessage();            
        }        
        return datos;
    }

    @Override
    public List<DaoUsuario> buscarrol(String parametro) {
        List<DaoUsuario> datos = new ArrayList<>();
        Connection connection;
        PreparedStatement pst;
        
        ResultSet resultSet;
        String query = "select * from tblusuario where usuario = ? ";
        
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);
            pst.setString(1, parametro);
            resultSet = pst.executeQuery();
            
            while(resultSet.next()){
             datos.add(new DaoUsuario( resultSet.getInt(1) , resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5)));
            }
        } catch (ClassNotFoundException | SQLException e) {
        }
        
        return datos;
    }

    @Override
    public List<DaoUsuario> consultar() {
        List<DaoUsuario> datos = new ArrayList<>();
        
        Connection connection;
        PreparedStatement pst;
        ResultSet resultSet;
        
        String query = "select * from tblusuario where rol = 1";
        
        try{
            Class.forName(conexion.getDriver());
            connection = (Connection) (java.sql.Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);
            
            resultSet = pst.executeQuery();
            
            //pasamos el resultado a datos, no se puede retornar resulSet porque no es un tipo de dato
            
            while(resultSet.next()){
                datos.add(new DaoUsuario(Integer.parseInt(resultSet.getString(1)), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5)));
            }
        } catch (ClassNotFoundException | SQLException e){
            e.getMessage();
        }
           return datos;
    }
    @Override
    public List<DaoUsuario> login2(String parametro1, String parametro2, String parametro3) {
        List <DaoUsuario> datos = new ArrayList<>();
        
        Connection connection;
        PreparedStatement pst;
        ResultSet resultSet;
        
        String query = "select * from tblusuario where usuario = ? and contrasena = ? and rol = ?";
        
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);
            pst.setString(1, parametro1);
            pst.setString(2, parametro2);
            pst.setString(3, parametro3);
            resultSet = pst.executeQuery();
            
            while(resultSet.next()){
             datos.add(new DaoUsuario( resultSet.getInt(1) , resultSet.getString(2), resultSet.getString(3),resultSet.getString(4), resultSet.getString(5)));
            }
        } catch(ClassNotFoundException | SQLException e){
            e.getMessage();
        }
        
         return datos;
    }
    
}
