package sample.demo2;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.scene.text.Font;import java.io.IOException;

public class HelloApplication extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("login.fxml"));
        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("ManagementAgent.fxml"));

        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("SuccessfulBookings.fxml"));

        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("ConfirmBooking.fxml"));
        //Scene scene = new Scene(fxmlLoader.load(), 1000, 660);

        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("BookRoom.fxml"));
        //FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("hello-view.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 422, 749);

        stage.setTitle("Booking");
        stage.setScene(scene);
        stage.setResizable(true);
        stage.show();

        scene.getStylesheets().add("object.css");


    }

    public static void main(String[] args) {
        launch();
    }
}
