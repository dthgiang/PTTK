package databaseConnect;
import java.sql.*;

public final class DBUtil {
    private static boolean isDriverLoaded = false;
    private final static String url="jdbc:oracle:thin:@localhost:1521:XE";
    private final static String user="DBA_PTTK";
    private final static String password="123";

    static {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            System.out.println("Driver Loaded");
            isDriverLoaded = true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }


    public static Connection getConnection() throws SQLException{
        Connection con = null;
        if(isDriverLoaded){
            con  = DriverManager.getConnection(url,user,password);
            System.out.println("Connection established");
        }
        return con;
    }

    public static void closeConnection(Connection con) throws SQLException{
        if(con!=null){
            con.close();
            System.out.println("connection closed");
        }
    }
}
