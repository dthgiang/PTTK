package controller;
import databaseConnect.DataBaseConnector;
import helper.Helper;
import helper.SwitchScreenHelper;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.image.ImageView;
//for table
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;


import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import model.Login;
import model.Tour;

public  class TourController implements Initializable {

    @FXML
    private ComboBox<String> areaFilter;

        @FXML
        private Button buyButton, backListButton, loadMoreButton;

        @FXML
        private Button detailButton;

        @FXML
        private AnchorPane filterCard;

        @FXML
        private ImageView homeIcon;

        @FXML
        private AnchorPane inforCard1, inforCard2, inforCard3;

        @FXML
        private TextField lengthFilter;

        @FXML
        private AnchorPane lengthFilterPane;

        @FXML
        private Label price2Label;

        @FXML
        private TextField priceFilter;

        @FXML
        private AnchorPane priceFilterPane;

        @FXML
        private ImageView returnIcon;

        @FXML
        private Button searchButton;

    @FXML
    private Label shortDesInforLabel1, shortDesInforLabel2, shortDesInforLabel3;

    @FXML
    private Label timeInforLabel1, timeInforLabel2, timeInforLabel3;

    @FXML
    private ImageView tourImage1, tourImage2, tourImage3;

    @FXML
    private Label tourNameInforLabel1, tourNameInforLabel2, tourNameInforLabel3;
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
    private Tour tour = new Tour();

    private int page = 0;
    private ArrayList<Tour> tourList;

    public void setInforCard1(Tour tour) {
        tourNameInforLabel1.setText(tour.getName());
        timeInforLabel1.setText(Integer.toString(tour.getTime()) + " Days");
        shortDesInforLabel1.setText(tour.getDes());
        priceInfroLabel1.setText(Helper.convertTypeHelper.formatNumber(tour.getCost()));
        Helper.initHelper.initImage(tourImage1, "img/tour/" + tour.getImage());

    }
    public void setInforCard2(Tour tour) {
        tourNameInforLabel2.setText(tour.getName());
        timeInforLabel2.setText(Integer.toString(tour.getTime()) + " Days");
        shortDesInforLabel2.setText(tour.getDes());
        priceInfroLabel2.setText(Helper.convertTypeHelper.formatNumber(tour.getCost()));
        Helper.initHelper.initImage(tourImage2, "img/tour/" + tour.getImage());

    }
    public void setInforCard3(Tour tour) {
        tourNameInforLabel3.setText(tour.getName());
        timeInforLabel3.setText(Integer.toString(tour.getTime()) + " Days");
        shortDesInforLabel3.setText(tour.getDes());
        priceInfroLabel3.setText(Helper.convertTypeHelper.formatNumber(tour.getCost()));
        Helper.initHelper.initImage(tourImage3, "img/tour/" + tour.getImage());

    }
    public void loadCard(ArrayList<Tour> tourList, int page) {
        int n = tourList.size();
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
            setInforCard1(tourList.get(i));
            if (i + 1 >= n ) {
                inforCard2.setVisible(false);
                inforCard3.setVisible(false);
            } else {
                setInforCard2(tourList.get(i+1));
                inforCard2.setVisible(true);
                if (i + 2 >= n) {
                    inforCard3.setVisible(false);
                }else {
                    setInforCard3(tourList.get(i+2));
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
        Tour temp = new Tour();
        areaFilter.setItems(FXCollections.observableArrayList(temp.getAllArea()));
        areaFilter.setValue("Miền Cực Lạc");
        userLabel.setText("Hello " + Login.getUsername());
        tourList = tour.getAllTour();
        loadCard(tourList, page);
        page += 3;


    }

    public void returnIconOnClick(MouseEvent event) throws IOException {
        Helper.switchScreenHelper.raiseOther(event, "/controller/Home.fxml");
    }

    public void homeIconOnClick(MouseEvent event) throws IOException  {
        Helper.switchScreenHelper.raiseOther(event, "/controller/Home.fxml");
    }

    public void detailButtonOnClick1(ActionEvent event) throws IOException  {
        String maTour = tourList.get(page-3).getMaTour();
        Helper.switchScreenHelper.raiseDetail(event, Helper.screenName.tourDetailScreen, maTour);
    }
    public void detailButtonOnClick2(ActionEvent event) throws IOException  {
        String maTour = tourList.get(page-2).getMaTour();
        Helper.switchScreenHelper.raiseDetail(event, Helper.screenName.tourDetailScreen, maTour);
    }
    public void detailButtonOnClick3(ActionEvent event) throws IOException  {
        String maTour = tourList.get(page-1).getMaTour();
        Helper.switchScreenHelper.raiseDetail(event, Helper.screenName.tourDetailScreen, maTour);
    }

    public void buyButtonOnClick1(ActionEvent event) throws IOException  {
        Tour tourX = tourList.get(page-3);
        String welcome = tourX.getName() + " - " + tourX.getProvince();
        Helper.switchScreenHelper.raiseBuyScreen(event, Helper.screenName.buyTourScreen,tourX.getMaTour(), welcome);
    }
    public void buyButtonOnClick2(ActionEvent event) throws IOException  {
        Tour tourX = tourList.get(page-2);
        String welcome = tourX.getName() + " - " + tourX.getProvince();
        Helper.switchScreenHelper.raiseBuyScreen(event,  Helper.screenName.buyTourScreen, tourX.getMaTour(), welcome);
    }
    public void buyButtonOnClick3(ActionEvent event) throws IOException  {
        Tour tourX = tourList.get(page-1);
        String welcome = tourX.getName() + " - " + tourX.getProvince();
        Helper.switchScreenHelper.raiseBuyScreen(event,  Helper.screenName.buyTourScreen, tourX.getMaTour(), welcome);
    }

    public void searchButtonOnClick(ActionEvent event) throws IOException  {
        // search with name

        if (searchField.getText().trim().isEmpty()) {
            page = 0;
            tourList = tour.getAllTour();
            loadCard(tourList, page);
            page += 3;
            return;
        }
        String searchName = searchField.getText();
        searchField.setText("");
        tourList = tour.fullTextSearch(searchName);
        if (tourList.isEmpty()) {
            Helper.alertHelper.showAlert("Sorry we can not find this tour");
        } else {
            loadCard(tourList, 0);
            page = 3;
        }


    }

    public void applyButtonOnClick(ActionEvent event) throws IOException  {
        // search with filter
        String price = priceFilter.getText().isBlank() ? "99999999999" : priceFilter.getText();
        String area = areaFilter.getValue();
        String length = lengthFilter.getText().isBlank() ? "9999" : lengthFilter.getText();

        String condition = "";
        priceFilter.setText("");
        lengthFilter.setText("");


        condition = "Gia < " + price + " AND ThoiGian < " + length + " AND KhuVuc = '" + area + "'";
        tourList = tour.sqlTourQuery(condition);
        if (tourList.isEmpty()) {
            Helper.alertHelper.showAlert("Sorry we can not find this tour");
        } else {
            loadCard(tourList, 0);
            page = 3;
        }


    }

    public void loadMoreButtonOnClick(ActionEvent event) throws IOException  {
        // search with filter
        loadCard(tourList, page);
        page += 3;
    }

    public void backListButtonOnClick(ActionEvent event) throws IOException  {
        // search with filter
        page -= 3;
        loadCard(tourList, page);

    }

    public void mousePressOnClick(MouseEvent event) {
        searchField.setText("");
    }

    public void searchInputOnAction(ActionEvent event) throws IOException{
        searchButtonOnClick(event);
    }
}