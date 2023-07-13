/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Date;

public class Deals {

    public Deals(int ID, int pID, String pName, String pImg, String CateID, float price, float priceDeal, Date StartDate, Date EndDate, int remaining) {
        this.ID = ID;
        this.pID = pID;
        this.pName = pName;
        this.pImg = pImg;
        this.CateID = CateID;
        this.price = price;
        this.priceDeal = priceDeal;
        this.StartDate = StartDate;
        this.EndDate = EndDate;
        this.remaining = remaining;
    }

    public Deals() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpImg() {
        return pImg;
    }

    public void setpImg(String pImg) {
        this.pImg = pImg;
    }

    public String getCateID() {
        return CateID;
    }

    public void setCateID(String CateID) {
        this.CateID = CateID;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getPriceDeal() {
        return priceDeal;
    }

    public void setPriceDeal(float priceDeal) {
        this.priceDeal = priceDeal;
    }

    public Date getStartDate() {
        return StartDate;
    }

    public void setStartDate(Date StartDate) {
        this.StartDate = StartDate;
    }

    public Date getEndDate() {
        return EndDate;
    }

    public void setEndDate(Date EndDate) {
        this.EndDate = EndDate;
    }

    public int getRemaining() {
        return remaining;
    }

    public void setRemaining(int remaining) {
        this.remaining = remaining;
    }

    private int ID;
    private int pID;
    private String pName;
    private String pImg;
    private String CateID;
    private float price;
    private float priceDeal;

    @Override
    public String toString() {
        return "Deals{" + "ID=" + ID + ", pID=" + pID + ", pName=" + pName + ", pImg=" + pImg + ", CateID=" + CateID + ", price=" + price + ", priceDeal=" + priceDeal + ", StartDate=" + StartDate + ", EndDate=" + EndDate + ", remaining=" + remaining + '}';
    }
    private Date StartDate;
    private Date EndDate;
    private int remaining;
}