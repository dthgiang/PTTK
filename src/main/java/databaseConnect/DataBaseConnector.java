package databaseConnect;

import java.sql.*;

public class DataBaseConnector {
    private static DataBaseConnector connector;
    private static String dbUrl = "jdbc:oracle:thin:@localhost:1521:XE";
    public static String username;
    private String password;
    private Connection connection;


    private DataBaseConnector(String dbURL, String username, String password) {
        // The following code emulates slow initialization.
        this.dbUrl = dbURL;
        this.username = username;
        this.password = password;

        try {
            connection = DriverManager.getConnection(dbUrl, this.username, this.password);
            System.out.println("Connect succeed");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static DataBaseConnector getConnector(String dbURL, String username, String password) {
        if (connector == null) {
            connector = new DataBaseConnector(dbURL, username, password);
        }

        return connector;
    }

    public static DataBaseConnector getConnector( String username, String password) {
        if (connector == null) {
            connector = new DataBaseConnector(dbUrl, username, password);
        }

        return connector;
    }

    public static Connection getConnection(String dbURL, String username, String password) {
        if (connector == null) {
            connector = new DataBaseConnector(dbURL, username, password);
        }

        return connector.connection;
    }
    public static Connection getConnection(String username, String password) {
        if (connector == null) {
            connector = new DataBaseConnector(dbUrl, username, password);
        }

        return connector.connection;
    }


    public static Connection getConnection() {
        return connector.connection;
    }


}
