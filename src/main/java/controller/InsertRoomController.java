package controller;

import databaseConnect.DBUtil;
import helper.Helper;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;

import static model.RoomSchema.allRoomType;
import static model.RoomSchema.insertRoom;

public class InsertRoomController implements Initializable {
    @FXML
    protected Button backBtn;

    @FXML
    protected Button insertBtn;

    @FXML
    protected ComboBox<String> loaiphongCBB;

    @FXML
    protected TextField roomIDTxt;

    @FXML
    protected ComboBox<Integer> soguongCBB;

    @FXML
    protected ComboBox<String> ttvesinhCBB;

    @FXML
    private ImageView bgImg;

    protected void setRoomTypeCBB() {
        ObservableList<String> roomType = FXCollections.observableArrayList();
        try {
            ResultSet resultSet = allRoomType();

            while (resultSet.next()) {
                String type = resultSet.getString("LOAIPHONG");
                roomType.add(type);
            }

            loaiphongCBB.setItems(roomType);

            resultSet.close();

        } catch (SQLException e) {
            System.out.println("Can not get item room type from database!");
        }
    }

    public void insertBtnOnClick(ActionEvent e) throws SQLException {
        insertRoom(roomIDTxt.getText(), loaiphongCBB.getValue(), soguongCBB.getValue(), ttvesinhCBB.getValue());
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
