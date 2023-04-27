package controller;

import de.jensd.fx.glyphs.fontawesome.FontAwesomeIconView;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;

public class DetailController implements Initializable {

    @FXML
    private Label areaLabel;

    @FXML
    private Button buyButton;

    @FXML
    private Label contactLabel;

    @FXML
    private ImageView homeIcon;

    @FXML
    private Label nameLabel;

    @FXML
    private Label ownerLabel;

    @FXML
    private Label province2Label;

    @FXML
    private Label provinceLabel;

    @FXML
    private Button returnButton;

    @FXML
    private ImageView returnIcon;

    @FXML
    private ImageView tourImage;

    @FXML
    private Label tourLabel;

    @FXML
    private FontAwesomeIconView userIcon;

    @FXML
    private Label userLabel;
    @FXML
    private Label descriptionLabel;

    @FXML
    private Label welcomeLabel;

    private SupportController spc = new SupportController();
    private Tour tourControl = new Tour();
    private String MaTour = "T01";

    public  void  initScreen(Tour tour) {
        spc.initDetailImage(tourImage, "img/tour/" + tour.getImage());
        nameLabel.setText(tour.getName());
        province2Label.setText(tour.getProvince());
        descriptionLabel.setText(tour.getDes());
        areaLabel.setText(tour.getArea());
        ownerLabel.setText(tour.getOwner());
        contactLabel.setText("02312321313");//tour.getContact()

        tourLabel.setText(tour.getName());
        provinceLabel.setText(tour.getProvince());
    }
    @Override
    public void initialize(URL url, ResourceBundle rb) {

        spc.initImageIcon(returnIcon, "img/return.png");
        spc.initImageIcon(homeIcon, "img/home.png");

    }

    public void returnIconOnClick(MouseEvent event) throws IOException  {
        spc.raiseOther(event, "tourAndService.fxml");
    }

    public void setValue(String value) {
        MaTour = value;
        ArrayList<Tour> al = tourControl.sqlTourQuery("MaTour = '" + MaTour + "'");
        tourControl = al.get(0);
        initScreen(tourControl);
    }


    public void homeIconOnClick(MouseEvent event) throws IOException  {
        spc.raiseOther(event, "main.fxml");
    }


    public void buyButtonOnClick(ActionEvent event) throws IOException  {
        String welcome = tourControl.getName() + " - " + tourControl.getProvince();
        spc.raiseBuyScreen(event, "buyTour.fxml", tourControl.getMaTour(), welcome);
    }


    public void returnButtonOnClick(ActionEvent event) throws IOException  {
        spc.raiseOther(event, "tourAndService.fxml");
    }
    
}