package com.bmp.mysqlapp;
import java.sql.*;
public class DBConnect {
    public static Connection getConnect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String user="root";
            String pwd="123";
            String url="jdbc:mysql://192.168.248.45/mysqlapp";
            Connection c =DriverManager.getConnection(url,user,pwd);
            return c;
        }catch (Exception ex){
            return null;
        }
    }
}
