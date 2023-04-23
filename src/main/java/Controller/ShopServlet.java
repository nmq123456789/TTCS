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
import Model.Item;
import Model.Product;

@WebServlet(urlPatterns = { "/shopp" })
public class ShopServlet extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CategoryDao d = new CategoryDao();
		List<Product> list = d.GetAll();
		Cookie[] arr = request.getCookies();
		String txt = "";
		if (arr != null) {
			for (Cookie o : arr) {
				if (o.getName().equals("cart")) {
					txt += o.getValue();
				}
			}
		}
		Cart cart = new Cart(txt, list);
		List<Item> listItem = cart.getItems();
		int n;
		if (listItem != null) {
			n = listItem.size();
		} else {
			n = 0;
		}
		request.setAttribute("size", n);
		request.setAttribute("dataa", list);
		request.getRequestDispatcher("shop.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
}
