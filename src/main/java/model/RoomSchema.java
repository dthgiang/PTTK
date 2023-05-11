package model;

import databaseConnect.DBUtil;
import helper.Helper;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.Alert;

import java.sql.*;

public class RoomSchema {
    private String roomId, roomStatus, roomType;
    private Double roomPrice;
    private Integer bedQuantity;

    public RoomSchema(String roomId, String roomStatus, String roomType, Double roomPrice, Integer bedQuantity) throws SQLException {
        this.roomId = roomId;
        this.roomStatus = roomStatus;
        this.roomType = roomType;
        this.roomPrice = roomPrice;
        this.bedQuantity = bedQuantity;
    }

    public RoomSchema(String roomType) throws SQLException {
        this.roomType = roomType;
    }


    public String getRoomId() {
        return roomId;
    }

    public String getRoomStatus() {
        return roomStatus;
    }

    public String getRoomType() {
        return roomType;
    }

    public Double getRoomPrice() {
        return roomPrice;
    }

    public Integer getBedQuantity() {
        return bedQuantity;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public void setRoomStatus(String roomStatus) {
        this.roomStatus = roomStatus;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public void setRoomPrice(Double roomPrice) {
        this.roomPrice = roomPrice;
    }

    public void setBedQuantity(Integer bedQuantity) {
        this.bedQuantity = bedQuantity;
    }

    public static void deleteRoom(String clickedItem) throws SQLException {
        Connection connection = DBUtil.getConnection();

        try {
            String sqlQuery = "DELETE FROM PHONG WHERE MAPHONG = ?";
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, clickedItem);
            System.out.println(clickedItem);

            int resultSet = statement.executeUpdate();

            if (resultSet == 1) {
                System.out.println("Xóa phòng thành công !!!");
                Helper.alertHelper.showAlert("Xóa phòng thành công!!!");
            }


            else {
                System.out.println("Xóa thất bại !!!");
                Helper.alertHelper.showAlert("Xóa phòng thất bại!!!");
            }
            statement.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Xóa thất bại !!!");
            Helper.alertHelper.showAlert("Xóa thất bại!!!");
            //e.printStackTrace();
        }
    }

    public static ResultSet allRoom() {
        ResultSet resultSet = null;
        try {
            Connection connection = DBUtil.getConnection();
            // Create a statement
            Statement statement = connection.createStatement();
            // Execute the query and get the result set
            resultSet = statement.executeQuery("SELECT * FROM PHONG");
            return resultSet;
        } catch (SQLException e) {
            System.out.println("Không thể kết nối tới database!!!");
            Helper.alertHelper.showAlert("Không thể kết nối tới database!!!");
        }
        return resultSet;
    }

    public static ResultSet searchRoom(String roomId) {
        ResultSet resultSet = null;

        try {
            Connection connection =null;
            connection = DBUtil.getConnection();
            String sqlQuery = "SELECT * FROM PHONG WHERE MAPHONG = ?";
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, roomId);
            resultSet = statement.executeQuery();

        } catch (SQLException e) {
            System.out.println("Không thể kết nối tới database!!!");
            Helper.alertHelper.showAlert("Không thể kết nối tới database!!!");
        }

        return resultSet;
    }

    public static ResultSet sttSearchRoom(String roomType, String roomStatus) {
        ResultSet resultSet = null;

        try {
            Connection connection =null;
            connection = DBUtil.getConnection();
            String sqlQuery = "SELECT * FROM PHONG WHERE LOAIPHONG = ? AND TRANGTHAIVESINH = ?";
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, roomType);
            statement.setString(2, roomStatus);
            resultSet = statement.executeQuery();

        } catch (SQLException e) {
            System.out.println("Không thể kết nối tới database!!!");
            Helper.alertHelper.showAlert("Không thể kết nối tới database!!!");
        }

