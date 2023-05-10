package controller;



import helper.Helper;
import javafx.scene.Scene;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ResourceBundle;



import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
import model.FormDP;


public class SuccessBookingController implements Initializable {

    //***********Table Column Variables*****************//
    @FXML
    private TableView<FormDP> FormDPTable;
    @FXML
    private TableColumn<FormDP, String> columnMaphieu;
    @FXML
    private TableColumn<FormDP, String> columnTrangthai;
    @FXML
    private TableColumn<FormDP, String> columnDkvc;
    @FXML
    private TableColumn<FormDP, String> columnYcdb;
    @FXML
    private TableColumn<FormDP, String> columnNgaylap;
    @FXML
    private TableColumn<FormDP, String> columnMadaily;
    @FXML
    private TableColumn<FormDP, String> columnMakhachhang;
    @FXML
    private TableColumn<FormDP, String> columnNhanvienxuly;

    @FXML private void goSignOut(ActionEvent event) throws IOException {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.homeScreen);

    }
    @FXML private void goRoomManage(ActionEvent event) throws IOException {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.roomManage);
    }
    @FXML private void goFresh(ActionEvent event) throws IOException {
        FormDP formDP=new FormDP();
        FormDPTable.setItems(formDP.loadData());
    }
    private void setCellTable() {

        columnMaphieu.setCellValueFactory(new PropertyValueFactory<>("maphieu"));
        columnTrangthai.setCellValueFactory(new PropertyValueFactory<>("trangthai"));
        columnDkvc.setCellValueFactory(new PropertyValueFactory<>("dkvanchuyenhanhly"));
        columnYcdb.setCellValueFactory(new PropertyValueFactory<>("yeucaudacbiet"));
        columnNgaylap.setCellValueFactory(new PropertyValueFactory<>("ngaylap"));
        columnMadaily.setCellValueFactory(new PropertyValueFactory<>("madaily"));
        columnMakhachhang.setCellValueFactory(new PropertyValueFactory<>("makhachhang"));
        columnNhanvienxuly.setCellValueFactory(new PropertyValueFactory<>("nhanvienxuly"));


    }



    @Override public void initialize(URL url, ResourceBundle rb) {
        FormDP formDP=new FormDP();
        FormDPTable.setItems(formDP.loadData());
        FormDPTable.getColumns().addAll(columnMaphieu, columnTrangthai, columnDkvc, columnYcdb, columnNgaylap, columnMadaily, columnMakhachhang, columnNhanvienxuly);
        setCellTable();
    };
}




