package model;

public class User {
	private int userId;
	private String familyName;
	private String name;
	private String born;
	private String phone;
	private String email;
	private String accountUser;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public User(int userId) {
		super();
		this.userId = userId;
	}


	public User(String familyName, String name, String born, String phone, String email) {
		super();
		this.familyName = familyName;
		this.name = name;
		this.born = born;
		this.phone = phone;
		this.email = email;
	}


	public User(String email, String accountUser) {
		super();
		this.email = email;
		this.accountUser = accountUser;
	}


	public User(String familyName, String name, String born, String phone, String email, String accountUser) {
		super();
		this.familyName = familyName;
		this.name = name;
		this.born = born;
		this.phone = phone;
		this.email = email;
		this.accountUser = accountUser;
	}


	public User(int userId, String familyName, String name, String born, String phone, String email,
			String accountUser) {
		super();
		this.userId = userId;
		this.familyName = familyName;
		this.name = name;
		this.born = born;
		this.phone = phone;
		this.email = email;
		this.accountUser = accountUser;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFamilyName() {
		return familyName;
	}
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBorn() {
		return born;
	}
	public void setBorn(String born) {
		this.born = born;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAccountUser() {
		return accountUser;
	}
	public void setAccountUser(String accountUser) {
		this.accountUser = accountUser;
	}
	
}
