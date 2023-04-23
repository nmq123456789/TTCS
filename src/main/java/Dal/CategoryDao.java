package Dal;

import java.sql.*;
import java.util.*;

import Model.Category;
import Model.Product;

public class CategoryDao extends JDBCConnect{
	public List <Category> getAll(){
		List <Category> list = new ArrayList<>();
		try {
			connection = JDBCConnect.getConnection();
			
			Statement statement = connection.createStatement();
			
			String sql = "SELECT * FROM categories";
			
			ResultSet rs = statement.executeQuery(sql);
			
			while(rs.next()) {
				Category c = new Category(rs.getInt("id"),
										  rs.getString("ten"));
				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public Category getCategoryById(int id){
		String sql = "SELECT * FROM categories where id = ?";
		try {
			connection = JDBCConnect.getConnection();
			
			PreparedStatement st = connection.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				Category c = new Category(rs.getInt("id"),
						  				  rs.getString("ten"));
 
				return c;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public Product getProductById(int id) {
		String sql = "SELECT * FROM san_pham where id = ?";
		try {
			connection = JDBCConnect.getConnection();
			
			PreparedStatement st = connection.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) { 
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setTen(rs.getString("ten"));
				p.setSoluong(rs.getInt("soluong"));
				p.setGia(rs.getDouble("gia"));
				p.setMieuta(rs.getString("mieuta"));
				p.setTheloai(rs.getString("theloai"));
				p.setMausac(rs.getString("mausac"));
				p.setKichthuoc(rs.getString("kichthuoc"));
				p.setAnh(rs.getString("anh"));
				p.setCid(rs.getInt("cid"));
				Category c = getCategoryById(rs.getInt("cid"));
				p.setCategory(c);
				
				return p;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
//	public List <Product> getProductsByCid(int cid){
//		List <Product> list = new ArrayList<>();
//		String sql = "SELECT * FROM san_pham where 1 = 1";
//		if(cid !=0) {
//			sql += " and cid=" + cid;
//		}
//		System.out.println(sql);
//		try {
//			connection = JDBCConnect.getConnection();
//			
//			PreparedStatement st = connection.prepareStatement(sql);
////			st.setInt(1, cid);
//			
//			ResultSet rs = st.executeQuery();
//			while(rs.next()) {  
//				Product p = new Product();
//				p.setId(rs.getInt("id"));
//				p.setTen(rs.getString("ten"));
//				p.setSoluong(rs.getInt("soluong"));
//				p.setGia(rs.getDouble("gia"));
//				p.setMieuta(rs.getString("mieuta"));
//				p.setTheloai(rs.getString("theloai"));
//				p.setMausac(rs.getString("mausac"));
//				p.setKichthuoc(rs.getString("kichthuoc"));
//				p.setAnh(rs.getString("anh"));
//				p.setCid(rs.getInt("cid"));
//				Category c = getCategoryById(rs.getInt("cid"));
//				p.setCategory(c);
//				
//				list.add(p);
//			}
//		} catch (SQLException e) {
//			System.out.println("alo");
//		}
//		return list;
//	}
	
	public List<Product> search(String key, int cid){
		List<Product> list = new ArrayList<>();
		String sql = "SELECT * FROM san_pham where 1 = 1";
		if(key != null) sql += " and ten like '%" + key+ "%'";
		if(cid != 0) {
			sql += " and cid=" + cid;
		}
		try {
			connection = JDBCConnect.getConnection();
			
			PreparedStatement st = connection.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery();
			while(rs.next()) {  
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setTen(rs.getString("ten"));
				p.setSoluong(rs.getInt("soluong"));
				p.setGia(rs.getDouble("gia"));
				p.setMieuta(rs.getString("mieuta"));
				p.setTheloai(rs.getString("theloai"));
				p.setMausac(rs.getString("mausac"));
				p.setKichthuoc(rs.getString("kichthuoc"));
				p.setAnh(rs.getString("anh"));
				p.setCid(rs.getInt("cid"));
				Category c = getCategoryById(rs.getInt("cid"));
				p.setCategory(c);
				
				list.add(p);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public List<Product> GetAll(){
		List <Product> list = new ArrayList<>();
		String sql = "SELECT * FROM san_pham";
		try {
			connection = JDBCConnect.getConnection();
			PreparedStatement st = connection.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next()) { 
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setTen(rs.getString("ten"));
				p.setSoluong(rs.getInt("soluong"));
				p.setGia(rs.getDouble("gia"));
				p.setMieuta(rs.getString("mieuta"));
				p.setTheloai(rs.getString("theloai"));
				p.setMausac(rs.getString("mausac"));
				p.setKichthuoc(rs.getString("kichthuoc"));
				p.setAnh(rs.getString("anh"));
				p.setCid(rs.getInt("cid"));
				Category c = getCategoryById(rs.getInt("cid"));
				p.setCategory(c);
				
				list.add(p);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static void main(String[] args) throws ClassNotFoundException {
		CategoryDao c = new CategoryDao();
        List<Category> list= c.getAll();
        System.out.println(list.get(0).getId());
	}
}
