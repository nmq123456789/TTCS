package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dal.CategoryDao;
import Model.Category;

@WebServlet(urlPatterns = {"/shop"})
public class ListSevlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDao c = new CategoryDao();
	    List<Category> list= c.getAll();
	    req.setAttribute("data", list);
	    req.getRequestDispatcher("shop.jsp").forward(req, resp);
	}
}
