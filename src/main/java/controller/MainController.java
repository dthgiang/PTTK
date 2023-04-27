package controller;

import javafx.fxml.Initializable;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;

import java.io.File;
import java.net.URL;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;

public class MainController implements Initializable {


    @FXML
    private ImageView avtImg;

    @FXML
    private Button checkInButton;

    @FXML
    private Button checkOutButton;

    @FXML
    private Button exitButton;

    @FXML
    private Button homeButton;

    @FXML
    private Button logoutButton;

    @FXML
    private Button paymentButton;

    @FXML
    private Button profileButton;

    @FXML
    private Label serviceButton;

    @FXML
    private Label username;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        File lockFile = new File("img/panda2.png");
        Image avtImage = new Image(lockFile.toURI().toString());
        avtImg.setImage(avtImage);

    }
}
