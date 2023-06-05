package controller;

import java.io.IOException;

import dao.AccountDAO;
import dao.ActorDAO;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
@WebServlet(urlPatterns = {"/delete_account"})
public class DeleteAccountController extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String accountuser = req.getParameter("accountuser");
		
		HttpSession session  = req.getSession();

		String userName = (String)session.getAttribute("userName");
		try {
			AccountDAO accountDAO = new AccountDAO();
			UserDAO userDAO = new UserDAO();
			
			
			userDAO.delete(accountuser);
			accountDAO.delete(accountuser);
			if(userName.equals(accountuser)) {
				resp.sendRedirect("LogOut");
			}
			resp.sendRedirect("list-account");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
