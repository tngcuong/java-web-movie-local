package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.DBconnect;
import dao.MovieDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Movie;


@WebServlet(urlPatterns = {"/list-movie"})
public class HomeAdminController extends HttpServlet{
	private MovieDAO movieDAO;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String permission = (String)session.getAttribute("permission");
		String userName = (String)session.getAttribute("userName");
		
		
		if(permission==null) {
			 permission = "1";
		}
		if(userName==null) {
			userName ="";	
		}
		
		movieDAO = new MovieDAO();
		List<Movie> movies = new ArrayList<Movie>();
		movies = movieDAO.getAll();
		req.setAttribute("movies", movies);
		req.getRequestDispatcher("/views/admin/HomeAdmin.jsp").forward(req, resp);
	}

}
