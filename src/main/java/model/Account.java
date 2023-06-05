package model;

public class Account {
	private String accountUser;
	private String password;
	private String permission;
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Account(String accountUser, String password) {
		super();
		this.accountUser = accountUser;
		this.password = password;
	}



	public Account(String accountUser, String password, String permission) {
		super();
		this.accountUser = accountUser;
		this.password = password;
		this.permission = permission;
	}
	public String getAccountUser() {
		return accountUser;
	}
	public void setAccountUser(String accountUser) {
		this.accountUser = accountUser;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	
}
