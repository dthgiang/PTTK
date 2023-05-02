package controller;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;
import java.io.IOException;
import javafx.fxml.FXMLLoader;
import javafx.application.Platform;



public class HomePageforGuestController implements Initializable {
    @FXML
    private Button ViewRoomDetail;
    @FXML
    private Button BookRoom;
    @FXML
    private Button BookServiceAndTour;
    @FXML
    private Button SignOut;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // set event handler for ViewRoomDetail button
        ViewRoomDetail.setOnAction(event -> {
            try {
                Parent ViewRoomDetailParent = FXMLLoader.load(getClass().getResource("/controller/hello-view.fxml"));
                Scene ViewRoomDetailScene = new Scene(ViewRoomDetailParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(ViewRoomDetailScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

        BookRoom.setOnAction(event -> {
            try {
                Parent bookRoomParent = FXMLLoader.load(getClass().getResource("/controller/BookRoom.fxml"));
                Scene bookRoomScene = new Scene(bookRoomParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(bookRoomScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

        BookServiceAndTour.setOnAction(event -> {
            try {
                Parent bookRoomParent = FXMLLoader.load(getClass().getResource("/controller/tourAndService.fxml"));
                Scene bookRoomScene = new Scene(bookRoomParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(bookRoomScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

        //Nút exit
        SignOut.setOnAction(event -> {
            try {
                Parent bookRoomParent = FXMLLoader.load(getClass().getResource("/controller/Login.fxml"));
                Scene bookRoomScene = new Scene(bookRoomParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(bookRoomScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
    }
}

