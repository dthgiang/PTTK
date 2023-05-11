package controller;

import helper.Helper;
import helper.SwitchScreenHelper;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.input.InputMethodEvent;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import model.Login;
import model.Service;
import model.Tour;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
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
    private ComboBox<String> hourStart;

    @FXML
    private AnchorPane lengthFilterPane;

    @FXML
    private AnchorPane priceFilterPane;

    @FXML
    private TextField timeUse;
    @FXML
    private Label serviceNameLabel, totalLabel;
    @FXML
    private DatePicker startDate;

    private String maDichVu;
    private Service service = new Service();
    int timeUsing, totalPrice;

    @Override
    public void initialize(URL url, ResourceBundle rb) {

        for (int i = 0; i <24; i++) {
            String x = "";
            if ( i < 10) {
                x += "0";
            }
            x += Integer.toString(i);
            x += "h";
            hourStart.getItems().add(x);
        }
        hourStart.setValue("14h");



    }



    public void returnIconOnClick(MouseEvent event) throws IOException  {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.tourScreen);
    }

    public void homeIconOnClick(MouseEvent event) throws IOException  {
        Helper.switchScreenHelper.raiseOther(event, Helper.screenName.homeScreen);
    }


    public void confirmButtonOnClick(ActionEvent event) throws IOException  {
        // call insert to db function
        if (timeUse.getText().trim().isEmpty()) {
            Helper.alertHelper.showAlert("Please fill time use");
            return;
        }
        String hour = hourStart.getValue();
        hour = hour.substring(0, hour.length() - 1);
        String time = Helper.convertTypeHelper.dateToString(startDate) + " " + hour + ":00";
        System.out.println(time);
        boolean x =Service.insertPhieuSuDungDichVu(timeUsing, time, totalPrice, maDichVu, Login.getMaDatPhong(), Login.getUserId());
        if (!x) {
            Helper.alertHelper.showAlert("Sorry something went wrong, cant not registor now");
            return;
        }
        Helper.alertHelper.showAlert("Register successfully");
        Stage stage = (Stage) confirmButton.getScene().getWindow();
        stage.close();


    }

    public void caclPriceSame() {
        if (timeUse.getText().trim().isEmpty()) {
            return;
        }
        String memNum = timeUse.getText();
        timeUsing = Integer.parseInt(memNum);
        totalPrice = timeUsing * service.getCost();
        totalLabel.setText(Helper.convertTypeHelper.formatNumber(totalPrice));
    }
    public void calcPrice(InputMethodEvent event) {
        caclPriceSame();
    }

    public void calcPrice2(KeyEvent event) {
        caclPriceSame();
    }


    public void cancelButtonOnClick(ActionEvent event) throws IOException  {
        boolean b = Helper.alertHelper.yesNoAlert("Are you sure to cancel it");
        if (b) {
            Stage stage = (Stage) cancelButton.getScene().getWindow();
            stage.close();

        }
        //
    }

    public void setValue(String maDV) {
        maDichVu = maDV;
        String condition  = "MADICHVU = '" + maDichVu + "'";
        ArrayList<Service> sl = service.sqlServiceQuery(condition);
        service = sl.get(0);
        serviceNameLabel.setText(service.getName());

    }
    
}