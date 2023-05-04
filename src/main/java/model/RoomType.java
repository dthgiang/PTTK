package model;

import databaseConnect.DataBaseConnector;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import java.sql.Connection;
import java.sql.*;


import java.sql.*;

public class RoomType {
    String id, name, des,price, rating;
    private Connection connection = DataBaseConnector.getConnection();//("jdbc:oracle:thin:@localhost:1521:XE", "DBA_PTTK", "123");

    public RoomType() {};
    public RoomType (String id, String name, String price, String rating, String des )
    {
        this.id=id;
        this.name=name;
        this.price=price;
        this.rating=rating;
        this.des=des;
    }
    public String getName() {
        return name;
    }
    public String getId() {
        return id;
    }
    public String getPrice() {
        return price;
    }
    public String getDes() {
        return des;
    }
    public String getRating() {
        return rating;
    }
    public ObservableList<RoomType> loadData() {
        ObservableList<RoomType> data = FXCollections.observableArrayList();

        try {
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


        } catch (SQLException e) {
            System.out.println("Connection to Oracle database failed");
            e.printStackTrace();
        }

        return data;
    }
}
