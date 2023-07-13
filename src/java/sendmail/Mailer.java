/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sendmail;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author minhhieu
 */
public class Mailer {

    public static void send(String to) throws UnsupportedEncodingException {
        final String user = "hotfoodwebsite123@gmail.com";
        final String pass = "iydtvomroyhfdker";
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
//việc gửi thư đi bằng Java Mail API và cấu hình các thuộc tính 
//(properties) liên quan đến việc gửi thư qua SMTP (Simple Mail Transfer Protocol
//                ) thông qua máy chủ của Gmail.        
        Authenticator auth = new Authenticator() {
            @Override
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication(user, pass);
            }
// Authenticator là một lớp trừu tượng trong gói javax.mail, 
//            được sử dụng trong việc xác thực người dùng khi gửi 
//                      thư đi trong Java Mail API.

        };

        // lay email
        String encodedEmail = URLEncoder.encode(to, "UTF-8");
        String resetPassUrl = "http://localhost:8080/Final_Project_SWE391/changeEmailPass?email=" + encodedEmail;

        Session session = Session.getDefaultInstance(props, auth);

        MimeMessage message = new MimeMessage(session);
//        MimeMessage dùng de bieu dien mot thu gmail. Gom tieu de, nguoi nhan, ng nhan,..
        try {
            message.addHeader("Content-type", "text/HTML; charset=UTF-8");

            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject("Reset your password" + System.currentTimeMillis());
            String gmail = "<!DOCTYPE html>\n"
                    + "<html lang=\"en\">\n"
                    + "  <head>\n"
                    + "    <style>\n"
                    + "      .container {\n"
                    + "        width: 600px;\n"
                    + "        margin: auto;\n"
                    + "      }\n"
                    + "\n"
                    + "      h1 {\n"
                    + "        color: #1e1e27;\n"
                    + "        font-family: \"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;\n"
                    + "        font-size: 45px;\n"
                    + "\n"
                    + "        padding: 0 20px 0 20px;\n"
                    + "      }\n"
                    + "      .gmail h2 {\n"
                    + "        color: #1e1e27;\n"
                    + "        font-family: \"Franklin Gothic Medium\", \"Arial Narrow\", Arial, sans-serif;\n"
                    + "        text-align: center;\n"
                    + "        font-size: 25px;\n"
                    + "      }\n"
                    + "      span {\n"
                    + "        color: #fe4c51;\n"
                    + "      }\n"
                    + "\n"
                    + "      a {\n"
                    + "        color: #0066cc;\n"
                    + "        font-size: 15px;\n"
                    + "      }\n"
                    + "      p {\n"
                    + "        margin-bottom: 10px;\n"
                    + "        font-size: 20px;\n"
                    + "        font-family: Arial, Helvetica, sans-serif;\n"
                    + "      }\n"
                    + "      .content-gmail {\n"
                    + "        display: flex;\n"
                    + "        justify-content: center;\n"
                    + "        align-items: center;\n"
                    + "        padding: 0 20px 0 20px;\n"
                    + "      }\n"
                    + "      .footer-gmail {\n"
                    + "        background-color: #f7f7f7;\n"
                    + "        padding: 30px;\n"
                    + "        margin-top: 20px;\n"
                    + "        border-radius: 5px;\n"
                    + "        font-size: 14px;\n"
                    + "        color: #888888;\n"
                    + "      }\n"
                    + "      .footer-gmail h4 {\n"
                    + "        font-weight: normal;\n"
                    + "      }\n"
                    + "      .footer-gmail h2 {\n"
                    + "        font-family: \"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;\n"
                    + "      }\n"
                    + "      .contact-info {\n"
                    + "        display: flex;\n"
                    + "        \n"
                    + "        margin: auto;\n"
                    + "        margin-top: 20px;\n"
                    + "        margin-bottom: 20px;\n"
                    + "      }\n"
                    + "      .contact-info p {\n"
                    + "        font-size: 15px;\n"
                    + "        text-align: center;\n"
                    + "        margin-left: 15px;\n"
                    + "      }\n"
                    + "      \n"
                    + "    </style>\n"
                    + "  </head>\n"
                    + "  <body>\n"
                    + "    <div class=\"container\">\n"
                    + "      <div class=\"header-gmail\">\n"
                    + "        <h1>HOT<span>FOOD</span></h1>\n"
                    + "      </div>\n"
                    + "      <div class=\"content-gmail\">\n"
                    + "        <div class=\"gmail\">\n"
                    + "          <h2>Password Reset</h2>\n"
                    + "          <p>Dear User,</p>\n"
                    + "          <p>We have received a request to reset your password.</p>\n"
                    + "          <a href=\"" + resetPassUrl + "\">Reset Password</a>\n"
                    + "          <p>\n"
                    + "            If you didn't request password reset, feel free to delete this email\n"
                    + "            and continue to enjoy our food.\n"
                    + "          </p>\n"
                    + "          <p>Best regards,</p>\n"
                    + "          <p>Support Team</p>\n"
                    + "        </div>\n"
                    + "      </div>\n"
                    + "      <div class=\"footer-gmail\">\n"
                    + "        <h2>HOTFOOD</h2>\n"
                    + "        <h4>\n"
                    + "          This email was sent from the HOTFOOD system. Please do not reply to\n"
                    + "          this email.\n"
                    + "        </h4>\n"
                    + "        <hr />\n"
                    + "        <div class=\"contact-info\">\n"
                    + "          <p style=\"margin-left: 112px;\">Terms of Use</p>\n"
                    + "          <p>|</p>\n"
                    + "          <p>Privacy Policy</p>\n"
                    + "          <p>|</p>\n"
                    + "          <p>Contact Us</p>\n"
                    + "        </div>\n"
                    + "        <hr />\n"
                    + "        <h4>\n"
                    + "          FPT University (FPT university), FPT City Urban Area, Hoa Hai, Ngu\n"
                    + "          Hanh Son, Da Nang\n"
                    + "        </h4>\n"
                    + "      </div>\n"
                    + "    </div>\n"
                    + "  </body>\n"
                    + "</html>";
            message.setContent(gmail, "text/html; charset=UTF-8");
            message.addHeader("Content-type", "text/HTML; charset=UTF-8");

//            send mail
            Transport.send(message);

            System.out.print("Success");
        } catch (Exception e) {
            System.out.println("Error");
            throw new RuntimeException(e);
        }
    }
}
