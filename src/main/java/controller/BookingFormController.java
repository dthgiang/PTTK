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

public class BookingFormController implements Initializable {
    @FXML
    private Button AddForm;
    @FXML
    private Button Home;
    @FXML
    private Button Send;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // set event handler for AddForm button
        AddForm.setOnAction(event -> {
            try {
                Parent AddFormParent = FXMLLoader.load(getClass().getResource("/controller/BookingFormExpand.fxml"));
                Scene AddFormScene = new Scene(AddFormParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(AddFormScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

        Home.setOnAction(event -> {
            try {
                Parent  HomeParent = FXMLLoader.load(getClass().getResource("/controller/HomePageforGuest.fxml"));
                Scene  HomeScene = new Scene( HomeParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(HomeScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
    }
}
