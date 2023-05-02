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

public class ViewDetailRoomController implements Initializable {
    @FXML
    private Button BackToHome;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // set event handler for ViewRoomDetail button
        BackToHome.setOnAction(event -> {
            try {
                Parent BackToHomeParent = FXMLLoader.load(getClass().getResource("/controller/HomePageforGuest.fxml"));
                Scene BackToHomeScene = new Scene(BackToHomeParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(BackToHomeScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
    }
}
