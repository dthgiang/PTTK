package controller;

import databaseConnect.DataBaseConnector;
import helper.Helper;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class HelloApplication extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource(Helper.screenName.loginScreen));
        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("ManagementAgent.fxml"));

        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("SuccessfulBookings.fxml"));

        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("ConfirmBooking.fxml"));
        //Scene scene = new Scene(fxmlLoader.load(), 1000, 660);

        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("BookRoom.fxml"));
        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("hello-view.fxml"));
        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("Home.fxml"));
        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource(Helper.screenName.roomManage));
        Scene scene = new Scene(fxmlLoader.load(), 415, 737);

        stage.setTitle("Booking");
        stage.setScene(scene);
        stage.setResizable(false);
        stage.show();

        scene.getStylesheets().add("object.css");


    }

    public static void main(String[] args) {
        launch();
    }
}
