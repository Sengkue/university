package com.example.mysql;
import java.sql.*;
public class DBConnect {
    public static Connection getConnect(){
       try {
              Class.forName("com.mysql.jdbc.Driver");
              String url = "jdbc:mysql://192.168.236.142:3306/db1";
                String user = "user";
                String password = "12345678";
                Connection con = DriverManager.getConnection(url, user, password);
                return con;
         } catch (Exception e) {
              e.printStackTrace();
              return null;
       } catch (Exception ex) {
           return null;
       }
    }
}
