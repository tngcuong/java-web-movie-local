package model;

public class Actor {
	private int actorId;
	private String actorName;
	private int age;
	private int height;
	private String nationality;
	public Actor() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Actor(String actorName, int age, int height, String nationality) {
		super();
		this.actorName = actorName;
		this.age = age;
		this.height = height;
		this.nationality = nationality;
	}



	public Actor(int actorId, String actorName, int age, int height, String nationality) {
		super();
		this.actorId = actorId;
		this.actorName = actorName;
		this.age = age;
		this.height = height;
		this.nationality = nationality;
	}
	public int getActorId() {
		return actorId;
	}
	public void setActorId(int actorId) {
		this.actorId = actorId;
	}
	public String getActorName() {
		return actorName;
	}
	public void setActorName(String actorName) {
		this.actorName = actorName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	
}
