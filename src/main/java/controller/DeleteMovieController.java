package controller;

import java.io.IOException;

import dao.MovieDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/delete_movie"})
public class DeleteMovieController extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		try {
			int movieId = Integer.parseInt(id);
			MovieDAO movieDAO = new MovieDAO();
			movieDAO.delete(movieId);
			resp.sendRedirect("list-movie");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
