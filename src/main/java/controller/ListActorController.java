package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.ActorDAO;
import dao.MovieDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Actor;
import model.Movie;

@WebServlet(urlPatterns = {"/list-actor"})
public class ListActorController extends HttpServlet {
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
		
		ActorDAO actorDAO = new ActorDAO();
		List<Actor> actors = new ArrayList<Actor>();
		actors = actorDAO.getAll();
		req.setAttribute("actors", actors);
		req.getRequestDispatcher("/views/admin/ListActor.jsp").forward(req, resp);
	}
}
