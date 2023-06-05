package controller;

import java.io.IOException;
import java.time.LocalDate;

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
@WebServlet(urlPatterns = {"/update-profile"})
public class UpdateProfileController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.getRequestDispatcher("/views/user/Profile.jsp").forward(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String familyName = req.getParameter("familyname");
	String name = req.getParameter("name");
	String born = req.getParameter("date");
	String phone = req.getParameter("phone");
	String email = req.getParameter("email");
	String accountuser = req.getParameter("accountuser");
	String password = req.getParameter("password");
	
	HttpSession session = req.getSession();
	String userName = (String)session.getAttribute("userName");
	
	

	try {
		
		
		User user = new User(familyName, name, born,phone,email,userName);
		UserDAO userDAO = new UserDAO();
		userDAO.updateProfile(user);
		
		
		
		
		resp.sendRedirect("Profile");
	} catch (Exception e) {
		// TODO: handle exception
	}
	}
}
