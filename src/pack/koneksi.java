/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Tiara Arista
 */
public class koneksi {
    public static com.mysql.jdbc.Connection koneksi() {
        String konString = "jdbc:mysql://localhost:3306/ara_helmet";
        com.mysql.jdbc.Connection koneksi = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            koneksi = (com.mysql.jdbc.Connection) DriverManager.getConnection(konString,"root","");
            System.out.println("Koneksi Berhasil");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Koneksi Gagal");
        } catch (SQLException ex) {
            Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Koneksi Gagal");
        }
        return koneksi;
    }

    static ResultSet executeQuery(String SQL) {
        ResultSet rs = null;
        com.mysql.jdbc.Connection koneksi = koneksi();
        try {
            Statement st = koneksi.createStatement();
            rs = st.executeQuery(SQL);
        } catch (SQLException ex) {
            Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    static int execute(String SQL) {
        int status = 0;
        com.mysql.jdbc.Connection koneksi = koneksi();
        try {
            Statement st = koneksi.createStatement();
            status = st.executeUpdate(SQL);
        } catch (SQLException ex) {
            Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }
        public Connection cc;
        public Statement st;
        public ResultSet rs;

    public void Class (){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cc=DriverManager.getConnection("jdbc:mysql://localhost/ara_helmet","root","");
            System.out.println("koneksi sukses");
        }
        catch(Exception e){
            System.out.println (e); 
        }
    }
    
    public static Connection koneksijasp(){
        Connection con = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/ara_helmet","root","");
            return con;
        } catch (ClassNotFoundException ex) {
            return null;
        }catch (SQLException ex){
            return null;
        }
    }
}
