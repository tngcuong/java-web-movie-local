package controller;

import java.io.IOException;

import dao.ActorDAO;
import dao.MovieDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Actor;
import model.Movie;
@WebServlet(urlPatterns = {"/add-actor"})
public class AddActorController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.getRequestDispatcher("/views/admin/AddActor.jsp").forward(req, resp);
}
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	String name = req.getParameter("name");
	String age = req.getParameter("age");
	String height = req.getParameter("height");
	String nationality = req.getParameter("nationality");
	int actorAge = Integer.parseInt(age);
	int actorHeight = Integer.parseInt(height);
	ActorDAO actorDAO = new ActorDAO();
	try {
		
		
			Actor actor = new Actor( name, actorAge,actorHeight,nationality);
			actorDAO.insert(actor);
			resp.sendRedirect("list-actor");		
	} catch (Exception e) {
		// TODO: handle exception
	}	
}
}
