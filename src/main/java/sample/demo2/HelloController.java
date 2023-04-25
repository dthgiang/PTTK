package sample.demo2;


import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;
import java.io.IOException;
import javafx.fxml.FXMLLoader;
import javafx.application.Platform;




public class HelloController implements Initializable {
    @FXML
    private Button btnLogin;
    @FXML
    private Button btnExit;


    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // set event handler for Login button
        btnLogin.setOnAction(event -> {
            try {
                Parent bookRoomParent = FXMLLoader.load(getClass().getResource("/sample/demo2/BookRoom.fxml"));
                Scene bookRoomScene = new Scene(bookRoomParent);
                Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
                window.setScene(bookRoomScene);
                window.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

        //Nút exit
        btnExit.setOnAction(event -> {
            Platform.exit();
        });
    }

}




