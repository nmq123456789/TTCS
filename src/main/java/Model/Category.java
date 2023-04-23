package Model;

public class Category {
	private int id;
	private String ten;
	
	public Category() {
		// TODO Auto-generated constructor stub
	}
		
	public Category(int id, String ten) {
		this.id = id;
		this.ten = ten;
	}

	public int getId() {
		return id;
	}
	public String getTen() {
		return ten;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setTen(String ten) {
		this.ten = ten;
	}
}
