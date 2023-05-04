package helper;
import controller.BuyTourController;
import javafx.geometry.Rectangle2D;
import javafx.scene.control.Button;
import controller.DetailController;
import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;

import javafx.scene.input.MouseEvent;
import javafx.stage.Screen;
import javafx.stage.Stage;

import java.io.IOException;


public class SwitchScreenHelper {




    public void raiseOther(ActionEvent event, String screenPath) throws IOException {
        //note that on this line you can substitue "Screen2.fxml" for a string chosen prior to this line.
        Parent loader = FXMLLoader.load(getClass().getResource(screenPath));//Creates a Parent called loader and assign it as ScReen2.FXML

        Scene scene = new Scene(loader); //This creates a new scene called scene and assigns it as the Sample.FXML document which was named "loader"


        Stage app_stage = (Stage) ((Node) event.getSource()).getScene().getWindow(); //this accesses the window.

        app_stage.setScene(scene); //This sets the scene as scene

        app_stage.show(); // this shows the scene
    }

    public void raiseOther(MouseEvent event, String screenPath) throws IOException {
        //note that on this line you can substitue "Screen2.fxml" for a string chosen prior to this line.
        Parent loader = FXMLLoader.load(getClass().getResource(screenPath));//Creates a Parent called loader and assign it as ScReen2.FXML

        Scene scene = new Scene(loader); //This creates a new scene called scene and assigns it as the Sample.FXML document which was named "loader"

        Stage app_stage = (Stage) ((Node) event.getSource()).getScene().getWindow(); //this accesses the window.

        app_stage.setScene(scene); //This sets the scene as scene

        app_stage.show(); // this shows the scene
    }

    public void raiseDetail(ActionEvent event, String screenPath, String arg) throws IOException {
        FXMLLoader loader = new FXMLLoader(getClass().getResource(screenPath)); // create a new FXMLLoader
        Parent root = loader.load(); // get the root node of the FXML file

        DetailController controller = loader.getController(); // get the controller
        controller.setValue(arg); // set the value

        Scene scene = new Scene(root); // create a new scene with the root node
        Stage stage = (Stage) ((Node) event.getSource()).getScene().getWindow(); // get the stage
        stage.setScene(scene); // set the scene on the stage
        stage.show(); // show the stage
    }


    public void raiseBuyScreen(ActionEvent event, String screenPath, String arg1, String arg2) throws IOException {
        FXMLLoader loader = new FXMLLoader(getClass().getResource(screenPath)); // create a new FXMLLoader
        Parent root = loader.load(); // get the root node of the FXML file

        BuyTourController controller = loader.getController(); // get the controller
        controller.setValue(arg1, arg2); // set the value

        Scene scene = new Scene(root); // create a new scene with the root node
        Stage stage = (Stage) ((Node) event.getSource()).getScene().getWindow(); // get the stage
        stage.setScene(scene); // set the scene on the stage
        stage.show(); // show the stage
    }
    public void swicthScreenOnButton(Button button, String screenPath)  {

        button.setOnAction(event -> {
            try {
                Parent bookRoomParent = FXMLLoader.load(getClass().getResource(screenPath));
                Scene bookRoomScene = new Scene(bookRoomParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                // Get the primary screen bounds
                Rectangle2D screenBounds = Screen.getPrimary().getVisualBounds();

                // Set the stage position to the middle of the screen
                window.setX(10);
                window.setY(10);
                window.setScene(bookRoomScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
    }



}
