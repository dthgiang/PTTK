package controller;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class ConfirmBookingController implements Initializable {
    @FXML
    private Button Refresh;
    @FXML
    private Button Accept;
    @FXML
    private Button Reject;
    @FXML
    private Button BK;
    @FXML
    private Button SB;
    @FXML
    private Button SF;
    @FXML
    private Button RoomList;
    @FXML
    private Button AgentList;
    @FXML
    private Button SignOut;
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // set event handler for AddForm button
        SB.setOnAction(event -> {
            try {
                Parent SBParent = FXMLLoader.load(getClass().getResource("/controller/SuccessfulBookings.fxml"));
                Scene SBScene = new Scene(SBParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(SBScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

        SF.setOnAction(event -> {
            try {
                Parent  SFParent = FXMLLoader.load(getClass().getResource("/controller/ServiceOrderForms.fxml"));
                Scene  SFScene = new Scene(SFParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(SFScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

        RoomList.setOnAction(event -> {
            try {
                Parent RoomListParent = FXMLLoader.load(getClass().getResource("/controller/roomManage.fxml"));
                Scene RoomListScene = new Scene(RoomListParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(RoomListScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

        AgentList.setOnAction(event -> {
            try {
                Parent AgentListParent = FXMLLoader.load(getClass().getResource("/controller/ManagementAgent.fxml"));
                Scene AgentListScene = new Scene(AgentListParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(AgentListScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

        SignOut.setOnAction(event -> {
            try {
                Parent SignOutParent = FXMLLoader.load(getClass().getResource("/controller/buyService.fxml"));
                Scene SignOutScene = new Scene(SignOutParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(SignOutScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
    }
}