package controller;

import java.io.IOException;

import dao.ActorDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/delete_actor"})
public class DeletaActor extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		try {
			int actorId = Integer.parseInt(id);
			ActorDAO actorDAO = new ActorDAO();
			actorDAO.delete(actorId);
			resp.sendRedirect("list-actor");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
