package controller;




import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ResourceBundle;


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
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
import model.RoomType;


public class HelloController  implements Initializable {

    //***********Table Column Variables*****************//
    @FXML
    private TableView<RoomType> roomtypeTable;
    @FXML
    private TableColumn<RoomType, String> columnID;
    @FXML
    private TableColumn<RoomType, String> columnName;
    @FXML
    private TableColumn<RoomType, String> columnPrice;
    @FXML
    private TableColumn<RoomType, String> columnDes;
    @FXML
    private TableColumn<RoomType, String> columnRating;
    @FXML private void goHome(ActionEvent event) throws IOException {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.homeScreen);
    }


    private void setCellTable() {

        columnID.setCellValueFactory(new PropertyValueFactory<>("id"));
        columnName.setCellValueFactory(new PropertyValueFactory<>("name"));
        columnPrice.setCellValueFactory(new PropertyValueFactory<>("price"));
        columnDes.setCellValueFactory(new PropertyValueFactory<>("des"));
        columnRating.setCellValueFactory(new PropertyValueFactory<>("rating"));
    }



    @Override public void initialize(URL location, ResourceBundle resources) {
        RoomType rt=new RoomType();
        roomtypeTable.setItems(rt.loadData());
        roomtypeTable.getColumns().addAll(columnID, columnName, columnPrice, columnDes, columnRating);
        setCellTable();


    };
}




