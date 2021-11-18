/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Dao.DaoMiembro;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Fabian Palma
 */
public class Miembro implements InterfaceMiembros{
    Conexion conexion = new Conexion();

    @Override
    public String insertar(Object obj) {
        String resp="";
        int nfilas;
        DaoMiembro daoMiembro = (DaoMiembro) obj;
        Connection connection;
        PreparedStatement pst;
       //consultas preparadas.
        String query = "insert into tblmiembro values(?,?,?,?,?,?)";
        
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);
            pst.setString(1, daoMiembro.getRut());
            pst.setString(2, daoMiembro.getNombre());
            pst.setString(3, daoMiembro.getApellido());
            pst.setString(4, daoMiembro.getDireccion());
            pst.setInt(5, daoMiembro.getTelefono());
            pst.setString(6, daoMiembro.getCorreo());
            
            nfilas = pst.executeUpdate();
            if(nfilas > 0 ){
                resp = "Miembro registrado con exito.";
            }else{
                resp  = "Error al intentar registrar miembro.";
            }
        } catch (ClassNotFoundException | SQLException e) {
            resp = e.getMessage();
        }
        return resp;
    }

    @Override
    public List<DaoMiembro> buscar(Object obj) {
        List <DaoMiembro> datos = new ArrayList<>();
        DaoMiembro daoMiembro = (DaoMiembro) obj;
        Connection connection;
        PreparedStatement pst;
        ResultSet resultSet;
        
        String query = "select * from tblmiembro where rut = ?";
        
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);
            pst.setString(1, daoMiembro.getRut());
            resultSet = pst.executeQuery();
            
            while(resultSet.next()){
             datos.add(new DaoMiembro( resultSet.getString(1) , resultSet.getString(2), resultSet.getString(3),resultSet.getString(4), resultSet.getInt(5), resultSet.getString(6)));
            }
        } catch(ClassNotFoundException | SQLException e){
            e.getMessage();
        }
        
         return datos;
    }

    @Override
    public List<DaoMiembro> buscar2(String parametro) {
        List<DaoMiembro> datos = new ArrayList<>();
        Connection con;
        PreparedStatement pst;
        ResultSet resultSet;  
        
        String query = "select * from tblmiembro where rut = ? ";
        
        try {
            Class.forName(conexion.getDriver());
            con = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setString(1, parametro);
            resultSet = pst.executeQuery();
            
            while(resultSet.next()){
                datos.add(new DaoMiembro(resultSet.getString(1) , resultSet.getString(2), resultSet.getString(3),resultSet.getString(4), resultSet.getInt(5), resultSet.getString(6)));
            }
            
            
        } catch (ClassNotFoundException | SQLException e) {
        }

        return datos;
    }

    @Override
    public String delete(Object obj) {
        DaoMiembro daoMiembro = (DaoMiembro) obj;
        Connection connection;
        PreparedStatement pst;
        int nfilas;
        
        String query = "delete from tblmiembro where rut = ?";
        String resp = "";
        
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);            
            pst.setString(1, daoMiembro.getRut());
            
            nfilas = pst.executeUpdate();
            
            if(nfilas > 0){
                resp = "Miembro eliminado con exito";
            }else{
                resp = "No se pudo eliminar al miembro";
            }
            
        } catch (ClassNotFoundException | SQLException e) {
           resp =  e.getMessage();
        }
        return resp;
    }

    @Override
    public String update(Object obj) {
        DaoMiembro daoMiembro = (DaoMiembro) obj;
        Connection connection;
        PreparedStatement pst;
        int nfilas;
        
        String query = "update tblmiembro set direccion = ?, telefono = ?, correo = ? where rut = ? ";
        String resp = "";
        
        try {
            Class.forName(conexion.getDriver());
            connection = (Connection) DriverManager.getConnection(conexion.getUrl(), conexion.getUsuario(), conexion.getClave());
            pst = (PreparedStatement) connection.prepareStatement(query);   
            pst.setString(1, daoMiembro.getDireccion());
            pst.setInt(2, daoMiembro.getTelefono());
            pst.setString(3, daoMiembro.getCorreo());
            pst.setString(4, daoMiembro.getRut());
            
            nfilas = pst.executeUpdate();
            
            if(nfilas > 0){
                resp = "Registro actualizado con exito";
            }else{
                resp = "No se actualizado ningún dato";
            }
            
        } catch (ClassNotFoundException | SQLException e) {
           resp =  e.getMessage();
        }
        return resp;
        
    }
 }
  