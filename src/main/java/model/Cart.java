package model;

public class Cart {
	int userId;
	int movieId;
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cart(int userId, int movieId) {
		super();
		this.userId = userId;
		this.movieId = movieId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	
}
