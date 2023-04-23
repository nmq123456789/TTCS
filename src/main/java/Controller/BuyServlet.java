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
import Model.Product;

@WebServlet(urlPatterns = {"/buy"})	
public class BuyServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDao d = new CategoryDao();
		List <Product> list = d.GetAll();
		Cookie[] arr = req.getCookies();
		String txt = "";
		if(arr != null) {
			for(Cookie o : arr) {
				if(o.getName().equals("cart")) {
					txt += o.getValue();
					o.setMaxAge(0);
					resp.addCookie(o);
				}
			}
		}
		String num = req.getParameter("num");
		String id  = req.getParameter("id");
		if(txt.isEmpty()) {
			txt = id+":"+num;
		}else {
			txt = txt+"/"+id+":"+num;
		}
		Cookie c = new Cookie("cart", txt);
		c.setMaxAge(2*24*60*60);
		resp.addCookie(c);
		resp.sendRedirect("products");
	}
}
