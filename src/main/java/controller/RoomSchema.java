package controller;

public class RoomSchema {
    private String roomId, roomStatus, roomType;
    private Double roomPrice;
    private Integer bedQuantity;

    public RoomSchema(String roomId, String roomStatus, String roomType, Double roomPrice, Integer bedQuantity) {
        this.roomId = roomId;
        this.roomStatus = roomStatus;
        this.roomType = roomType;
        this.roomPrice = roomPrice;
        this.bedQuantity = bedQuantity;
    }

    public RoomSchema(String roomType) {
        this.roomType = roomType;
    }


    public String getRoomId() {
        return roomId;
    }

    public String getRoomStatus() {
        return roomStatus;
    }

    public String getRoomType() {
        return roomType;
    }

    public Double getRoomPrice() {
        return roomPrice;
    }

    public Integer getBedQuantity() {
        return bedQuantity;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public void setRoomStatus(String roomStatus) {
        this.roomStatus = roomStatus;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public void setRoomPrice(Double roomPrice) {
        this.roomPrice = roomPrice;
    }

    public void setBedQuantity(Integer bedQuantity) {
        this.bedQuantity = bedQuantity;
    }
}
