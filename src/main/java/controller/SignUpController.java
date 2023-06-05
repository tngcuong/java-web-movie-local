package controller;

import java.io.IOException;

import dao.AccountDAO;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.User;
@WebServlet(urlPatterns = {"/SignUp"})
public class SignUpController extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/user/SignUp.jsp").forward(req, resp);
}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("username");
		String pass = req.getParameter("password");
		String email = req.getParameter("email");
		AccountDAO accountDAO = new AccountDAO();
		UserDAO userDAO = new UserDAO();
		try {
			
			Account accountCheck = accountDAO.getByUserName(userName);
			
			if(accountCheck == null  ) {
				
				Account account = new Account(userName, pass, "");
				accountDAO.insert(account);
				
				User user = new User(email,userName);
				userDAO.createAccount(user);
				
				
				HttpSession session = req.getSession();
				session.setAttribute("email", email);
				resp.sendRedirect("Login");
			}else {
				req.setAttribute("loi", "Username " +userName + " already exists ");
				req.getRequestDispatcher("/views/user/SignUp.jsp").forward(req, resp);
			}			
			
		} catch (Exception e) {
			// TODO: handle exception
		}	
	}
}
