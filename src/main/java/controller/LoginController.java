package controller;


import databaseConnect.DataBaseConnector;
import helper.Helper;
import helper.SwitchScreenHelper;
import javafx.fxml.Initializable;

import javafx.scene.control.Button;
import javafx.scene.control.Label;

import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;

import javafx.scene.image.ImageView;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.stage.Stage;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import model.Login;
import org.w3c.dom.Text;


import java.io.IOException;
import java.net.URL;

import java.util.ResourceBundle;

public  class  LoginController implements Initializable {
    @FXML
    private Button signUpButton;


    @FXML
    private Label loginLabel;
    @FXML
    private ImageView bgImage;

    @FXML
    private Button loginButton;

    @FXML
    private PasswordField password;

    @FXML
    private ImageView passwordIcon;

    @FXML
    private ImageView userIcon;

    @FXML
    private TextField username;



    @Override
    public void initialize(URL url, ResourceBundle rb) {
        Helper.initHelper.initImageIcon(bgImage, "img/howart.png");
        Helper.initHelper.initImageIcon(userIcon, "img/userIcon.png");
        Helper.initHelper.initImageIcon(passwordIcon, "img/passwordIcon.png");

    }

    public void loginButtonOnAction(ActionEvent event) throws IOException  {

        if (username.getText().isBlank() == false && password.getText().isBlank() == false) {

            Login user = new Login(username.getText(), password.getText());

            if (user.authentication()) {
                Helper.switchScreenHelper.raiseOther(event, Helper.screenName.homeScreen);
                System.out.println(Login.getRole());
            }
            else{
                    loginLabel.setTextFill(Color.color(0.8, 0, 0));
                    loginLabel.setFont(Font.font("Cambria", FontWeight.BOLD, 20));
                    loginLabel.setText("Invalid username or password");
                }
            }

        else {
            loginLabel.setTextFill(Color.color(0.8, 0, 0));
            loginLabel.setFont(Font.font("Cambria", FontWeight.BOLD, 20));
            loginLabel.setText("Please enter username and password");
        }
    }



    public void signUpButtonOnAction(ActionEvent event) {
        Stage stage = (Stage) signUpButton.getScene().getWindow();
        stage.close();
    }

}