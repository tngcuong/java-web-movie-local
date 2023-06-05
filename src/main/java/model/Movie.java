package model;

public class Movie {
	private int movieId;
	private String nameMovie;
	private String imgPath;
	private double price;
	private String category;
	private String describeMovie;
	private String status;

	public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public Movie(String nameMovie, String imgPath, double price, String category, String describeMovie, String status) {
		super();
		this.nameMovie = nameMovie;
		this.imgPath = imgPath;
		this.price = price;
		this.category = category;
		this.describeMovie = describeMovie;
		this.status = status;
	}


	public Movie(int movieId, String nameMovie, String imgPath, double price, String category, String describeMovie,
			String status) {
		super();
		this.movieId = movieId;
		this.nameMovie = nameMovie;
		this.imgPath = imgPath;
		this.price = price;
		this.category = category;
		this.describeMovie = describeMovie;
		this.status = status;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public String getNameMovie() {
		return nameMovie;
	}

	public void setNameMovie(String nameMovie) {
		this.nameMovie = nameMovie;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescribeMovie() {
		return describeMovie;
	}

	public void setDescribeMovie(String describeMovie) {
		this.describeMovie = describeMovie;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
