package model;

import databaseConnect.DataBaseConnector;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
public class Tour {
    private  String maT;
    private String name;
    private int cost;
    private int time;
    private String des;
    private  String area;
    private  String province;
    private String owner;
    private  String contact;
    private  String img;
    private Connection connection = DataBaseConnector.getConnection();//("jdbc:oracle:thin:@localhost:1521:XE", "DBA_PTTK", "123");

    public Tour()
    {
        this.name = "Hello world";
        this.cost = 0;
        this.des = "This is tour around the world";
        this.time = 7;
        this.owner = "HCMUS";
    }
    public Tour(String name) {
        this.name = name;
    }

    public Tour(String name, int cost, String Des, int time, String owner) {
        this.name = name;
        this.cost = cost;
        this.des = Des;
        this.time = time;
        this.owner = owner;
    }

    public Tour(String name, int cost, String Des, int time,String province, String area, String owner, String contact) {
        this.name = name;
        this.cost = cost;
        this.des = Des;
        this.time = time;
        this.owner = owner;
        this.contact = contact;
        this.area = area;
        this.province = province;
    }

    public Tour(String maTour, String name, int cost,String province, String Des,String area, String owner, String image, int time) {
        this.maT = maTour;
        this.name = name;
        this.cost = cost;
        this.des = Des;
        this.time = time;
        this.owner = owner;
        this.area = area;
        this.province = province;
        this.img = image;
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
    public String getMaTour() {return  maT;}
    public String getProvince() {return  province;}
    public String getArea() { return area;}
    public String getOwner() { return  owner;}
    public String getContact() {return contact;}
    public  int getTime() {return time;}
    public Tour getTour() {
        return this;
    }
    public String getImage() {return img;}


    public ArrayList<Tour> getAllTour() {
        ArrayList<Tour> tourList = new ArrayList<Tour>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from TOUR");
            while (rs.next()) {
                String maTour = rs.getString("MaTour");
                String name = rs.getString("TenTour");
                int price = rs.getInt("Gia");
                String tinhThanh = rs.getString("TinhThanh");
                String moTa = rs.getString("MoTa");
                String khuVuc = rs.getString("khuVuc");
                String maCongTy = rs.getString("MaCongTy");
                String image = rs.getString("Image");
                int time = rs.getInt("ThoiGian");
                tourList.add(new Tour(maTour, name, price, tinhThanh, moTa, khuVuc, maCongTy, image, time));
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return tourList;
    }

    public ArrayList<Tour> sqlTourQuery(String condition) {
        ArrayList<Tour> tourList = new ArrayList<Tour>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from Tour where " + condition);
            while (rs.next()) {
                String maTour = rs.getString("MaTour");
                String name = rs.getString("TenTour");
                int price = rs.getInt("Gia");
                String tinhThanh = rs.getString("TinhThanh");
                String moTa = rs.getString("MoTa");
                String khuVuc = rs.getString("khuVuc");
                String maCongTy = rs.getString("MaCongTy");
                String image = rs.getString("Image");
                int time = rs.getInt("ThoiGian");
                tourList.add(new Tour(maTour, name, price, tinhThanh, moTa, khuVuc, maCongTy, image, time));
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return tourList;
    }

    public ArrayList<String> getAllArea() {
        ArrayList<String> areaList = new ArrayList<String>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select distinct KhuVuc from Tour");
            while (rs.next()) {

                String khuVuc = rs.getString("khuVuc");

                areaList.add(khuVuc);
            }

        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return areaList;
    }

    public void insertTourBuy(String MaThamGia, String NgayDangKy, String Matour, String MaKH) {
        String sql = "'" + MaThamGia + "',TO_DATE('" + NgayDangKy + "', 'DD-MM-YYYY'), '" + Matour + "', '" + MaKH + "'";
        String insertSql = "insert into DANHSACHTHAMGIATOUR values(" + sql + ")";
        System.out.println(insertSql);
    }



    public void outTour() {
        System.out.println(this.name + " " + this.province + " " + this.owner);
    }
}
