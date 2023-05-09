package model;

import databaseConnect.DataBaseConnector;

import java.sql.Connection;

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

    public void insertCustomer(String MaKH, String name, String email, String phone, String id) {
        String sql = "'" + MaKH + "','" + name + "', '" + email + "','" + phone + "', '" + id + "','" + Login.getUserId() + "'";
        String insertSql = "insert into DANHSACHTHAMGIATOUR (MaKhachHang, Ten, Email, SoDienThoai, CMND) values(" + sql + ")";
        System.out.println(insertSql);
    }



    public void outCustomer() {
        System.out.println(this.name + " " + this.phone + " " + this.username);
    }
}
