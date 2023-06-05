package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.HomeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.Movie;



@WebServlet(urlPatterns = {"/Home"})
public class HomeController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Movie> movies = new ArrayList<Movie>();
		HomeDAO movieDAO = new HomeDAO();
		movies = movieDAO.getAll();
		
		HttpSession session  = req.getSession();

		String permission = (String)session.getAttribute("permission");
		String userName = (String)session.getAttribute("userName");
	
		
		if(permission==null) {
			 permission = "1";
		}
		if(userName==null) {
			userName ="";	
		}
		
		session.setAttribute("permission", permission);
		session.setAttribute("userName", userName);
		req.setAttribute("movies", movies);
		req.getRequestDispatcher("views/user/Home.jsp").forward(req, resp);
	}
		
}
