/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CartDAO;
import dao.OrderDAO;
import entity.Account;
import entity.CartDetail;
import entity.Discount;
import entity.Order;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author linhp
 */
public class Checkout extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession(false);
        CartDAO cdao = new CartDAO();
        OrderDAO odr = new OrderDAO();
        Account user = null;
        String checkPay = (String) request.getAttribute("VNPAY");
        user = (Account) session.getAttribute("user");
        Discount discount = null;
        discount = (Discount) session.getAttribute("discount");
        String CartId = cdao.getCartId(user.getaId());
        float totalPrice;
        if(discount != null){
            totalPrice = (Float) session.getAttribute("totalMoney2");
            odr.addToBill(CartId, user.getaId(), discount.getCode(), totalPrice, 0);
        }else{
            totalPrice = (Float) session.getAttribute("totalMoney");
            odr.addToBill(CartId, user.getaId(), null, totalPrice, 0);
        }
        
//        String code = request.getParameter("code");
        ArrayList<CartDetail> listCart = cdao.getAllCartItems(CartId);
        for (CartDetail items : listCart) {
            odr.addToOrderDetail(CartId, items.getItems().getpId(), items.getQuantity(), items.getItems().getpPrice());
//            System.out.println(items.getpId());
//            System.out.println(items.getQuantity());
//            System.out.println(items.getItems().getpPrice());
        }
        cdao.deleteAllCart(CartId); //tu tu
        listCart = cdao.getAllCartItems(cdao.getCartId(user.getaId()));
        Order bill = odr.getBillbyOrderId(CartId);
//        System.out.println(bill);
        System.out.println(checkPay);
        
        request.setAttribute("bill", bill);
        session.removeAttribute("discount");
        session.setAttribute("listCart", listCart);
        request.getRequestDispatcher("orderSuccess.jsp").forward(request, response);
//        response.sendRedirect("home");
               
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
