package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Movie;

public class HomeDAO extends DBconnect{
	public List<Movie> getAll(){
		List<Movie> movies = new ArrayList<Movie>();
//		String sql = "select namemovie,price,category,describemovie,status,actorname, born, nationality "
//				+ "from movie m, actor a, img i"
//				+ "where m.actorid = a.actorid and m.imgid = i.imgid"
		String sql ="select * from detailmovie ";
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
	
	
	public Movie getByCategory(String category) {
		String sql = "SELECT * FROM movie WHERE category=?";		
		try {
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setString(1, category);
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
	

}


