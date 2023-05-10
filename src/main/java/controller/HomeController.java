package controller;

import java.net.URL;
import java.util.ResourceBundle;

import helper.Helper;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import model.Login;


public class HomeController implements Initializable {
    @FXML
    private Button BookRoom, ViewRoomDetail,listCustomerButton, roomManage;
    @FXML
    private Button serviceButton, tourButton,  myTourAndServiceButton, SuccessfulBooking;

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

        userWelcomeLabel.setText("Hello " + Login.getUsername());

        if (Login.getRole() == "Nhan Vien") {
            serviceButton.setVisible(false);
            myTourAndServiceButton.setVisible(false);
            tourButton.setVisible(false);
            ViewRoomDetail.setVisible(false);
            BookRoom.setVisible(false);


        } else {
            roomManage.setVisible(false);
            listCustomerButton.setVisible(false);
            SuccessfulBooking.setVisible(false);
        }


        // set event handler for ViewRoomDetail button
        Helper.switchScreenHelper.swicthScreenOnButton(ViewRoomDetail, "/controller/hello-view.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(BookRoom, "/controller/BookRoom.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(tourButton, "/controller/Tour.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(serviceButton, "/controller/Service.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(SignOut, "/controller/Login.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(roomManage, "/controller/roomManage.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(myTourAndServiceButton, "/controller/BoughtTourAndService.fxml");
        Helper.switchScreenHelper.swicthScreenOnButton(SuccessfulBooking, "/controller/SuccessfulBookings.fxml");



    }

    public void avtImageOnClick(MouseEvent event) {
        Helper.initHelper.initImageIcon(avtImage, "img/avt.gif");
    }



}

