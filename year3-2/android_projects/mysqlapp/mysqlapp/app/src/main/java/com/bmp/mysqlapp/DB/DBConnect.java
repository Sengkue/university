package com.bmp.mysqlapp.DB;
import java.sql.*;
public class DBConnect {
    public static Connection getConnect(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://192.168.137.227/db1";
            String user="bounmy";
            String pwd="123456";
            Connection c =DriverManager.getConnection(url,user,pwd);
            return c;
        }catch ( Exception ex){
            return null;
        }

    }

}
