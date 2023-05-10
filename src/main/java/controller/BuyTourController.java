package controller;

import databaseConnect.DataBaseConnector;
//import de.jensd.fx.glyphs.fontawesome.FontAwesomeIconView;
import helper.Helper;
import helper.SwitchScreenHelper;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import model.Customer;
import model.Login;
import model.Tour;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

public class BuyTourController implements Initializable {

    @FXML
    private Button nextMemberButton;

    @FXML
    private TextField emailField;

    @FXML
    private ImageView homeIcon;

    @FXML
    private TextField idField;

    @FXML
    private AnchorPane lengthFilterPane;

    @FXML
    private TextField memberNum;

    @FXML
    private TextField nameField;

    @FXML
    private TextArea otherRequire;

    @FXML
    private TextField phoneField;


    @FXML
    private ImageView returnIcon;

    @FXML
    private DatePicker startDate;

    //@FXML
    //private FontAwesomeIconView userIcon;

    @FXML
    private Label userLabel, memberNumLabel;

    @FXML
    private ComboBox<String> vehicle;

    @FXML
    private Label welcomeLabel;

    private Tour tourControl = new Tour();
    private String maTour;
    private String tourName;

    private int numOfMember = 0;
    private ArrayList<Customer> cusList = new ArrayList<Customer>();

    public void setValue(String maTour, String tourName) {
        this.maTour = maTour;
        this.tourName = tourName;
        welcomeLabel.setText(tourName);
    }

    @Override
    public void initialize(URL url, ResourceBundle rb) {

        Helper.initHelper.initImageIcon(returnIcon, "img/return.png");
        Helper.initHelper.initImageIcon(homeIcon, "img/home.png");
        userLabel.setText("Hello " + Login.getUsername());
        vehicle.setItems(FXCollections.observableArrayList("Tự túc", "Xe đạp", "Máy bay", "Tàu hỏa", "Tàu thủy", "Cân đẩu vân", "Xe hơi", "Rồng"));
        emailField.setText("@gmail.com");

    }



    public void returnIconOnClick(MouseEvent event) throws IOException  {
        Helper.switchScreenHelper.raiseOther(event, "Tour.fxml");
    }

    public void homeIconOnClick(MouseEvent event) throws IOException  {
        Helper.switchScreenHelper.raiseOther(event, "main.fxml");
    }
    public void nextMemberButtonOnClick(ActionEvent event) throws IOException {

        if (numOfMember == 0 || memberNum.getText().trim().isEmpty()) {
            Helper.alertHelper.showAlert("Please enter number of member(s)");
            return;
        }

        // user infor

        if (nameField.getText().trim().isEmpty() || emailField.getText().trim().isEmpty() || phoneField.getText().trim().isEmpty() || idField.getText().trim().isEmpty()) {
            Helper.alertHelper.showAlert("Please fill all information before switch");
            return;
        }
        String uName = nameField.getText();
        String uEmail = emailField.getText();
        String uPhone = phoneField.getText();
        String uId  = idField.getText();

        cusList.add(new Customer(uName, uPhone, uEmail, uId));
        int i = cusList.size() + 1;
        String strNumber = String.valueOf(i);
        if ( i >= numOfMember) nextMemberButton.setVisible(false);
        memberNumLabel.setText("Member : "+ strNumber);



        // clear when input
        nameField.setText("");
        phoneField.setText("");
        idField.setText("");
        emailField.setText("@gmail.com");

    }

    public void setNumOfMember(ActionEvent event) throws IOException {
        if (memberNum.getText().trim().isEmpty()) {
            return;
        }
        String memNum = memberNum.getText();
        numOfMember = Integer.parseInt(memNum);
        if (numOfMember < 2) nextMemberButton.setVisible(false);
        else nextMemberButton.setVisible(true);

    }

    public void confirmButtonOnClick(ActionEvent event) throws IOException  {
        // call insert to db function
        if (memberNum.getText().trim().isEmpty()) {
            Helper.alertHelper.showAlert("Please fill number of member");
            return;
        }

        nextMemberButtonOnClick(event);

        if (cusList.size() < numOfMember) {
            Helper.alertHelper.showAlert("Please fill all member information");
            return;
        }

        String memNum = memberNum.getText();
        int memberN = Integer.parseInt(memNum);
        String dateStart = Helper.convertTypeHelper.dateToString(startDate);
        String veh = vehicle.getValue();
        String req = otherRequire.getText();




        if(insertMember(dateStart, veh)) {
            Helper.alertHelper.showAlert("Registor successful");
        }
        else {
            Helper.alertHelper.showAlert("Some thing error! Please try agian T_T");
        }

        // clear all text field
        memberNum.setText("");
        otherRequire.setText("");
        numOfMember = 1;


    }
    public  boolean insertMember(String date, String vehicle) {
        for (Customer x: cusList) {
            boolean z = Customer.insertDSThamGiaTour(maTour, date,vehicle, Login.getUserId(), x.getName(), x.getEmail(), x.getPhone(), x.getID());
            if(z == false) return false;
        }
        return true;
    }

    public  void insertDSThamGia() {

    }


    public void cancelButtonOnClick(ActionEvent event) throws IOException  {
        boolean b = Helper.alertHelper.yesNoAlert("Are you sure to cancel it");
        if (b) {
            Helper.switchScreenHelper.raiseOther(event, Helper.screenName.tourScreen);
        }
        //
    }
    
}