package servlets;

import db.DBManager;
import db.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/auth")
public class AuthServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String redirect = "/login?emailerror";

        Users users = DBManager.getUser(email);

        if (users!=null){
            redirect = "/login?passworderror";
            if (users.getPassword().equals(password)){
                request.getSession().setAttribute("CURRENT_USER", users);
                redirect = "/authin.jsp";
            }
        }

        response.sendRedirect(redirect);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
