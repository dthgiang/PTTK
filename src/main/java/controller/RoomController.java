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
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;
import javafx.scene.input.MouseEvent;
import model.RoomSchema;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;

import static model.RoomSchema.*;

public class RoomController implements Initializable {
    @FXML
    private TableView<RoomSchema> roomtable;

    @FXML
    private TableColumn<RoomSchema, Double> gia;

    @FXML
    private TableColumn<RoomSchema, String> loaiphong;

    @FXML
    private TableColumn<RoomSchema, String> maphong;

    @FXML
    private TableColumn<RoomSchema, Integer> sogiuong;

    @FXML
    private TableColumn<RoomSchema, String> trangthaiVS;

    @FXML
    private TextField maphongTxtBox;

    @FXML
    private Button searchBtn;

    @FXML
    private Button updateBtn;

    @FXML
    private Button insertBtn;

    @FXML
    private Label titleLabel;

    @FXML
    private Button backBtn;

    @FXML
    private ImageView bgImg;

    public String clickedItem;

    private void setTableColum() {
        maphong.setCellValueFactory(new PropertyValueFactory<>("roomId"));
        gia.setCellValueFactory(new PropertyValueFactory<>("roomPrice"));
        sogiuong.setCellValueFactory(new PropertyValueFactory<>("bedQuantity"));
        loaiphong.setCellValueFactory(new PropertyValueFactory<>("roomType"));
        trangthaiVS.setCellValueFactory(new PropertyValueFactory<>("roomStatus"));
    }

    private void fetchData(ResultSet resultSet) {
        ObservableList<RoomSchema> rooms = FXCollections.observableArrayList();

        try {
        while (resultSet.next()) {
            String roomID = resultSet.getString("MAPHONG");
            String roomType = resultSet.getString("LOAIPHONG");
            Double roomPrice = resultSet.getDouble("GIA");
            Integer bedQuantity = resultSet.getInt("SOLUONG");
            String roomStatus = resultSet.getString("TRANGTHAIVESINH");
            rooms.add(new RoomSchema(roomID, roomStatus, roomType, roomPrice, bedQuantity));
        }
        } catch(SQLException e) {
            System.out.println("Cannot fetch Data!!!");
        }

        roomtable.setItems(rooms);
        setTableColum();
    }

    public void searchBtnOnClick(ActionEvent event) throws IOException {
        fetchData(searchRoom(maphongTxtBox.getText()));
    }

    private void loadRoomData () {
        fetchData(allRoom());
    }

    public void refeshButtonClick(ActionEvent event) {
        fetchData(allRoom());
    }

    public void deleteBtnOnClick(ActionEvent event) throws SQLException {
        deleteRoom(clickedItem);
    }

    public void updateBtnOnClick(ActionEvent e) throws IOException {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("updateRoom.fxml"));
        Parent update_page = loader.load();
        UpdateRoomController updateController = loader.getController();
        updateController.setData(clickedItem);

        Scene update_page_scene = new Scene(update_page);
        Stage app_stage = (Stage) ((Node) e.getSource()).getScene().getWindow();
        app_stage.setScene(update_page_scene);
        app_stage.show();
    }

    private void setRowClickEvent() {
        roomtable.setOnMouseClicked((MouseEvent event) -> {
            if (event.getClickCount() == 1) {
                RoomSchema clickedRoom = roomtable.getSelectionModel().getSelectedItem();
                String selectedRow = roomtable.getSelectionModel().getSelectedItem().getRoomId();

                clickedItem = selectedRow;
                System.out.println(clickedRoom);
            }
        });
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Helper.initHelper.initImageIcon(bgImg, "img/hogwarts1.png");
        //Helper.switchScreenHelper.swicthScreenOnButton(updateBtn, "/controller/updateRoom.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(insertBtn, "/controller/insertRoom.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(backBtn, "/controller/Home.fxml");

        loadRoomData();
        //setTableColum();
        setRowClickEvent();
    }
}