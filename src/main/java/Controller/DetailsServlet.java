package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dal.CategoryDao;
import Model.Product;

@WebServlet(urlPatterns = {"/details"})
public class DetailsServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id_raw = req.getParameter("id");
		int id;
		
		try {
			id = Integer.parseInt(id_raw);
			CategoryDao c = new CategoryDao();
			Product p = c.getProductById(id);
			req.setAttribute("products", p);
		} catch (Exception e) {
			// TODO: handle exception
		}
		req.getRequestDispatcher("shop-details.jsp").forward(req, resp);
	}
}
