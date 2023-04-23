package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dal.CategoryDao;
import Model.Product;

@WebServlet(urlPatterns = {"/products"})
public class ProductServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cid_raw = req.getParameter("cid");
		String key = req.getParameter("key");
		System.out.println(key + " " + cid_raw);
		
		
		int cid;
		try {
			cid = (cid_raw == null) ? 0 : Integer.parseInt(cid_raw);
			req.setAttribute("cid", cid);
			CategoryDao c = new CategoryDao();
//			List <Product> list = c.getProductsByCid(cid);
			List <Product> list = c.search(key, cid);
			req.setAttribute("products", list);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		req.getRequestDispatcher("shop").forward(req, resp);
	}
}
