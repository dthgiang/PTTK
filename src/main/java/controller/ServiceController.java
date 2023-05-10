package controller;

//import de.jensd.fx.glyphs.fontawesome.FontAwesomeIconView;
import helper.Helper;
import helper.SwitchScreenHelper;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import model.Login;
import model.Service;
import model.Service;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

public  class ServiceController implements Initializable {

    @FXML
    private ComboBox<String> areaFilter;

    @FXML
    private Button buyButton;
    @FXML
    private AnchorPane inforCard1, inforCard2, inforCard3;
    @FXML
    private ImageView homeIcon;


    @FXML
    private Label price2Label;

    @FXML
    private TextField priceFilter;

    @FXML
    private AnchorPane priceFilterPane;

    @FXML
    private ImageView returnIcon;

    @FXML
    private Button searchButton, backListButton, loadMoreButton;

    @FXML
    private Label descriptionInforLabel1, descriptionInforLabel2, descriptionInforLabel3;


    @FXML
    private ImageView serviceImage1, serviceImage2, serviceImage3;

    @FXML
    private Label serviceNameInforLabel1, serviceNameInforLabel2, serviceNameInforLabel3;
    @FXML
    private Label freeForInforLabel1, freeForInforLabel2, freeForInforLabel3;
    @FXML
    private Label priceInfroLabel1, priceInfroLabel2, priceInfroLabel3;
    @FXML
    private ImageView searchIcon;
    //@FXML
    //private FontAwesomeIconView userIcon;
    @FXML
    private TextField searchField;
    @FXML
    private Label userLabel;
    private Service service = new Service();

    private int page = 0;
    private ArrayList<Service> serviceList;




    public void setInforCard1(Service service) {
        serviceNameInforLabel1.setText(service.getName());
        descriptionInforLabel1.setText(service.getDes());
        freeForInforLabel1.setText(service.getForRoom());
        priceInfroLabel1.setText(service.getPrice());
        Helper.initHelper.initImage(serviceImage1, "img/service/" + service.getImage());

    }

    public void setInforCard2(Service service) {
        serviceNameInforLabel2.setText(service.getName());
        descriptionInforLabel2.setText(service.getDes());
        freeForInforLabel2.setText(service.getForRoom());
        priceInfroLabel2.setText(service.getPrice());
        Helper.initHelper.initImage(serviceImage2, "img/service/" + service.getImage());

    }

    public void setInforCard3(Service service) {
        serviceNameInforLabel3.setText(service.getName());
        descriptionInforLabel3.setText(service.getDes());
        freeForInforLabel3.setText(service.getForRoom());
        priceInfroLabel3.setText(service.getPrice());
        Helper.initHelper.initImage(serviceImage3, "img/service/" + service.getImage());

    }
    public void loadCard(ArrayList<Service> serviceList, int page) {
        int n = serviceList.size();
        if (page < 3) {
            backListButton.setVisible(false);
        }
        else {
            backListButton.setVisible(true);
        }

        if (n > page + 3) {
            loadMoreButton.setVisible(true);
        }
        else {
            loadMoreButton.setVisible(false);
        }


        int i = page;
        if (i < n) {
            setInforCard1(serviceList.get(i));
            if (i + 1 >= n ) {
                inforCard2.setVisible(false);
                inforCard3.setVisible(false);
            } else {
                setInforCard2(serviceList.get(i+1));
                inforCard2.setVisible(true);
                if (i + 2 >= n) {
                    inforCard3.setVisible(false);
                }else {
                    setInforCard3(serviceList.get(i+2));
                    inforCard3.setVisible(true);
                }
            }
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle rb) {

        Helper.initHelper.initImageIcon(returnIcon, "img/return.png");
        Helper.initHelper.initImageIcon(homeIcon, "img/home.png");
        Helper.initHelper.initImageIcon(searchIcon, "img/loupe.png");
        Service temp = new Service();
        ArrayList<String> typeList = temp.getAllType();
        areaFilter.setItems(FXCollections.observableArrayList(typeList));
        areaFilter.setValue(typeList.get(0));
        userLabel.setText("Hello " + Login.getUsername());
        serviceList = service.getAllService();
        loadCard(serviceList, page);
        page += 3;


    }

    public void returnIconOnClick(MouseEvent event) throws IOException {
        Helper.switchScreenHelper.raiseOther(event, "/controller/Home.fxml");
    }

    public void homeIconOnClick(MouseEvent event) throws IOException  {
        Helper.switchScreenHelper.raiseOther(event, "/controller/Home.fxml");
    }



    public void buyButtonOnClick1(ActionEvent event) throws IOException  {
        Service serviceX = serviceList.get(page-3);
        String welcome = serviceX.getName() + " - " + serviceX.getProvince();
        Helper.switchScreenHelper.raiseBuyScreen(event, Helper.screenName.buyServiceScreen,serviceX.getMaDichVu(), welcome);
    }
    public void buyButtonOnClick2(ActionEvent event) throws IOException  {
        Service serviceX = serviceList.get(page-2);
        String welcome = serviceX.getName() + " - " + serviceX.getProvince();
        Helper.switchScreenHelper.raiseBuyScreen(event,  Helper.screenName.buyServiceScreen, serviceX.getMaDichVu(), welcome);
    }
    public void buyButtonOnClick3(ActionEvent event) throws IOException  {
        Service serviceX = serviceList.get(page-1);
        String welcome = serviceX.getName() + " - " + serviceX.getProvince();
        Helper.switchScreenHelper.raiseBuyScreen(event,  Helper.screenName.buyServiceScreen, serviceX.getMaDichVu(), welcome);
    }

    public void searchButtonOnClick(ActionEvent event) throws IOException  {
        // search with name

        if (searchField.getText().trim().isEmpty()) {
            page = 0;
            serviceList = service.getAllService();
            loadCard(serviceList, page);
            page += 3;
            return;
        }
        String searchName = searchField.getText();
        searchField.setText("");
        String condition = "UPPER(TenDichVu) = '" + searchName.toUpperCase() + "' OR " + "MADICHVU = '" + searchName.toUpperCase() + "'";
        serviceList = service.sqlServiceQuery(condition);
        if (serviceList.isEmpty()) {
            Helper.alertHelper.showAlert("Sorry we can not find this service");
        } else {
            loadCard(serviceList, 0);
            page = 3;
        }


    }

    public void applyButtonOnClick(ActionEvent event) throws IOException  {
        // search with filter
        String price = priceFilter.getText();
        String area = areaFilter.getValue();

        String condition = "";
        priceFilter.setText("");


        price = price.isEmpty() ? "9999999999" : price;

        condition = "Gia < " + price +  " AND THELOAI = '" + area + "'";
        serviceList = service.sqlServiceQuery(condition);
        if (serviceList.isEmpty()) {
            Helper.alertHelper.showAlert("Sorry we can not find this service");
        } else {
            loadCard(serviceList, 0);
            page = 3;
        }


    }

    public void loadMoreButtonOnClick(ActionEvent event) throws IOException  {
        // search with filter
        loadCard(serviceList, page);
        page += 3;
    }

    public void backListButtonOnClick(ActionEvent event) throws IOException  {
        // search with filter
        page -= 3;
        loadCard(serviceList, page);

    }
}