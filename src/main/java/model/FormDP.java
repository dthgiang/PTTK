package model;

import databaseConnect.DataBaseConnector;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import java.sql.Connection;
import java.sql.*;


public class FormDP {
    String maphieu, trangthai, dkvanchuyenhanhly, yeucaudacbiet, ngaylap, madaily, makhachhang, nhanvienxuly;
    private Connection connection = DataBaseConnector.getConnection();//("jdbc:oracle:thin:@localhost:1521:XE", "DBA_PTTK", "123");

    public FormDP() {};
    public FormDP (String maphieu,String trangthai,String dkvanchuyenhanhly,String yeucaudacbiet,String ngaylap,String madaily,String makhachhang,String nhanvienxuly)
    {
        this.maphieu=maphieu;
        this.trangthai=trangthai;
        this.dkvanchuyenhanhly=dkvanchuyenhanhly;
        this.yeucaudacbiet=yeucaudacbiet;
        this.ngaylap=ngaylap;
        this.madaily=madaily;
        this.makhachhang=makhachhang;
        this.nhanvienxuly=nhanvienxuly;
    }
    public String getMaphieu(){
        return maphieu;
    }
    public String getTrangthai(){
        return trangthai;
    }
    public String getDkvanchuyenhanhly(){
        return dkvanchuyenhanhly;
    }
    public String getYeucaudacbiet(){
        return yeucaudacbiet;
    }
    public String getNgaylap(){
        return ngaylap;
    }
    public String getMadaily(){
        return madaily;
    }
    public String getMakhachhang(){
        return makhachhang;
    }
    public String getNhanvienxuly(){
        return nhanvienxuly;
    }
    public ObservableList<FormDP> loadData() {
        ObservableList<FormDP> data = FXCollections.observableArrayList();
        try {
            Statement statement = connection.createStatement();

            // Execute the query and get the result set
            ResultSet resultSet = statement.executeQuery("SELECT * FROM DBA_PTTK.phieudatphong");

            // Loop through the result set and add the data to the tableview
            while (resultSet.next()) {
                String maPhieu = resultSet.getString("MaPhieu");
                String trangThai = resultSet.getString("TrangThai");
                String dkVanChuyenHanhLy = resultSet.getString("DKVanChuyenHanhLy");
                String yeuCauDacBiet = resultSet.getString("YeuCauDacBiet");
                String ngayLap = resultSet.getString("NgayLap");
                String maDaiLy = resultSet.getString("MaDaiLy");
                String maKhachHang = resultSet.getString("MaKhachHang");
                String nhanVienXuLy = resultSet.getString("NhanVienXuLy");

                data.add(new FormDP(maPhieu, trangThai, dkVanChuyenHanhLy, yeuCauDacBiet, ngayLap, maDaiLy, maKhachHang, nhanVienXuLy));

            }

            // Close the connection and statement

        } catch (SQLException e) {
            System.out.println("Connection to Oracle database failed");
            e.printStackTrace();
        }

        return data;
    }
}
