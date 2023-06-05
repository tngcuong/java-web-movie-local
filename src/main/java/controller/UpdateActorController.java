package controller;

import java.io.IOException;

import dao.ActorDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Actor;

@WebServlet(urlPatterns = {"/update_actor"})
public class UpdateActorController extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Id = req.getParameter("id");
		ActorDAO actorDAO = new ActorDAO();
		try {
			int actorId = Integer.parseInt(Id);
			Actor actor = new Actor();
			actor = actorDAO.getById(actorId);
			req.setAttribute("actor", actor);
			req.getRequestDispatcher("/views/admin/UpdateActor.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		String height = req.getParameter("height");
		String nationality = req.getParameter("nationality");

		
		try {
			int actorId =Integer.parseInt(id);
			int actorAge = Integer.parseInt(age);
			int actorHeight = Integer.parseInt(height);
			
			Actor actor = new Actor(actorId, name, actorAge,actorHeight,nationality);
			ActorDAO actorDAO = new ActorDAO();
			actorDAO.update(actor);
			resp.sendRedirect("list-actor");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
