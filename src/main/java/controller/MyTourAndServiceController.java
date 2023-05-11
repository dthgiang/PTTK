package controller;

//import de.jensd.fx.glyphs.fontawesome.FontAwesomeIconView;
import helper.Helper;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseButton;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;
import model.Login;
import model.Service;
import model.Tour;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

public class MyTourAndServiceController implements Initializable {
    @FXML
    private Button confirmButton, nextMemberButton;

    @FXML
    private ImageView homeIcon, notFoundImage, returnIcon;

    @FXML
    private TableView<Tour> tableServiceAndTour;
    @FXML
    private TableColumn<Tour, String> descriptionColumn, nameColumn, typeColumn, timeColumn, priceColumn, statusColumn;


    //@FXML
   // private FontAwesomeIconView userIcon;

    @FXML
    private Label userLabel, oopLabel;
    private ObservableList<Tour> tableContent;
    private ObservableList<Service> tableContent2;



    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // set event handler for ViewRoomDetail button
        Helper.initHelper.initImageIcon(returnIcon, "img/return.png");
        Helper.initHelper.initImageIcon(homeIcon, "img/home.png");
        Helper.initHelper.initDetailImage(notFoundImage, "img/notFound.png");
        userLabel.setText("Hello " + Login.getUsername());
        notFoundImage.setVisible(false);
        oopLabel.setVisible(false);



        initTable();
    }

    public boolean initTable() {
        nameColumn.setCellValueFactory(new PropertyValueFactory<>("Name"));
        priceColumn.setCellValueFactory(new PropertyValueFactory<>("sPrice"));
        descriptionColumn.setCellValueFactory(new PropertyValueFactory<>("des"));
        timeColumn.setCellValueFactory(new PropertyValueFactory<>("startTime"));
        typeColumn.setCellValueFactory(new PropertyValueFactory<>("Type"));
        statusColumn.setCellValueFactory(new PropertyValueFactory<>("Stt"));

        return setValueTable();
    }

    public boolean setValueTable() {
        ArrayList<Tour> tl = Tour.getMyTourAndService();
        if (tl.size() < 1) {
            tableServiceAndTour.setVisible(false);
            notFoundImage.setVisible(true);
            oopLabel.setVisible(true);
            return false;
        }

        System.out.println("Oke");
        tableContent = FXCollections.observableList(tl);
        tableServiceAndTour.setItems(tableContent);
        return  true;
    }

    public void returnIconOnClick(MouseEvent event) throws IOException  {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.homeScreen);
    }

    public void homeIconOnClick(MouseEvent event) throws IOException  {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.homeScreen);
    }

    public void moreServiceButtonOnClick(ActionEvent event) throws IOException {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.serviceScreen);
    }

    public void moreTourButtonOnClick(ActionEvent event) throws IOException {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.tourScreen);

    }
}
