/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.security.Helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBHelper {

    //JDBC Drivers Details
    public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    public static final String DB_URL = "jdbc:mysql://localhost:3306/security_project";

    //MySQL Login Credentials
    public static final String USER = "root";
    public static final String PASS = "root";

    

    public static Statement DBConnection() {
        Connection con = null;
        Statement statement = null;
        try {
            //Register JDBC Driver
            Class.forName(JDBC_DRIVER);

            //Creating Connection Object and connecting to MySQL
            con = DriverManager.getConnection(DB_URL, USER, PASS);

            //create a statement object and send it to fire queries
            statement = con.createStatement();
        } catch (Exception e) {

        }
        return statement;
    }

}
