package model;

public class Order {
	private String movieId;
	private String userId;
	private double price;
	private String buyingDate;
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(String movieId, String userId, double price, String buyingDate) {
		super();
		this.movieId = movieId;
		this.userId = userId;
		this.price = price;
		this.buyingDate = buyingDate;
	}
	public String getMovieId() {
		return movieId;
	}
	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getBuyingDate() {
		return buyingDate;
	}
	public void setBuyingDate(String buyingDate) {
		this.buyingDate = buyingDate;
	}
	
	
}
