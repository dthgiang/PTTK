package controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class BuyServiceController implements Initializable {

    @FXML
    private Button cancelButton;

    @FXML
    private Button confirmButton;

    @FXML
    private Label contactLabel;

    @FXML
    private DatePicker dateStart;

    @FXML
    private AnchorPane filterCard;

    @FXML
    private ComboBox<?> hourStart;

    @FXML
    private AnchorPane lengthFilterPane;

    @FXML
    private AnchorPane priceFilterPane;

    @FXML
    private TextField timeUse;
    @FXML
    private Label serviceNameLabel;
    private SupportController spc = new SupportController();

    @Override
    public void initialize(URL url, ResourceBundle rb) {



        Tour tour = new Tour(
                "Nha Trang", 999999,
                "Tham quan nha Trang 7 ngày 7 đêm với trải\n nghiệm không thể nào tuyệt vời hơn."
               , 7,"Khánh Hòa","Miền Trung", "HCMUS", "0372769333"
        );

    }



    public void returnIconOnClick(MouseEvent event) throws IOException  {
        spc.raiseOther(event, "tourAndService.fxml");
    }

    public void homeIconOnClick(MouseEvent event) throws IOException  {
        spc.raiseOther(event, "main.fxml");
    }


    public void confirmButtonOnClick(ActionEvent event) throws IOException  {
        // call insert to db function


    }


    public void cancelButtonOnClick(ActionEvent event) throws IOException  {
        boolean b = spc.yesNoAlert("Are you sure to cancel it");
        if (b) {
            spc.raiseOther(event, "tourAndService.fxml");
        }
        //
    }
    
}