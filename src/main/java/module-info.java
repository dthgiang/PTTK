module sample.demo2 {
    requires javafx.controls;
    requires javafx.fxml;


    opens sample.demo2 to javafx.fxml;
    exports sample.demo2;

    requires java.sql;

}
