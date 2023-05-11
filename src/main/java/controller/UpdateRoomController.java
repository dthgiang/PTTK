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

import static model.RoomSchema.searchRoom;
import static model.RoomSchema.updateRoom;

public class UpdateRoomController extends InsertRoomController implements Initializable{
    private String updateRoom;

    @FXML
    private Button updateBtn;

    @FXML
    private Label updateRoomLabel;

    @FXML
    private ImageView bgImg;

    public void setData(String data) {
        this.updateRoom = data;
        updateRoomLabel.setText(updateRoom);

        ResultSet resultSet = searchRoom(updateRoomLabel.getText());
        String curType = "", curStatus = "";
        Integer curBedQuan = 0;

        try {
            while (resultSet.next()) {
                curType = resultSet.getString("LOAIPHONG");
                curBedQuan = resultSet.getInt("SOLUONG");
                curStatus = resultSet.getString("TRANGTHAIVESINH");
            }

            System.out.println(updateRoomLabel.getText());
            System.out.println(curType);
            System.out.println(curBedQuan);
            System.out.println(curStatus);

            loaiphongCBB.setValue(curType);
            soguongCBB.setValue(curBedQuan);
            ttvesinhCBB.setValue(curStatus);
        } catch (SQLException e) {
            System.out.println("Không thể kết nối tới CSDL!!!");
            Helper.alertHelper.showAlert("Không thể kết nối tới cơ sở dữ liệu!!!");
        }
    }

    public void updateBtnOnClick(ActionEvent event) throws SQLException {
        updateRoom(loaiphongCBB.getValue(), soguongCBB.getValue(), ttvesinhCBB.getValue(), updateRoomLabel.getText());
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Helper.initHelper.initImageIcon(bgImg, "img/hogwarts1.png");
        Helper.switchScreenHelper.swicthScreenOnButton(backBtn, "/controller/roomManage.fxml");

        soguongCBB.getItems().addAll(2, 3, 4, 5);
        ttvesinhCBB.getItems().addAll("Đã dọn", "Chưa dọn");
        setRoomTypeCBB();
    }
}