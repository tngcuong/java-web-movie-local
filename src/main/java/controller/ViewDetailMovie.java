package controller;

import java.io.IOException;

import dao.MovieDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Movie;
@WebServlet(urlPatterns = {"/view-detail-movie"})
public class ViewDetailMovie extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Id = req.getParameter("id");
		MovieDAO movieDAO = new MovieDAO();
		
		HttpSession session = req.getSession();
		String userName = (String)session.getAttribute("userName");
		try {
			int movieId = Integer.parseInt(Id);
			Movie movie = new Movie();
			movie = movieDAO.getById(movieId);
			
			req.setAttribute("movieDetail", movie);
			
			req.getRequestDispatcher("/views/user/DetailMovie.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
