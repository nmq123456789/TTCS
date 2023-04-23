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

@WebServlet(urlPatterns = { "/process" })
public class ProcessServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDao d = new CategoryDao();
		List<Product> list = d.GetAll();
		Cookie[] arr = req.getCookies();
		String txt = "";
		if (arr != null) {
			for (Cookie o : arr) {
				if (o.getName().equals("cart")) {
					txt += o.getValue();
					o.setMaxAge(0);
					resp.addCookie(o);
				}
			}
		}
		Cart cart = new Cart(txt, list);
		String num_raw = req.getParameter("num");
		String id_raw = req.getParameter("id");
		int id, num = 0;
		try {
			id = Integer.parseInt(id_raw);
			Product p = d.getProductById(id);
			int numStore = p.getSoluong();
			num = Integer.parseInt(num_raw);
			System.out.println(num);
			if (num == -1 && (cart.getQuantityById(id) <= 1)) {
				cart.removeItem(id);
			} else {
				if ((num == 1) && cart.getQuantityById(id) >= numStore) {
					num = 0;
				}
				double price = p.getGia() * 2;
				Item t = new Item(p, num, price);
				cart.addItems(t);
			}
		} catch (NumberFormatException e) {

		}
		List<Item> items = cart.getItems();
		txt = "";
		if (items.size() > 0) {
			txt = items.get(0).getProduct().getId() + ":" + items.get(0).getQuantity();
			for (int i = 1; i < items.size(); i++) {
				txt += "/" + items.get(i).getProduct().getId() + ":" + items.get(i).getQuantity();
			}
		}
		Cookie c = new Cookie("cart", txt);
		c.setMaxAge(2 * 24 * 60 * 60);
		resp.addCookie(c);
		req.setAttribute("cart", cart);
		req.getRequestDispatcher("shopping-cart.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryDao d=new CategoryDao();
        List<Product> list=d.GetAll();
        Cookie[] arr=req.getCookies();
        String txt="";
        if(arr!=null){
            for(Cookie o:arr){
                if(o.getName().equals("cart")){
                    txt+=o.getValue();
                    o.setMaxAge(0);
                    resp.addCookie(o);
                }
            }
        }
        String id=req.getParameter("id");
        System.out.println(id);
        String[] ids=txt.split("/");
        String out="";
        for (int i = 0; i < ids.length; i++) {
            String[] s=ids[i].split(":");
            if(!s[0].equals(id)){
                if(out.isEmpty()){
                    out=ids[i];
                }else{
                    out+="/"+ids[i];
                }
            }
        }
        if(!out.isEmpty()){
            Cookie c=new Cookie("cart", out);
            c.setMaxAge(2*24*60*60);
            resp.addCookie(c);
        }
        Cart cart=new Cart(out, list);
        req.setAttribute("cart", cart);
        req.getRequestDispatcher("shopping-cart.jsp").forward(req, resp);
	}
}
