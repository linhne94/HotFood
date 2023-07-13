/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author minhhieu
 */
public class Product {
    private int pId;
    private String pName;
    private String pImg;
    private float pPrice;
    private String pDetail;
    private String CateID;

    public Product() {
    }

    public Product(int pId, String pName, String pImg, float pPrice, String pDetail, String CateID) {
        this.pId = pId;
        this.pName = pName;
        this.pImg = pImg;
        this.pPrice = pPrice;
        this.pDetail = pDetail;
        this.CateID = CateID;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
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

    public float getpPrice() {
        return pPrice;
    }

    public void setpPrice(float pPrice) {
        this.pPrice = pPrice;
    }

    public String getpDetail() {
        return pDetail;
    }

    public void setpDetail(String pDetail) {
        this.pDetail = pDetail;
    }

    public String getCateID() {
        return CateID;
    }

    public void setCateID(String CateID) {
        this.CateID = CateID;
    }

    @Override
    public String toString() {
        return "Product{" + "pId=" + pId + ", pName=" + pName + ", pImg=" + pImg + ", pPrice=" + pPrice + ", pDetail=" + pDetail + ", CateID=" + CateID + '}';
    }
}
