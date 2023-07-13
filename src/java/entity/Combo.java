/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class Combo {

    private String comboID;
    private String comboName;
    private String comboDetail;
    private float comboPrice;
    private String img;
    private ArrayList <ComboProduct> item;

    public Combo(String comboID, String comboName, String comboDetail, float comboPrice, String img, ArrayList<ComboProduct> item) {
        this.comboID = comboID;
        this.comboName = comboName;
        this.comboDetail = comboDetail;
        this.comboPrice = comboPrice;
        this.img = img;
        this.item = item;
    }

    public String getComboID() {
        return comboID;
    }

    public void setComboID(String comboID) {
        this.comboID = comboID;
    }

    public String getComboName() {
        return comboName;
    }

    public void setComboName(String comboName) {
        this.comboName = comboName;
    }

    public String getComboDetail() {
        return comboDetail;
    }

    public void setComboDetail(String comboDetail) {
        this.comboDetail = comboDetail;
    }

    public float getComboPrice() {
        return comboPrice;
    }

    public void setComboPrice(float comboPrice) {
        this.comboPrice = comboPrice;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public ArrayList<ComboProduct> getItem() {
        return item;
    }

    public void setItem(ArrayList<ComboProduct> item) {
        this.item = item;
    }

    @Override
    public String toString() {
        return "Combo{" + "comboID=" + comboID + ", comboName=" + comboName + ", comboDetail=" + comboDetail + ", comboPrice=" + comboPrice + ", img=" + img + ", item=" + item + '}';
    }
  
}