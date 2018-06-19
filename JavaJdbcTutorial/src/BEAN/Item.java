/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BEAN;

public class Item {

    private MyPham product;
    private int quantity;

    public Item() {
    }

    public Item(MyPham product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public MyPham getProduct() {
        return product;
    }

    public void setProduct(MyPham product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
