package controller;

import databaseConnect.DBUtil;
import helper.Helper;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;

public class UpdateRoomController extends InsertRoomController implements Initializable{
    private String updateRoom;

    @FXML
    private Button updateBtn;

    @FXML
    private Label updateRoomLabel;

    @FXML
    private ImageView bgImg;

    public void backBtnOnClick(ActionEvent e) throws IOException {
        Parent roomCRUD_page;
        roomCRUD_page = FXMLLoader.load(getClass().getResource("roomManage.fxml") );
        Scene roomCRUD_page_scene = new Scene (roomCRUD_page);
        Stage app_stage = (Stage) ((Node) e.getSource()).getScene().getWindow();
        app_stage.setScene(roomCRUD_page_scene);
        app_stage.show();
    }

    public void setData(String data) {
        this.updateRoom = data;
        updateRoomLabel.setText(updateRoom);
    }

//    public void fetchData() {
//        String roomType = "";
//        String roomStatus = "";
//        Double roomPrice = 0.0;
//        Integer bedQuantity = 0;
//
//        try {
//            Connection connection = DBUtil.getConnection();
//            String sqlQuery = "SELECT * FROM PHONG WHERE MAPHONG = ?";
//            PreparedStatement statement = connection.prepareStatement(sqlQuery);
//            statement.setString(1, updateRoomLabel.getText());
//            ResultSet resultSet = statement.executeQuery(sqlQuery);
//
//            while (resultSet.next()) {
//                roomType = resultSet.getString("LOAIPHONG");
//                roomPrice = resultSet.getDouble("GIA");
//                bedQuantity = resultSet.getInt("SOLUONG");
//                roomStatus = resultSet.getString("TRANGTHAIVESINH");
//            }
//
//            soguongCBB.setValue(bedQuantity);
//            loaiphongCBB.setValue(roomType);
//            ttvesinhCBB.setValue(roomStatus);
//
//            resultSet.close();
//            statement.close();
//            connection.close();
//        } catch (SQLException e) {
//            System.out.println("Can not get item room type from database!");
//            e.printStackTrace();
//        }
//    }

    public void updateBtnOnClick(ActionEvent event) throws SQLException {
        Connection connection = DBUtil.getConnection();
        try {
            String sqlQuery = "UPDATE PHONG SET LOAIPHONG = ?, GIA = ?, SOLUONG = ?, TRANGTHAIVESINH = ? WHERE MAPHONG = ?";
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, loaiphongCBB.getValue().toString());
            statement.setInt(3, soguongCBB.getValue());
            statement.setString(4, ttvesinhCBB.getValue().toString());
            statement.setString(5, updateRoomLabel.getText());

            switch (loaiphongCBB.getValue().toString()) {
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

            int resultSet = statement.executeUpdate();
            if (resultSet == 1)
                System.out.println("Cập nhật thành công");
            else
                System.out.println("Cập nhật thất bại");

            statement.close();
            connection.close();
        } catch (RuntimeException e1) {
            System.out.println("Hãy chọn đầy đủ các trường để thêm phòng !!!");
        } catch (SQLException e2) {
            System.out.println("Mã phòng đã tồn tại !!!");
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        //Helper.initHelper.initImageIcon(bgImg, "K:\\HCMUS Hoc Ki\\HCMUS Nam 3\\HK2 nam 3\\Phan Tich Thiet Ke HTTT\\Project Nhom\\PTTK\\img\\howart.png");
        Helper.initHelper.initImageIcon(bgImg, "\\img\\howart.png");

        soguongCBB.getItems().addAll(2, 3, 4, 5);
        ttvesinhCBB.getItems().addAll("Đã dọn", "Chưa dọn");
        setRoomTypeCBB();
    }
}