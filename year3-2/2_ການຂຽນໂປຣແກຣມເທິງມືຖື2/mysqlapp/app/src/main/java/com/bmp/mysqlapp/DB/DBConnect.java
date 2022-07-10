package com.bmp.mysqlapp.DB;
import java.sql.*;
public class DBConnect {
    public static Connection getConnect(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://192.168.214.45:3306/db1";
            String user="seng";
            String pwd="12345678";
            Connection c =DriverManager.getConnection(url,user,pwd);
            return c;
        }catch ( Exception ex){
            return null;
        }

    }

}
