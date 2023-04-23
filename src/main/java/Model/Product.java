package Model;

public class Product {
	private int id;
	private String ten;
	private int soluong;
	private double gia;
	private String mieuta;
	private String theloai;
	private String mausac;
	private String kichthuoc;
	private String anh;
	private int cid;
	private Category category;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(int id, String ten, int soluong, double gia, String mieuta, String theloai, String mausac,
			String kichthuoc, String anh, int cid, Category category) {
		this.id = id;
		this.ten = ten;
		this.soluong = soluong;
		this.gia = gia;
		this.mieuta = mieuta;
		this.theloai = theloai;
		this.mausac = mausac;
		this.kichthuoc = kichthuoc;
		this.anh = anh;
		this.cid = cid;
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public double getGia() {
		return gia;
	}

	public void setGia(double gia) {
		this.gia = gia;
	}

	public String getMieuta() {
		return mieuta;
	}

	public void setMieuta(String mieuta) {
		this.mieuta = mieuta;
	}

	public String getTheloai() {
		return theloai;
	}

	public void setTheloai(String theloai) {
		this.theloai = theloai;
	}

	public String getMausac() {
		return mausac;
	}

	public void setMausac(String mausac) {
		this.mausac = mausac;
	}

	public String getKichthuoc() {
		return kichthuoc;
	}

	public void setKichthuoc(String kichthuoc) {
		this.kichthuoc = kichthuoc;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
