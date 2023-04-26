package sample.demo2;



import javafx.scene.Scene;
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




public class SuccessBookingController implements Initializable {

    //***********Table Column Variables*****************//
    @FXML
    private TableView<FormDP> FormDPTable;
    @FXML
    private TableColumn<FormDP, String> columnMaphieu;
    @FXML
    private TableColumn<FormDP, String> columnTrangthai;
    @FXML
    private TableColumn<FormDP, String> columnDkvc;
    @FXML
    private TableColumn<FormDP, String> columnYcdb;
    @FXML
    private TableColumn<FormDP, String> columnNgaylap;
    @FXML
    private TableColumn<FormDP, String> columnMadaily;
    @FXML
    private TableColumn<FormDP, String> columnMakhachhang;
    @FXML
    private TableColumn<FormDP, String> columnNhanvienxuly;

    @FXML private void goSignOut(ActionEvent event) throws IOException {

        Alert alert = new Alert(AlertType.CONFIRMATION);
        alert.setTitle("Confirmation Dialog");
        alert.setHeaderText(null);
        alert.setContentText("Are you sure you want to signout?");
        alert.showAndWait().ifPresent(type -> {

            if(type == ButtonType.CANCEL) {
                event.consume();
            } else if (type == ButtonType.OK) {
                Parent home_page_parent;
                try {
                    home_page_parent = FXMLLoader.load(getClass().getResource("Login.fxml") );
                    Scene home_page_scene = new Scene (home_page_parent);
                    Stage app_stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
                    app_stage.setScene(home_page_scene);
                    app_stage.show();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        });
    }

    private void setCellTable() {

        columnMaphieu.setCellValueFactory(new PropertyValueFactory<>("maphieu"));
        columnTrangthai.setCellValueFactory(new PropertyValueFactory<>("trangthai"));
        columnDkvc.setCellValueFactory(new PropertyValueFactory<>("dkvanchuyenhanhly"));
        columnYcdb.setCellValueFactory(new PropertyValueFactory<>("yeucaudacbiet"));
        columnNgaylap.setCellValueFactory(new PropertyValueFactory<>("ngaylap"));
        columnMadaily.setCellValueFactory(new PropertyValueFactory<>("madaily"));
        columnMakhachhang.setCellValueFactory(new PropertyValueFactory<>("makhachhang"));
        columnNhanvienxuly.setCellValueFactory(new PropertyValueFactory<>("nhanvienxuly"));


    }
    private ObservableList<FormDP> loadData() {
        ObservableList<FormDP> data = FXCollections.observableArrayList();

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
            ResultSet resultSet = statement.executeQuery("SELECT * FROM phieudatphong");

            // Loop through the result set and add the data to the tableview
            while (resultSet.next()) {
                String maPhieu = resultSet.getString("MaPhieu");
                String trangThai = resultSet.getString("TrangThai");
                String dkVanChuyenHanhLy = resultSet.getString("DKVanChuyenHanhLy");
                String yeuCauDacBiet = resultSet.getString("YeuCauDacBiet");
                String ngayLap = resultSet.getString("NgayLap");
                String maDaiLy = resultSet.getString("MaDaiLy");
                String maKhachHang = resultSet.getString("MaKhachHang");
                String nhanVienXuLy = resultSet.getString("NhanVienXuLy");

                data.add(new FormDP(maPhieu, trangThai, dkVanChuyenHanhLy, yeuCauDacBiet, ngayLap, maDaiLy, maKhachHang, nhanVienXuLy));

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


    @Override public void initialize(URL url, ResourceBundle rb) {
        FormDPTable.setItems(loadData());
        FormDPTable.getColumns().addAll(columnMaphieu, columnTrangthai, columnDkvc, columnYcdb, columnNgaylap, columnMadaily, columnMakhachhang, columnNhanvienxuly);
        setCellTable();
    };
}




