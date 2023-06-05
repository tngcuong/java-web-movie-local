package controller;

import java.io.IOException;

import dao.AccountDAO;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.User;
@WebServlet(urlPatterns = {"/Login"})
public class LoginController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.getRequestDispatcher("/views/user/Login.jsp").forward(req, resp);
}

@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   String user = req.getParameter("username");
	   String pass = req.getParameter("pass");
	   AccountDAO accountDAO = new AccountDAO();
	   
	   Account account = accountDAO.login(user, pass);

		if(account!= null) {
			HttpSession session  = req.getSession();
			
			session.setAttribute("userName", user);
			session.setAttribute("pass", pass);
			session.setAttribute("permission", account.getPermission());
			
			resp.sendRedirect("Home");
			
		}else {
			req.setAttribute("errorMsg", "Username or password is incorrect");
			req.getRequestDispatcher("/views/user/Login.jsp").forward(req, resp);
		}
	
	}
}
