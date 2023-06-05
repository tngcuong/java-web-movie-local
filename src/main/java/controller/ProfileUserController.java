package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
@WebServlet(urlPatterns = {"/Profile"})
public class ProfileUserController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		String email = (String)session.getAttribute("email");
		String userName = (String)session.getAttribute("userName");
		if(userName=="") {
			
			resp.sendRedirect("Home");
		}else {
		UserDAO	 userDAO = new UserDAO();
		User user = new User();
		user = userDAO.getByAcountUser(userName);
		
		session.setAttribute("nameuser", userName);
		req.setAttribute("user", user);
		req.getRequestDispatcher("/views/user/Profile.jsp").forward(req, resp);
	}
	}	
}

