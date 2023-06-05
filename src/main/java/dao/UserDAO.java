package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.User;

public class UserDAO extends DBconnect{
	public void createAccount(User user) {
		String sql = "INSERT INTO user(email,accountuser) VALUES(?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, user.getEmail());
			pst.setString(2, user.getAccountUser());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<User> getAll(){
		List<User> users = new ArrayList<User>();
		String sql = "select * from user";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				User user = new User(rs.getInt(1), 
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5), 
						rs.getString(6), 
						rs.getString(7));				
				users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}
	
	public User getByAcountUser( String accountUser) {
		String sql = "SELECT * FROM user WHERE accountuser=?";		
		try {
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setString(1, accountUser);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				User user = new User(rs.getInt(1), 
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5), 
						rs.getString(6), 
						rs.getString(7));				
					
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public int getUserId( String accountUser) {
		String sql = "SELECT userid FROM user WHERE accountuser=?";		
		try {
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setString(1, accountUser);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				User user = new User(rs.getInt(1));				
					
				return user.getUserId();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	public void delete(String accountuser) {
		String sql = "DELETE FROM user WHERE accountuser=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, accountuser);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updateProfile(User user) {
		String sql = "UPDATE user SET familyname=? ,name=? ,born=? ,phone=?, email=? WHERE accountuser=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, user.getFamilyName());
			pst.setString(2, user.getName());
			pst.setString(3, user.getBorn());
			pst.setString(4, user.getPhone());
			pst.setString(5, user.getEmail());
			pst.setString(6, user.getAccountUser());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
