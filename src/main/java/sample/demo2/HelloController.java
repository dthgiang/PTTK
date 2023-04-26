package sample.demo2;




import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.ResourceBundle;



import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.control.cell.TextFieldTableCell;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;
import javafx.scene.layout.VBox;




public class HelloController  implements Initializable {

    //***********Table Column Variables*****************//
    @FXML
    private TableView<RoomType> roomTable;
    @FXML
    private TableColumn<RoomType, String> columnID;
    @FXML
    private TableColumn<RoomType, String> columnName;
    @FXML
    private TableColumn<RoomType, String> columnPrice;
    @FXML
    private TableColumn<RoomType, String> columnDes;
    @FXML
    private TableColumn<RoomType, String> columnRating;



    private void setCellTable() {

        columnID.setCellValueFactory(new PropertyValueFactory<>("id"));
        columnName.setCellValueFactory(new PropertyValueFactory<>("name"));
        columnPrice.setCellValueFactory(new PropertyValueFactory<>("price"));
        columnDes.setCellValueFactory(new PropertyValueFactory<>("des"));
        columnRating.setCellValueFactory(new PropertyValueFactory<>("rating"));
    }
    private ObservableList<RoomType> loadData() {
        ObservableList<RoomType> data = FXCollections.observableArrayList();

        try {
            // Register the Oracle JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Create a connection to the database
            Connection connection = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:XE",
                    "DBA_PTTK",
                    "123");

            // Create a statement
            Statement statement = connection.createStatement();

            // Execute the query and get the result set
            ResultSet resultSet = statement.executeQuery("SELECT * FROM LoaiPhong");

            // Loop through the result set and add the data to the tableview
            while (resultSet.next()) {
                String id = resultSet.getString("ID");
                String name = resultSet.getString("Ten");
                String price = resultSet.getString("Gia");
                String Rating = resultSet.getString("Rating");
                String Des = resultSet.getString("MoTa");
                data.add(new RoomType(id, name, price, Rating, Des));



            }

            // Close the connection and statement
            resultSet.close();
            statement.close();
            connection.close();

        } catch (ClassNotFoundException e) {
            System.out.println("Oracle JDBC driver not found");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Connection to Oracle database failed");
            e.printStackTrace();
        }

        return data;
    }


    @Override public void initialize(URL location, ResourceBundle resources) {
        roomTable.setItems(loadData());
        roomTable.getColumns().addAll(columnID, columnName, columnPrice, columnDes, columnRating);
        setCellTable();


    };
}




