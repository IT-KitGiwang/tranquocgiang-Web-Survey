package org.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/survey")
public class SurveyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy dữ liệu từ form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String heardFrom = request.getParameter("heardFrom");
        String wantsUpdates = request.getParameter("wantsUpdates");
        String emailOK = request.getParameter("emailOK");
        String contactVia = request.getParameter("contactVia");

        // Gửi sang JSP bằng attribute
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("email", email);
        request.setAttribute("dob", dob);
        request.setAttribute("heardFrom", heardFrom);
        request.setAttribute("wantsUpdates", wantsUpdates);
        request.setAttribute("emailOK", emailOK);
        request.setAttribute("contactVia", contactVia);

        // Chuyển hướng sang trang JSP
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
