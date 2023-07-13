/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author DELL
 */
public class ComboProduct {
    private String comboID;
    private String pID;
    private Product prd;

    public ComboProduct(String comboID, String pID, Product prd) {
        this.comboID = comboID;
        this.pID = pID;
        this.prd = prd;
    }

    public String getComboID() {
        return comboID;
    }

    public void setComboID(String comboID) {
        this.comboID = comboID;
    }

    public String getpID() {
        return pID;
    }

    public void setpID(String pID) {
        this.pID = pID;
    }

    public Product getprd() {
        return prd;
    }

    public void setprd(Product prd) {
        this.prd = prd;
    }

    @Override
    public String toString() {
        return "ComboProduct{" + "comboID=" + comboID + ", pID=" + pID + ", prd=" + prd + '}';
    }
    
}