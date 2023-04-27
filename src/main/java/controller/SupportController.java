package controller;
import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonBar;
import javafx.scene.control.ButtonType;
import javafx.scene.control.DatePicker;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.shape.Rectangle;
import javafx.stage.Stage;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Optional;
import java.util.ResourceBundle;

public class SupportController {


    public void intiCustomImage(ImageView img, String imgPath, int desiredWidth, int desiredHeight, int radius) {
        File brandingFile = new File(imgPath);

        // Create a new image with the desired size
        Image resizedImage = new Image(brandingFile.toURI().toString(), desiredWidth, desiredHeight, false, false);

        // Set the resized image on the ImageView
        img.setImage(resizedImage);

        // Create a rectangle clip with rounded corners
        Rectangle clip = new Rectangle();
        clip.setWidth(img.getFitWidth());
        clip.setHeight(img.getFitHeight());
        clip.setArcWidth(radius);
        clip.setArcHeight(radius);

        // Apply the clip to the ImageView
        img.setClip(clip);
    }
    public void initImageIcon(ImageView img, String imgPath)
    {
        File brandingFile = new File(imgPath);
        Image image = new Image(brandingFile.toURI().toString());
        img.setImage(image);
    }
    public void initImage(ImageView img, String imgPath) {
        intiCustomImage(img, imgPath, 173, 138, 20);

    }
    public void initDetailImage(ImageView img, String imgPath) {
        intiCustomImage(img, imgPath, 495, 475, 5);

    }



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


    public String dateToString(DatePicker startDate) {
        LocalDate startD = startDate.getValue();
        if (startD != null) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            String dateString = startD.format(formatter);
            startDate.setValue(null);
            return  dateString;

        }
        return "2002-01-20";
    }

    public void showAlert(String content) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Warning");
        alert.setHeaderText("Cancel");
        alert.setContentText(content);

        alert.showAndWait();
    }

    public boolean yesNoAlert(String content) {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Confirmation Dialog");
        alert.setHeaderText("Confirm Action");
        alert.setContentText(content);

        ButtonType buttonYes = new ButtonType("Yes", ButtonBar.ButtonData.YES);
        ButtonType buttonNo = new ButtonType("No", ButtonBar.ButtonData.NO);
        alert.getButtonTypes().setAll(buttonYes, buttonNo);

        Optional<ButtonType> result = alert.showAndWait();
        if (result.get() == buttonYes){
            // Handle the Yes button action
            return true;
        } else {
            // Handle the No button action or just close the dialog
            return false;
        }

    }
}
