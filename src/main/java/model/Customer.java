package model;

import databaseConnect.DataBaseConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Customer {
    private  String maKh, name, address, phone, tax, email, cmnd, maDoan, username, password;
    private Connection connection = DataBaseConnector.getConnection();
            //getConnection("jdbc:oracle:thin:@localhost:1521:XE", "DBA_PTTK", "123");

    public Customer()
    {
        this.maKh = "xxx";
        this.name = "Hello world";
        this.address = "111 DBP";
        this.phone = "113";
        this.tax = "1412";
        this.email = "police@gmail.com";
        this.cmnd = "187778888";

    }

    public Customer(String maKh,String name,String address,String phone,String tax,String email,String cmnd,String maDoan,String username,String password) {
        this.maKh = maKh;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.tax = tax;
        this.email = email;
        this.cmnd = cmnd;
        this.username = username;
        this.maDoan = maDoan;
        this.password = password;
    }

    public Customer(String maKh,String name,String phone,String email,String cmnd) {
        this.maKh = maKh;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.cmnd = cmnd;
    }

    public Customer(String name,String phone,String email,String cmnd) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.cmnd = cmnd;
    }

    public String getName(){
        return this.name;
    }
    public String getUsername(){
        return this.username;
    }
    public String getEmail(){
        return this.email;
    }
    public String getPhone(){
        return this.phone;
    }
    public String getID(){
        return this.cmnd;
    }
    public String getMaKh(){
        return this.maKh;
    }

    public static boolean insertDSThamGiaTour(String MaTour, String date, String phuongTien, String MaKH, String name, String email, String phone, String id) {

        String ndate = "TO_DATE('" + date + "',dd-mm-yyyy')";
        String sql = "insert into " + DataBaseConnector.getOwner() + ".DANHSACHTHAMGIATOUR (NguoiDangKy, Ten, Email, SDT, CMND, Tour, NgayBatDau, PhuongTien) values(?, ?, ?, ?, ?, ?, TO_DATE(?, 'DD-MM-YYYY'), ?)";


        try {
            PreparedStatement statement = DataBaseConnector.getConnection().prepareStatement(sql);
            statement.setString(1, MaKH);
            statement.setString(2, name);
            statement.setString(3, email);
            statement.setString(4, phone);
            statement.setString(5, id);
            statement.setString(6, MaTour);
            statement.setString(7, date);
            statement.setString(8, phuongTien);


            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  false;
    }



    public void outCustomer() {
        System.out.println(this.name + " " + this.phone + " " + this.username);
    }
}
