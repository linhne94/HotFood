/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Date;

/**
 *
 * @author taing
 */
public class Discount {
    private String code;
    private float discount;
    private Date startDate;
    private Date endDate;
    private int remaining;

    public Discount(String code, float discount, Date startDate, Date endDate, int remaining) {
        this.code = code;
        this.discount = discount;
        this.startDate = startDate;
        this.endDate = endDate;
        this.remaining = remaining;
    }

    public Discount(String code, float discount, Date startDate, Date endDate) {
        this.code = code;
        this.discount = discount;
        this.startDate = startDate;
        this.endDate = endDate;
    }
    
    public Discount() {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public int getRemaining() {
        return remaining;
    }

    public void setRemaining(int remaining) {
        this.remaining = remaining;
    }

    @Override
    public String toString() {
        return "Discount{" + "code=" + code + ", discount=" + discount + ", startDate=" + startDate + ", endDate=" + endDate + ", remaining=" + remaining + '}';
    }
}
