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
@WebServlet(urlPatterns = {"/add-movie"})
public class AddMovieController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		req.getRequestDispatcher("/views/admin/AddMovie.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String img = req.getParameter("img");
		String price = req.getParameter("price");
		String category = req.getParameter("category");
		String status = req.getParameter("status");
		String describe = req.getParameter("describe");
		Double priceUse = Double.parseDouble(price);
		MovieDAO movieDAO = new MovieDAO();
		try {
			
			
				Movie movie = new Movie( name, img,priceUse,category,describe,status);
				movieDAO.insert(movie);
				resp.sendRedirect("list-movie");
						
			
		} catch (Exception e) {
			// TODO: handle exception
		}	
	}
}

