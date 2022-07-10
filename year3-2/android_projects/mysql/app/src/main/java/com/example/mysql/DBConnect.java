package com.example.mysql;
import java.sql.*;
public class DBConnect {
    public static Connection getConnect(){
       try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con =DriverManager.getConnection("jdbc:mysql://192.168.214.45:3306/db1","seng","12345678");
        return con;
       } catch (Exception ex) {
           return null;
       }
    }
}
