/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author linhp
 * 
 */
import java.text.NumberFormat;
import java.util.Currency;
import java.util.Locale;
public class test {
    
    public static void main(String[] args) {
        double amount = 12345.6789;

        // Định dạng số tiền VND
        Locale locale = new Locale("vi", "VN");
//        Currency currency = Currency.getInstance("VND");
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(locale);
//        currencyFormat.setCurrency(currency);
        String formattedAmount = currencyFormat.format(amount);

        System.out.println("Formatted amount: " + formattedAmount);
    }
}
    
