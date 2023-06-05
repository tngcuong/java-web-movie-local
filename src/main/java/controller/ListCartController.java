package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.ActorDAO;
import dao.CartDAO;
import dao.MovieDAO;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Actor;
import model.Cart;
import model.Movie;
@WebServlet(urlPatterns = {"/list-cart"})
public class ListCartController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	UserDAO userDAO = new UserDAO();
	MovieDAO movieDAO = new MovieDAO();
	CartDAO cartDAO = new CartDAO();
	
	List<Cart> movieid = new ArrayList<Cart>();
	List<Movie> listMovie = new ArrayList<Movie>();
	
	HttpSession session = req.getSession();
	String userName = (String)session.getAttribute("userName");
	int userId = userDAO.getUserId(userName);
	
	System.out.println("1");
	movieid.addAll(cartDAO.getById(userId));
	
	if(movieid.isEmpty()) {
		resp.sendRedirect("/list-cart");
	}else {
		for (Cart cart : movieid) {
			int id = cart.getMovieId();	
			Movie movie =movieDAO.getById(id);
			listMovie.add(movie);
			
		}
	}
	req.setAttribute("listMovie", listMovie);
	req.getRequestDispatcher("/views/user/Cart.jsp").forward(req, resp);
}
}
