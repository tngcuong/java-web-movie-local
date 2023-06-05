package controller;

import java.io.IOException;


import dao.MovieDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Movie;
@WebServlet(urlPatterns = {"/update_movie"})
public class UpdateMovieController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Id = req.getParameter("id");
		MovieDAO movieDAO = new MovieDAO();
		try {
			int movieId = Integer.parseInt(Id);
			Movie movie = new Movie();
			movie = movieDAO.getById(movieId);
			req.setAttribute("movie", movie);
			req.getRequestDispatcher("/views/admin/UpdateMovie.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String img = req.getParameter("img");
		String price = req.getParameter("price");
		String category = req.getParameter("category");
		String describe = req.getParameter("describe");
		String status = req.getParameter("status");
		
		try {
			int movieID = Integer.parseInt(id);
			Double priceMovie = Double.parseDouble(price);
			Movie movie = new Movie(movieID, name, img,priceMovie,category,describe,status);
			MovieDAO movieDAO = new MovieDAO();
			movieDAO.update(movie);
			resp.sendRedirect("list-movie");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}

