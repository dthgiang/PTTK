package controller;

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
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;

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

    protected void setRoomTypeCBB() {
        ObservableList<String> roomType = FXCollections.observableArrayList();
        Connection connection = null;

        try {
            connection = DBUtil.getConnection();

            String sqlQuery = "SELECT DISTINCT LOAIPHONG FROM PHONG";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sqlQuery);


            while (resultSet.next()) {
                String type = resultSet.getString("LOAIPHONG");
                roomType.add(type);
            }

            loaiphongCBB.setItems(roomType);

            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Can not get item room type from database!");
            e.printStackTrace();
        }
    }

    public void backBtnOnClick(ActionEvent e) throws IOException {
        Parent roomCRUD_page;
        roomCRUD_page = FXMLLoader.load(getClass().getResource("roomManage.fxml") );
        Scene roomCRUD_page_scene = new Scene (roomCRUD_page);
        Stage app_stage = (Stage) ((Node) e.getSource()).getScene().getWindow();
        app_stage.setScene(roomCRUD_page_scene);
        app_stage.show();
    }

    public void insertBtnOnClick(ActionEvent e) throws SQLException {
        Connection connection = DBUtil.getConnection();
        if (!roomIDTxt.getText().matches("PHG.*")) {
            System.out.println("Mã phòng đã tồn tại hoặc  không hợp lệ, Hãy nhập mã phòng theo định dạng như sau PHG'số'");
            return;
        }

        try {
            String sqlQuery = "INSERT INTO PHONG VALUES(?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, roomIDTxt.getText());

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

            statement.setInt(3, soguongCBB.getValue());
            statement.setString(4, ttvesinhCBB.getValue().toString());
            statement.setString(5, loaiphongCBB.getValue().toString());

            int resultSet = statement.executeUpdate();
            if (resultSet == 1)
                System.out.println("Thêm thành công");
            else
                System.out.println("Thêm thất bại");

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
        soguongCBB.getItems().addAll(2, 3, 4, 5);
        ttvesinhCBB.getItems().addAll("Đã dọn", "Chưa dọn");
        setRoomTypeCBB();
    }
}
