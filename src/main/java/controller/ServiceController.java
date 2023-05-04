package controller;

import de.jensd.fx.glyphs.fontawesome.FontAwesomeIconView;
import helper.Helper;
import helper.SwitchScreenHelper;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import model.Tour;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public  class ServiceController implements Initializable {

    @FXML
    private ComboBox<String> areaFilter;

    @FXML
    private Button buyButton;

    @FXML
    private ImageView homeIcon;


    @FXML
    private Label price2Label;

    @FXML
    private TextField priceFilter;

    @FXML
    private AnchorPane priceFilterPane;

    @FXML
    private ImageView returnIcon;

    @FXML
    private Button searchButton;

    @FXML
    private Label descriptionInforLabel1, descriptionInforLabel2, descriptionInforLabel3;

    @FXML
    private Label timeInforLabel1, timeInforLabel2, timeInforLabel3;

    @FXML
    private ImageView serviceImage1, serviceImage2, serviceImage3;

    @FXML
    private Label serviceNameInforLabel1, serviceNameInforLabel2, serviceNameInforLabel3;
    @FXML
    private Label freeForInforLabel1, freeForInforLabel2, freeForInforLabel3;
    @FXML
    private Label priceInfroLabel1;
    @FXML
    private ImageView searchIcon;
    @FXML
    private FontAwesomeIconView userIcon;
    @FXML
    private TextField searchField;
    @FXML
    private Label userLabel;



    @Override
    public void initialize(URL url, ResourceBundle rb) {

        Helper.initHelper.initImage(returnIcon, "img/return.png");
        Helper.initHelper.initImage(homeIcon, "img/home.png");
        Helper.initHelper.initImage(searchIcon, "img/loupe.png");
        Helper.initHelper.initImage(serviceImage1, "img/service/spa.png");

        areaFilter.setItems(FXCollections.observableArrayList("Entertainment", "Sport", "Relax"));

        Tour tour = new Tour(
                "Nha Trang", 999999,
                "Tham quan nha Trang 7 ngày 7 đêm với trải\n nghiệm không thể nào tuyệt vời hơn."
                , 7,"HCMUS"
        );
        serviceNameInforLabel1.setText(tour.getName());
        timeInforLabel1.setText(Integer.toString(tour.getTime()) + " Days");
        descriptionInforLabel1.setText(tour.getDes());
        priceInfroLabel1.setText(Integer.toString(tour.getCost()));


    }

    public void returnIconOnClick(MouseEvent event) throws IOException  {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.homeScreen);
    }

    public void homeIconOnClick(MouseEvent event) throws IOException  {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.homeScreen);
    }

    public void buyButtonOnClick(ActionEvent event) throws IOException  {
        // create a new stage
        // Load the FXML file into a Parent node
        FXMLLoader loader = new FXMLLoader(getClass().getResource(Helper.screenName.buyServiceScreen));
        Parent otherScreen = loader.load();

        // Create a new stage
        Stage newStage = new Stage();

        // Set the scene to the FXML file
        Scene newScene = new Scene(otherScreen);
        newStage.setScene(newScene);

//        // Set the modality and owner of the new stage
//        newStage.initModality(Modality.APPLICATION_MODAL);
//        newStage.initOwner(); // replace primaryStage with the name of your current stage
//
//        // Show the new stage
        newStage.show();


    }

    public void searchButtonOnClick(ActionEvent event) throws IOException  {
        // search with name
        String searchName = searchField.getText();
        searchField.setText("");
        System.out.println(searchName);
    }

    public void applyButtonOnClick(ActionEvent event) throws IOException  {
        // search with filter
        String price = priceFilter.getText();
        String area = areaFilter.getValue();

        priceFilter.setText("");
        System.out.println(price + "-" + area );
    }

}