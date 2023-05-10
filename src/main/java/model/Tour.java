package model;

import databaseConnect.DataBaseConnector;
import helper.Helper;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
public class Tour {
    private  String maT;
    private String name;
    private int cost;
    private String sPrice;
    private int time;
    private String des;
    private  String area;
    private  String province;
    private String owner;
    private  String contact, startTime;
    private  String img;
    public String type = "Tour";
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
    public Tour(String name, int cost, String Des, String timeStart) {
        this.name = name;
        this.cost = cost;
        this.des = Des;
        this.startTime = timeStart;
    }
    public Tour(String name, String price, String Des, String timeStart, String type) {
        this.name = name;
        this.sPrice = price;
        this.des = Des;
        this.startTime = timeStart;
        this.type = type;
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
    public String getStartTime() {return  startTime;}
    public String getType() {return type;}
    public String getImage() {return img;}
    public String getSPrice() {return sPrice;}


    public ArrayList<Tour> getAllTour() {
        ArrayList<Tour> tourList = new ArrayList<Tour>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from DBA_PTTK.TOUR");
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
            ResultSet rs = stmt.executeQuery("select * from DBA_PTTK.Tour where " + condition);
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
    public static ArrayList<Tour> getMyTour() {
        ArrayList<Tour> tourList = new ArrayList<Tour>();
        try {
            Statement stmt = DataBaseConnector.getConnection().createStatement();
            String sql = "select * from " + DataBaseConnector.getOwner() + ".VW_MYTOUR";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                String name = rs.getString("TenTOUR");
                int price = rs.getInt("Gia");
                String moTa = rs.getString("MoTa");
                String thoiGianBD = rs.getString("NGAYBATDAU");
                tourList.add(new Tour(name, price, moTa, thoiGianBD));
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
            ResultSet rs = stmt.executeQuery("select distinct KhuVuc from DBA_PTTK.Tour");
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
        String insertSql = "insert into DBA_PTTK.DANHSACHTHAMGIATOUR values(" + sql + ")";
        System.out.println(insertSql);
    }


    public static ArrayList<Tour> getMyTourAndService() {
        ArrayList<Tour> rs = new ArrayList<Tour>();
        ArrayList<Tour> tl = Tour.getMyTour();
        ArrayList<Service> sl = Service.getMyService();
        if (tl.size() < 1 && sl.size() <1) return null;
        for(Tour x: tl) {
            rs.add(new Tour(x.getName(), Helper.convertTypeHelper.formatNumber(x.getCost()), x.getDes(), x.getStartTime(), "Tour"));
        }
        for (Service y: sl) {
            rs.add(new Tour(y.getName(),Helper.convertTypeHelper.formatNumber(y.getCost()), y.getDes(), y.getStartDate(), "Service"));
        }

        return rs;
    }
    public void outTour() {
        System.out.println(this.name + " " + this.province + " " + this.owner);
    }
}
