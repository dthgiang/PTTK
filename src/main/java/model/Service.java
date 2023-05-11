package model;

import databaseConnect.DataBaseConnector;
import helper.Helper;

import java.sql.*;
import java.util.ArrayList;

public class Service {
    private String name, MaDichVu;
    private int cost;
    private int time;
    private String des, price, typeS;
    private String forRoom;
    private String startDate,endDate;
    private  String area, province, owner,contact, image, status;
    private static Connection connection = DataBaseConnector.getConnection();

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

    public Service(String name, int cost, String Des, String thoiGianBD, String stt) {
        this.name = name;
        this.cost = cost;
        this.des = Des;
        this.startDate = thoiGianBD;
        this.status = stt;

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

    public Service(String MaDV, String tenDV, int pric,  String gia, String moTa, String theLoai, String forR, String img) {
        MaDichVu = MaDV;
        name = tenDV;
        cost = pric;
        price = gia;
        des = moTa;
        typeS = theLoai;
        forRoom = forR;
        image = img;
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
    public String getType() {return type;}
    public String getImage() {return image;}
    public String getPrice() {return price;}
    public String getMaDichVu() {return MaDichVu;}
    public String getForRoom() {return forRoom;}
    public Service getSerivce() {
        return this;
    }
    public String getStatus() {return status;}


    public ArrayList<Service> setServiceList(ResultSet rs ) throws SQLException {
        ArrayList<Service> sList = new ArrayList<Service>();
        while (rs.next()) {
            String maDV = rs.getString("MaDichVu");
            String forR = getServiceForRoomQuery(maDV);
            String name = rs.getString("TenDichVu");
            int price = rs.getInt("Gia");
            String theLoai = rs.getString("TheLoai");
            String moTa = rs.getString("MoTa");
            String image = rs.getString("Image");
            sList.add(new Service(maDV, name, price, Helper.convertTypeHelper.formatNumber(price), moTa,theLoai, forR, image));
        }
        return sList;
    }
    public ArrayList<Service> getAllService() {
        ArrayList<Service> sList = new ArrayList<Service>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from DBA_PTTK.DICHVU");
            return setServiceList(rs);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return sList;
    }


    public String getServiceForRoomQuery(String maDV) {
        String sl = "";
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from DBA_PTTK.DICHVUPHONG where MADICHVU = '" + maDV + "'");
            while (rs.next()) {String lp = rs.getString("LOAIPHONG");
               sl += lp;
               sl += ", ";

            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        if (sl != ""){
            sl = sl.substring(0, sl.length() -2);
        }

        return sl;
    }
    public ArrayList<Service> sqlServiceQuery(String condition) {
        ArrayList<Service> sList = new ArrayList<Service>();
        try {
            Statement stmt = connection.createStatement();
            String sql = "select * from DBA_PTTK.DICHVU where " + condition;
            ResultSet rs = stmt.executeQuery(sql);
            return setServiceList(rs);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return sList;
    }

    public ArrayList<Service> fullTextSearch(String condition) {
        ArrayList<Service> sList = new ArrayList<Service>();
        try {
            Statement stmt = connection.createStatement();
            String sql = "SELECT * FROM "+ DataBaseConnector.getOwner() +".DICHVU WHERE (CONTAINS(mota, '" + condition +"') > 0) OR UPPER(TENDICHVU) = '"+ condition.toUpperCase() +"'";
            ResultSet rs = stmt.executeQuery(sql);
            return setServiceList(rs);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return sList;
    }

    public ArrayList<String> getAllType() {
        ArrayList<String> areaList = new ArrayList<String>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select distinct THELOAI from DBA_PTTK.DICHVU");
            while (rs.next()) {

                String khuVuc = rs.getString("THELOAI");

                areaList.add(khuVuc);
            }

        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return areaList;
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
                String stt = rs.getString("TRANGTHAI");
                serviceList.add(new Service(name, price, moTa, thoiGianBD, stt));
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return serviceList;
    }

    public static boolean insertPhieuSuDungDichVu(int thoiGianSD, String ThoiGianBatDau, int gia, String maDV, String maPhong, String maKH) {
        String sql = "insert into " + DataBaseConnector.getOwner() + ".PHIEUSUDUNGDICHVU(ThoiGianSuDung, ThoiGianBatDau, Gia, TrangThai, DichVu, MaPhongDat, MaKH) values(?, TO_DATE(?, 'dd-MM-yyyy hh24-mi'), ?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = DataBaseConnector.getConnection().prepareStatement(sql);
            statement.setInt(1, thoiGianSD);
            statement.setString(2, ThoiGianBatDau);
            statement.setInt(3, gia);
            statement.setString(4, "Đang chờ xử lý");
            statement.setString(5, maDV);
            statement.setString(6, maPhong);
            statement.setString(7, maKH);


            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  false;
    }



}
