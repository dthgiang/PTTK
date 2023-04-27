module sample.demo2 {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.graphics;
    //requires org.controlsfx.controls;
    //requires org.kordamp.bootstrapfx.core;
    requires de.jensd.fx.glyphs.fontawesome;
    requires java.sql;

    opens controller;//to javafx.fxml;
    exports controller;

}
