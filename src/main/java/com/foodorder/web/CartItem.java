package com.foodorder.web;

public class CartItem {
    private String itemId;
    private String itemName;
    private int quantity;
    private double total;

    public CartItem(String itemId, String itemName, int quantity, double total) {
        this.itemId = itemId;
        this.itemName = itemName;
        this.quantity = quantity;
        this.total = total;
    }

    public String getItemId() { return itemId; }
    public void setItemId(String itemId) { this.itemId = itemId; }
    public String getItemName() { return itemName; }
    public void setItemName(String itemName) { this.itemName = itemName; }
    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
    public double getTotal() { return total; }
    public void setTotal(double total) { this.total = total; }
} 