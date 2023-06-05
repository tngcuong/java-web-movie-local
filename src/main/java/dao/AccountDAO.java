package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Account;



public class AccountDAO extends DBconnect{
	public Account login(String accountUser, String password) {		
		String sql = "SELECT * FROM account WHERE accountuser=? AND password=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, accountUser);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				Account account = new Account(rs.getString(1), rs.getString(2), rs.getString(3));
				return account;
			}				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public Account getByUserName(String userName) {
		String sql = "SELECT * FROM account WHERE accountuser=?";		
		try {
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setString(1, userName);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				Account account = new Account(rs.getString(1), 
						rs.getString(2),
						rs.getString(3));				
			
				return account;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public void insert(Account account) {
		
		String sql = "INSERT INTO account VALUES(?,?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, account.getAccountUser());
			pst.setString(2, account.getPassword());
			pst.setString(3, account.getPermission());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Account> getAll() {
		List<Account> accounts = new ArrayList<Account>();

		String sql ="select * from account ";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Account account = new Account(rs.getString(1), 
						rs.getString(2),
						rs.getString(3));				
				accounts.add(account);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return accounts;
	}
	public void update(Account account) {
		String sql = "UPDATE account SET accountuser=? ,password=? ,permission=? where accountuser=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, account.getAccountUser());
			pst.setString(2, account.getPassword());
			pst.setString(3, account.getPermission());
			pst.setString(4, account.getAccountUser());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updateProfile(Account account) {
		String sql = "UPDATE account SET accountuser=?, password=? where accountuser=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, account.getAccountUser());
			pst.setString(2, account.getPassword());
			pst.setString(3, account.getPermission());
			pst.setString(4, account.getAccountUser());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void delete(String accountuser) {
		String sql = "DELETE FROM account WHERE accountuser=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, accountuser);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
