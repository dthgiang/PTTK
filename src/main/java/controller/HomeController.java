package controller;

import java.net.URL;
import java.util.ResourceBundle;

import databaseConnect.DataBaseConnector;
import helper.Helper;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;


public class HomeController implements Initializable {
    @FXML
    private Button ViewRoomDetail;
    @FXML
    private Button BookRoom, serviceButton, tourButton;

    @FXML
    private Button SignOut;
    @FXML
    private ImageView avtImage, bgImage;

    @FXML
    private Label userWelcomeLabel;

    @Override
    public void initialize(URL url, ResourceBundle rb) {

        Helper.initHelper.initImageIcon(bgImage, "img/howart.png");
        Helper.initHelper.initImageIcon(avtImage, "img/avt.gif");
        userWelcomeLabel.setText("Hello " + DataBaseConnector.username);
        // set event handler for ViewRoomDetail button
        Helper.switchScreenHelper.swicthScreenOnButton(ViewRoomDetail, "/controller/hello-view.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(BookRoom, "/controller/BookRoom.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(tourButton, "/controller/Tour.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(serviceButton, "/controller/Service.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(SignOut, "/controller/Login.fxml");

    }

    public void avtImageOnClick(MouseEvent event) {
        Helper.initHelper.initImageIcon(avtImage, "img/avt.gif");
    }



}

