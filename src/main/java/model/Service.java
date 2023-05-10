package model;

import databaseConnect.DataBaseConnector;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Service {
    private String name;
    private int cost;
    private int time;
    private String des;
    private String startDate;
    private String endDate;
    private  String area;
    private  String province;
    private String owner;
    private  String contact;
    public final String type = "Dịch vụ";
    public Service()
    {
        this.name = "Hello world";
        this.cost = 0;
        this.des = "This is tour around the world";
        this.startDate = "05/06/1911";
        this.endDate = "28/01/1941";
        this.time = 7;
        this.owner = "HCMUS";
    }
    public Service(String name) {
        this.name = name;
    }

    public Service(String name, int cost, String Des, String thoiGianBD) {
        this.name = name;
        this.cost = cost;
        this.des = Des;
        this.startDate = thoiGianBD;

    }
    public Service(String name, int cost, String Des, String startDate, String endDate, int time, String owner) {
        this.name = name;
        this.cost = cost;
        this.des = Des;
        this.startDate = startDate;
        this.endDate = endDate;
        this.time = time;
        this.owner = owner;

    }

    public Service(String name, int cost, String Des, String startDate, String endDate, int time, String province, String area, String owner, String contact) {
        this.name = name;
        this.cost = cost;
        this.des = Des;
        this.startDate = startDate;
        this.endDate = endDate;
        this.time = time;
        this.owner = owner;
        this.contact = contact;
        this.area = area;
        this.province = province;
    }

    public String getName(){
        return this.name;
    }
    public int getCost(){
        return this.cost;
    }
    public String getDes(){
        return this.des;
    }
    public String getProvince() {return  province;}
    public String getArea() { return area;}
    public String getEndDate() {
        return endDate;
    }

    public String getStartDate() {
        return startDate;
    }
    public String getOwner() { return  owner;}
    public String getContact() {return contact;}
    public  int getTime() {return time;}
    public Service getSerivce() {
        return this;
    }
    public static ArrayList<Service> getMyService() {
        ArrayList<Service> serviceList = new ArrayList<Service>();
        try {
            Statement stmt = DataBaseConnector.getConnection().createStatement();
            String sql = "select * from " + DataBaseConnector.getOwner() + ".VW_MYSERVICE";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                String name = rs.getString("TenDichVu");
                int price = rs.getInt("Gia");
                String moTa = rs.getString("MoTa");
                String thoiGianBD = rs.getString("THOIGIANBATDAU");
                serviceList.add(new Service(name, price, moTa, thoiGianBD));
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return serviceList;
    }
}
