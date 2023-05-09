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

    private void fetchData(ResultSet resultSet, ObservableList<RoomSchema> rooms) throws SQLException {
        while (resultSet.next()) {
            String roomID = resultSet.getString("MAPHONG");
            String roomType = resultSet.getString("LOAIPHONG");
            Double roomPrice = resultSet.getDouble("GIA");
            Integer bedQuantity = resultSet.getInt("SOLUONG");
            String roomStatus = resultSet.getString("TRANGTHAIVESINH");
            rooms.add(new RoomSchema(roomID, roomStatus, roomType, roomPrice, bedQuantity));
        }

        roomtable.setItems(rooms);
        setTableColum();
    }

    public void insertBtnOnClick(ActionEvent e) throws IOException {
        Parent insert_page;
        insert_page = FXMLLoader.load(getClass().getResource("insertRoom.fxml") );
        Scene insert_page_scene = new Scene (insert_page);
        Stage app_stage = (Stage) ((Node) e.getSource()).getScene().getWindow();
        app_stage.setScene(insert_page_scene);
        app_stage.show();
    }

    public void searchBtnOnClick(ActionEvent event) throws IOException {
        ObservableList<RoomSchema> rooms = FXCollections.observableArrayList();
        Connection connection =null;

        try {
            connection = DBUtil.getConnection();
            String sqlQuery = "SELECT * FROM PHONG WHERE MAPHONG = ?";
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, maphongTxtBox.getText());
            ResultSet resultSet = statement.executeQuery();

            fetchData(resultSet, rooms);

            resultSet.close();
            statement.close();
            connection.close();

        } catch (SQLException e) {
            System.out.println("Connection to Oracle database failed");
            e.printStackTrace();
        }
    }

    public void backBtnOnClick(ActionEvent event) throws IOException {
        Helper.switchScreenHelper.swicthScreenOnButton(backBtn, "/controller/Home.fxml");
    }

    public void refeshButtonClick(ActionEvent event) throws IOException {
        ObservableList<RoomSchema> rooms = FXCollections.observableArrayList();
        Connection connection =null;

        try {
            connection = DBUtil.getConnection();
            String sqlQuery = "SELECT * FROM PHONG";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sqlQuery);

            fetchData(resultSet, rooms);

            resultSet.close();
            statement.close();
            connection.close();

        } catch (SQLException e) {
            System.out.println("Connection to Oracle database failed");
            e.printStackTrace();
        }
    }

    public void deleteBtnOnClick(ActionEvent event) throws SQLException {
        Connection connection = DBUtil.getConnection();

        try {
            String sqlQuery = "DELETE FROM PHONG WHERE MAPHONG = ?";
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, clickedItem);
            System.out.println(clickedItem);

            int resultSet = statement.executeUpdate();

            if (resultSet == 1)
                System.out.println("Xóa phòng thành công !!!");
            else
                System.out.println("Xóa thất bại !!!");

            statement.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Xóa thất bại !!!");
            e.printStackTrace();
        }
    }

    public void updateBtnOnClick(ActionEvent e) throws IOException {
//        Parent update_page;
//        update_page = FXMLLoader.load(getClass().getResource("updateRoom.fxml") );
//
//        // truyen data qua updateController de chay
//        UpdateRoomController updateRoomController = new UpdateRoomController();
//        updateRoomController.setData(clickedItem);
//
//        Scene update_page_scene = new Scene (update_page);
//        Stage app_stage = (Stage) ((Node) e.getSource()).getScene().getWindow();
//        app_stage.setScene(update_page_scene);
//        app_stage.show();

        FXMLLoader loader = new FXMLLoader(getClass().getResource("updateRoom.fxml"));
        Parent update_page = loader.load();
        UpdateRoomController updateController = loader.getController();
        updateController.setData(clickedItem);

        Scene update_page_scene = new Scene(update_page);
        Stage app_stage = (Stage) ((Node) e.getSource()).getScene().getWindow();
        app_stage.setScene(update_page_scene);
        app_stage.show();
    }

    private void loadRoomData () {
        ObservableList<RoomSchema> rooms = FXCollections.observableArrayList();
        Connection connection =null;

        try {
            connection = DBUtil.getConnection();

            // Create a statement
            Statement statement = connection.createStatement();

            // Execute the query and get the result set
            ResultSet resultSet = statement.executeQuery("SELECT * FROM PHONG");

            // Loop through the result set and add the data to the tableview
            fetchData(resultSet, rooms);

            // Close the connection and statement
            resultSet.close();
            statement.close();
            connection.close();

        } catch (SQLException e) {
            System.out.println("Connection to Oracle database failed");
            e.printStackTrace();
        }
        roomtable.setItems(rooms);
    }

    private void setRowClickEvent() {
        roomtable.setOnMouseClicked((MouseEvent event) -> {
            if (event.getClickCount() == 1) {
                RoomSchema room = roomtable.getSelectionModel().getSelectedItem();
                String selectedRow = roomtable.getSelectionModel().getSelectedItem().getRoomId();

                clickedItem = selectedRow;
                System.out.println(clickedItem);
            }
        });
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        //Helper.initHelper.initImageIcon(bgImg, "K:\\HCMUS Hoc Ki\\HCMUS Nam 3\\HK2 nam 3\\Phan Tich Thiet Ke HTTT\\Project Nhom\\PTTK\\img\\howart.png");
        Helper.initHelper.initImageIcon(bgImg, "\\img\\howart.png");
        loadRoomData();
        setTableColum();
        setRowClickEvent();
    }
}