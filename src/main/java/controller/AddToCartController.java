package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.CartDAO;
import dao.MovieDAO;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.Movie;

@WebServlet(urlPatterns = {"/add-to-cart"})
public class AddToCartController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		int movieId = Integer.parseInt(id);
		
//		MovieDAO movieDAO = new MovieDAO();
		CartDAO cartDAO = new CartDAO(); 
		UserDAO userDAO = new UserDAO();
		
		HttpSession session = req.getSession();
		
//		List<Cart> movies = (List<Cart>) session.getAttribute("cart");
		String userName = (String)session.getAttribute("userName");
		int userId = userDAO.getUserId(userName);
				
//        if (movies == null) {
//        	movies = new ArrayList<Cart>();
//            
//        }
		try {
			
			Cart cart = new Cart(userId,movieId);
			cartDAO.insert(cart);
//			 movies.add(cart);
//
//		        session.setAttribute("cart", movies);
		        
		        resp.sendRedirect("view-detail-movie?id="+id);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
