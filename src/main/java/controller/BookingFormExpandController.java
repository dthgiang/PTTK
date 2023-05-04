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

public class BookingFormExpandController implements Initializable {
    @FXML
    private Button OK;
    @FXML
    private Button Back;


    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // set event handler for ViewRoomDetail button
        OK.setOnAction(event -> {
            try {
                Parent OKButtonParent = FXMLLoader.load(getClass().getResource("/controller/BookingForm.fxml"));
                Scene OKButtonScene = new Scene(OKButtonParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(OKButtonScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

        Back.setOnAction(event -> {
            try {
                Parent OKButtonParent = FXMLLoader.load(getClass().getResource("/controller/Home.fxml"));
                Scene OKButtonScene = new Scene(OKButtonParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(OKButtonScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

    }
}
