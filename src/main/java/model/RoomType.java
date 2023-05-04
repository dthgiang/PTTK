package model;

public class RoomType {
    String id, name, des,price, rating;

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
}
