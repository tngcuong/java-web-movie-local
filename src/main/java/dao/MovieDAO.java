package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Movie;


public class MovieDAO extends DBconnect{
	
	public List<Movie> getAll(){
		List<Movie> movies = new ArrayList<Movie>();
		String sql = "select * from detailmovie";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Movie movie = new Movie(rs.getInt(1), 
						rs.getString(2),
						rs.getString(3),
						rs.getDouble(4),
						rs.getString(5), 
						rs.getString(6), 
						rs.getString(7));				
				movies.add(movie);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movies;
	}
	public Movie getById(int id) {
		String sql = "SELECT * FROM detailmovie WHERE movieid=?";		
		try {
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				Movie movie = new Movie(rs.getInt(1), 
						rs.getString(2),
						rs.getString(3),
						rs.getDouble(4),
						rs.getString(5), 
						rs.getString(6), 
						rs.getString(7));				
					
				return movie;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
public void insert(Movie movie) {
		
		String sql = "INSERT INTO detailmovie(namemovie,imgPath,price,category,describemovie,status) VALUES(?,?,?,?,?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, movie.getNameMovie());
			pst.setString(2, movie.getImgPath());
			pst.setDouble(3, movie.getPrice());
			pst.setString(4, movie.getCategory());
			pst.setString(5, movie.getDescribeMovie());
			pst.setString(6, movie.getStatus());
			
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

public void update(Movie movie) {
	String sql = "UPDATE detailmovie SET namemovie=? ,imgPath=? ,price=? ,category=?, describemovie=?,status=? WHERE movieid=?";
	try {
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setString(1, movie.getNameMovie());
		pst.setString(2, movie.getImgPath());
		pst.setDouble(3, movie.getPrice());
		pst.setString(4, movie.getCategory());
		pst.setString(5, movie.getDescribeMovie());
		pst.setString(6, movie.getStatus());
		pst.setInt(7, movie.getMovieId());
		pst.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

public void delete(int id) {
	String sql = "DELETE FROM detailmovie WHERE movieid=?";
	try {
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setInt(1, id);
		pst.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	
//	public List<Cart> getCartProducts(ArrayList<Cart> cartList){
//		List<Cart> list = new ArrayList<Cart>();
//		if(cartList.size()>0) {
//			for (Cart cart : cartList) {
//				String sql = "select * from product where productId=?";
//				try {
//					PreparedStatement ps = conn.prepareStatement(sql);
//					ps.setInt(1, cart.getProductId());
//					ResultSet rs = ps.executeQuery();
//					while(rs.next()) {
//						Category category = categoryDAO.getById(rs.getInt("categoryId"));
//						Cart c = new Cart();
//						c.setProductId(rs.getInt("productId"));
//						c.setProductName(rs.getString("productName"));
//						c.setCategory(category);
//						c.setImagePath(rs.getString("imagePath"));
//						c.setPrice(rs.getInt("price"));
//						list.add(c);
//					}
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}				
//			}
//		}
//		return list;
//	}
}
