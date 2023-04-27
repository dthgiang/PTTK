package controller;

import de.jensd.fx.glyphs.fontawesome.FontAwesomeIconView;
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

    @FXML
    private FontAwesomeIconView userIcon;

    @FXML
    private Label userLabel, memberNumLabel;

    @FXML
    private ComboBox<String> vehicle;

    @FXML
    private Label welcomeLabel;

    private SupportController spc = new SupportController();
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

        spc.initImageIcon(returnIcon, "img/return.png");
        spc.initImageIcon(homeIcon, "img/home.png");

        vehicle.setItems(FXCollections.observableArrayList("Tự túc", "Xe đạp", "Máy bay", "Tàu hỏa", "Tàu thủy", "Cân đẩu vân", "Xe hơi", "Rồng"));

    }



    public void returnIconOnClick(MouseEvent event) throws IOException  {
        spc.raiseOther(event, "tourAndService.fxml");
    }

    public void homeIconOnClick(MouseEvent event) throws IOException  {
        spc.raiseOther(event, "main.fxml");
    }
    public void nextMemberButtonOnClick(ActionEvent event) throws IOException {
        if (numOfMember == 0) {
            spc.showAlert("Please enter number of member(s)");
            return;
        }

        // user infor
        String uName = nameField.getText();
        String uEmail = emailField.getText();
        String uPhone = phoneField.getText();
        String uId  = idField.getText();

        cusList.add(new Customer(uName, uPhone, uEmail, uId));
        int i = cusList.size() + 1;
        String strNumber = String.valueOf(i);
        if ( i == numOfMember) nextMemberButton.setText("OK");
        else if ( i > numOfMember) nextMemberButton.setVisible(false);
        memberNumLabel.setText("Member : "+ strNumber);
        // clear when input
        nameField.setText("");
        phoneField.setText("");
        idField.setText("");
        emailField.setText("");

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
            spc.showAlert("Please fill number of member");
            return;
        }

        if (cusList.size() < numOfMember) {
            spc.showAlert("Please fill all member information");
            return;
        }

        String memNum = memberNum.getText();
        int memberN = Integer.parseInt(memNum);
        String dateStart = spc.dateToString(startDate);
        String veh = vehicle.getValue();
        String req = otherRequire.getText();

        for (Customer x: cusList) {
            x.outCustomer();
        }


        System.out.println(dateStart + " - " + veh + " - " + req);

        // clear all text fiedl
        memberNum.setText("");
        otherRequire.setText("");


    }


    public void cancelButtonOnClick(ActionEvent event) throws IOException  {
        boolean b = spc.yesNoAlert("Are you sure to cancel it");
        if (b) {
            spc.raiseOther(event, "tourAndService.fxml");
        }
        //
    }
    
}