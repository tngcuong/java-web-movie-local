package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.AccountDAO;
import dao.ActorDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.Actor;
@WebServlet(urlPatterns = {"/list-account"})
public class ListAccountController extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		AccountDAO accountDAO = new AccountDAO();
		List<Account> accounts = new ArrayList<Account>();
		accounts = accountDAO.getAll();
		req.setAttribute("accounts", accounts);
		req.getRequestDispatcher("/views/admin/ListAccount.jsp").forward(req, resp);
	}
}
