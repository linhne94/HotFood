package LoginByGoogle;

import dao.AccountDAO;
import dao.CartDAO;
import entity.Account;
import entity.CartDetail;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class GoogleSignInServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String URL = null;
        try {
            if (request.getSession(false).getAttribute("user") == null) {
                String code = request.getParameter("code");
                String accessToken = GoogleSupport.getToken(code);
                GoogleDTO userToken = GoogleSupport.getUserInfo(accessToken);
                String username = userToken.getId();
                String email = userToken.getEmail();
                
                
                Account user = dao.AccountDAO.checkUserExist(username);
                Account usermail = dao.AccountDAO.checkEmailExist(email);
       
                if (user == null || usermail == null ){
//                    String email = userToken.getEmail();
                    String firstName = userToken.getGiven_name();
                    String lastName = userToken.getFamily_name();
//                    String picture = userToken.getPicture();

                    user = new Account(username, null, firstName + " " + lastName, null, null, email);

                    AccountDAO.register(user);
                    System.out.println("dky thanh cong");
                }
 
                HttpSession session = request.getSession(true);
                session.setAttribute("user", user);
                String CartId = CartDAO.getCartId(user.getaId());
                ArrayList<CartDetail> listItems = CartDAO.getAllCartItems(CartId);
                session.setAttribute("listCart", listItems);
                if(user.getaRole() == 1){
                    URL = "managerPage";
                }
                else if(user.getaRole() == 2){
                    URL = "product";
                }
                else{
                    URL = "home";
                }
                
                
//                session.setMaxInactiveInterval(15*60);
                System.out.println("dang nhap thanh cong");
               
            }
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(URL);
            rd.forward(request, response);
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
