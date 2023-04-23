package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dal.CategoryDao;
import Model.Cart;
import Model.Product;

@WebServlet(urlPatterns = {"/show"})
public class CartServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDao d = new CategoryDao();
		List <Product> list = d.GetAll();
		Cookie[] arr = req.getCookies();
		String txt = "";
		if(arr != null) {
			for(Cookie o : arr) {
				if(o.getName().equals("cart")) {
					txt += o.getValue();
				}
			}
		}
		Cart cart = new Cart(txt, list);
		req.setAttribute("cart", cart);
		req.getRequestDispatcher("shopping-cart.jsp").forward(req, resp);
	}
}
