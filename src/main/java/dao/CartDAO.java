package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Actor;
import model.Cart;

public class CartDAO extends DBconnect{
public void insert(Cart cart) {
		
		String sql = "INSERT INTO cart(userid,movieid) VALUES(?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, cart.getUserId());
			pst.setInt(2, cart.getMovieId());

			
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

public List<Cart> getById(int id) {
	String sql = "SELECT movieid FROM cart WHERE userid=?";	
	List<Cart> carts = new ArrayList<Cart>();
	try {
		PreparedStatement pst= conn.prepareStatement(sql);
		pst.setInt(1, id);
		ResultSet rs = pst.executeQuery();
		if(rs.next()) {
			Cart cart = new Cart(rs.getInt(1), 
					rs.getInt(2));								
			carts.add(cart);
			return carts;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
}

public void delete(int userid,int movieid) {
	String sql = "DELETE FROM cart WHERE userid=? and movieid=?";
	try {
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setInt(1, userid);
		pst.setInt(2, movieid);
		pst.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	
}