        return resultSet;
    }

    public static void insertRoom(String roomId, String roomType, Integer bedQuantity, String roomStatus) {
        roomId = roomId.toUpperCase();

        if (!roomId.matches("PHG.\\d+")) {
            System.out.println("Mã phòng đã tồn tại hoặc  không hợp lệ, Hãy nhập mã phòng theo định dạng như sau PHG'số'");
            Helper.alertHelper.showAlert("Mã phòng đã tồn tại hoặc  không hợp lệ, Hãy nhập mã phòng theo định dạng như sau PHG'số'");
            return;
        }

        try {
            Connection connection = DBUtil.getConnection();
            String sqlQuery = "INSERT INTO PHONG VALUES(?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, roomId);

            switch (roomType) {
                case "Normal":
                    statement.setInt(2, 500000);
                    break;
                case "GOLD":
                    statement.setInt(2, 3000000);
                    break;
                case "Diamond":
                    statement.setInt(2, 5000000);
                    break;
                default:
                    statement.setInt(2, 1000000);
            };

            statement.setInt(3, bedQuantity);
            statement.setString(4, roomStatus);
            statement.setString(5, roomType);

            int resultSet = statement.executeUpdate();
            if (resultSet == 1) {
                System.out.println("Thêm thành công");
                Helper.alertHelper.showAlert("Thêm thành công!!!");
            }
            else {
                System.out.println("Thêm thất bại");
                Helper.alertHelper.showAlert("Thêm thất bại!!!");
            }

            statement.close();
            connection.close();
        } catch (RuntimeException e1) {
            System.out.println("Hãy chọn đầy đủ các trường để thêm phòng !!!");
            Helper.alertHelper.showAlert("Hãy chọn đầy đủ các trường để thêm phòng!!!");
        } catch (SQLException e2) {
            System.out.println("Mã phòng đã tồn tại !!!");
            Helper.alertHelper.showAlert("Mã phòng đã tồn tại!!!");
        }
    }

    public static void updateRoom(String roomType, Integer bedQuantity, String roomStatus, String roomId) {
        try {
//            String curType = "", curStatus = "";
//            Integer curBedQuan = 0;
//
//            ResultSet resultSet = searchRoom(roomId);
//            while (resultSet.next()) {
//                curType = resultSet.getString("LOAIPHONG");
//                curBedQuan = resultSet.getInt("SOLUONG");
//                curStatus = resultSet.getString("TRANGTHAIVESINH");
//            }
//
//            if (roomStatus == null)
//                roomStatus = curStatus;
//            if (bedQuantity == null)
//                bedQuantity = curBedQuan;
//            if (roomType == null)
//                roomType = curType;
//
//            System.out.println(curType);
//            System.out.println(curBedQuan);
//            System.out.println(curStatus);

            Connection connection = DBUtil.getConnection();
            String sqlQuery = "UPDATE PHONG SET LOAIPHONG = ?, GIA = ?, SOLUONG = ?, TRANGTHAIVESINH = ? WHERE MAPHONG = ?";
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, roomType);
            statement.setInt(3, bedQuantity);
            statement.setString(4, roomStatus);
            statement.setString(5, roomId);

            switch (roomType) {
                case "Normal":
                    statement.setInt(2, 500000);
                    break;
                case "GOLD":
                    statement.setInt(2, 3000000);
                    break;
                case "Diamond":
                    statement.setInt(2, 5000000);
                    break;
                default:
                    statement.setInt(2, 1000000);
            };

            int updated = statement.executeUpdate();
            if (updated == 1) {
                System.out.println("Cập nhật thành công");
                Helper.alertHelper.showAlert("Cập nhật thành công!!!");
            }
            else {
                System.out.println("Cập nhật thất bại");
                Helper.alertHelper.showAlert("Cập nhật thất bại!!!");
            }

            statement.close();
            connection.close();
        } catch (SQLException e2) {
            System.out.println("Không thể kết nói tới cơ sở dữ liệu!!!");
            Helper.alertHelper.showAlert("Không thể kết nối tới cơ sở dữ liệu!!!");
        }
    }

    public static ResultSet allRoomType() {
        ResultSet resultSet = null;

        try {
            Connection connection = DBUtil.getConnection();

            String sqlQuery = "SELECT LOAIPHONG FROM LOAIPHONG";
            Statement statement = connection.createStatement();
            resultSet = statement.executeQuery(sqlQuery);

        } catch (SQLException e) {
            System.out.println("Can not get item room type from database!");
            Helper.alertHelper.showAlert("Không thể lấy loại phòng từ database!!!");
        }

        return resultSet;
    }
}
