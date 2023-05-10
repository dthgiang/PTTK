package model;

import databaseConnect.DataBaseConnector;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Login {
    private static String username, password, role, MaUser;

    public Login(String username, String password) {
        this.username = username;
        this.password = password;
    }



    public boolean authentication() {
        try {
            Connection connection = DataBaseConnector.getConnection(this.username, this.password);
            if (connection == null) {
                return false;
            }
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from DBA_PTTK.KHACHHANG where UPPER(username) = '" + this.username.toUpperCase() + "'");
            if (!rs.next()) {
                rs = stmt.executeQuery("select * from DBA_PTTK.NHANVIEN where UPPER(username) = '" + this.username.toUpperCase() + "'");
                if (!rs.next()) {
                    return false;
                }
                this.MaUser = rs.getString("MANV");
                this.role = "Nhan Vien";
                return true;
            }
            this.MaUser = rs.getString("MAKH");
            this.role = "Khach Hang";
            return true;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public static String getRole() {
        return role;
    }

    public static String getUsername() {
        return username.toUpperCase();
    }
    public static String getUserId() {
        return MaUser;
    }
}
