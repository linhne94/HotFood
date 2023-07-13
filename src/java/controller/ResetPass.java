/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AccountDAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author minhhieu
 */
public class ResetPass extends HttpServlet {

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

        try {
            String oldpass = request.getParameter("oldpass");
            String newpass = request.getParameter("newpass");
            String repass = request.getParameter("renewpass");
            HttpSession session = request.getSession(false);
            Account user = null;

            if (session != null) {
                user = (Account) session.getAttribute("user");
                System.out.println(user);
            } else {
                response.sendRedirect("login");
            }
            if (oldpass.equals(user.getaPassword().trim())) {
                // Kiểm tra xem newpass và repass có khớp nhau hay không
                if (newpass.equals(repass)) {
                    // Cập nhật mật khẩu mới cho người dùng
                    user.setaPassword(newpass);
                    AccountDAO.resetPassword(user);
                    response.sendRedirect("profile.jsp");
                } else {
                    System.out.println("error3");
                    request.setAttribute("mess", "new password does not match repeat password");
                    request.getRequestDispatcher("profile.jsp").forward(request, response);
                }
            } else {
                System.out.println("error2");
                request.setAttribute("mess", "Old password does not right");
                request.getRequestDispatcher("profile.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println("error");
        }

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
