package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.User;
@WebServlet(urlPatterns = {"/list-user"})
public class ListUserController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	UserDAO userDAO = new UserDAO();
	List<User> users = new ArrayList<User>();
	users = userDAO.getAll();
	req.setAttribute("users", users);
	req.getRequestDispatcher("/views/admin/ListUser.jsp").forward(req, resp);
}
}
