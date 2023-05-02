package controller;

import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;

import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.stage.StageStyle;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;

import java.io.IOException;
import java.net.URL;
import java.io.File;
import java.util.ResourceBundle;

public  class  LoginController implements Initializable {
    @FXML
    private Button signUpButton;
    @FXML
    private Button loginButton;
    @FXML
    private Label loginLabel;

    @FXML
    private ImageView bgImage;
    @FXML
    private ImageView lockImage;

    @FXML
    private TextField username;
    @FXML
    private PasswordField password;
    private SupportController spc = new SupportController();



    @Override
    public void initialize(URL url, ResourceBundle rb) {
        /*File brandingFile = new File("img/hotel2.jpg");
        Image brandingImg = new Image(brandingFile.toURI().toString());
        //bgImage.setImage(brandingImg);

        File lockFile = new File("img/LoginN.png");
        Image lockImg = new Image(lockFile.toURI().toString());
        //lockImage.setImage(lockImg);*/
    }

    public void loginButtonOnAction(ActionEvent event) throws IOException  {
        if (username.getText().isBlank() == false && password.getText().isBlank() == false) {
            if (validateAcc(username.getText(),password.getText())) {
                spc.raiseOther(event, "tourAndService.fxml");
            }
            else {
                loginLabel.setText("Invalid username or password");
            }
        }
        else {
            loginLabel.setText("Please enter username and password");
        }
    }
    public void validate() {
        loginLabel.setText("Ok");
    }



    public boolean validateAcc(String Username, String pw) {
        System.out.println(Username + ", " + pw);
        if (Username.equals("admin") && pw.equals("123") ) {
            return  true;
        }
        return  false;
    }


    public void signUpButtonOnAction(ActionEvent event) {
        Stage stage = (Stage) signUpButton.getScene().getWindow();
        stage.close();
    }

}